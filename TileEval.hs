-- Author: Julian Rathke, 2018
-- Provides a CEK implementation of the \Toy language from the lecture notes
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Use join" #-}
{-# HLINT ignore "Use map once" #-}
{-# HLINT ignore "Eta reduce" #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module TileEval where
import TileGrammar


--Data structures as defined in ToyGrammar:

--data TileType = TyInt | TyAxis | TyTile | TyBlank | TyCell | TyFun TileType TileType

--type Environment = [ (String,Expr) ]

--data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr | TmCell Expr
--            | TmReflect Expr Expr 
--            | TmRotate Expr Expr
--            | TmScale Expr Expr
--            | TmSubtile Expr Expr Expr Expr
--            | TmCombine Expr Expr Expr Expr
--            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
--            | TmVar String | TmLet String TileType Expr Expr
--            | TmApp Expr Expr 
--            | Cl String TileType Expr Environment

data Frame = HReflect Expr Environment | ReflectH Expr
           | HRotate Expr Environment | RotateH Expr
           | HScale Expr Environment | ScaleH Expr
           | HSubtile Expr Expr Expr Environment | HHSubtile Expr Expr Expr Environment
           | HHHSubtile Expr Expr Expr Environment | SubtileH Expr Expr Expr
           | HCombine Expr Expr Expr Environment | HHCombine Expr Expr Expr Environment
           | HHHCombine Expr Expr Expr Environment | CombineH Expr Expr Expr
--           | CombineHH Expr Expr Expr | CombineHHH Expr Expr Expr
           | HRepeatHo Expr Environment | RepeatHoH Expr
           | HRepeatVe Expr Environment | RepeatVeH Expr
           | HReplace Expr Expr Expr Environment | HHReplace Expr Expr Expr Environment
           | HHHReplace Expr Expr Expr Environment| ReplaceH Expr Expr Expr
           | HAnd Expr Environment | AndH Expr
           | HOr Expr Environment | OrH Expr
           | NotH
           | LengthH
           | HLet String TileType Expr Environment
           | HApp Expr Environment | AppH Expr
type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)

-- Function to unpack a closure to extract the underlying lambda term and environment
unpack :: Expr -> Environment -> (Expr,Environment)
unpack (Cl x t e env1) env2 = (TmLambda x t e , env1)
unpack e env = (e,env)

-- Look up a value in an environment and unpack it
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y    = unpack e ((y,e):env)
                              | otherwise = getValueBinding x env

update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

-- Checks for terminated expressions
isValue :: Expr -> Bool
isValue (TmInt _) = True
isValue TmX = True
isValue TmY = True
isValue (TmTile _ _) = True
isValue (TmBlank _) = True
isValue (TmCell _) = True
isValue (Cl {}) = True
isValue _ = False

--Small step evaluation function
eval1 :: State -> State
eval1 (TmVar x,env,k) = (e',env',k)
                    where (e',env') = getValueBinding x env

-- Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

-- Evaluation rules for reflect operator
eval1 ((TmReflect e1 e2),env,k) = (e1,env,(HReflect e2 env):k)
eval1 ((TmX),env1,(HReflect e env2):k) = (e,env2,(ReflectH (TmX)) : k)
eval1 ((TmY),env1,(HReflect e env2):k) = (e,env2,(ReflectH (TmY)) : k)
eval1 ((TmBlank n),env,(ReflectH (TmX)):k) = (TmTile n (makeBlank n),env,(ReflectH (TmX)):k)
eval1 ((TmBlank n),env,(ReflectH (TmY)):k) = (TmTile n (makeBlank n),env,(ReflectH (TmY)):k)
eval1 ((TmTile n tile),env,(ReflectH (TmX)):k) = (TmTile n (reflectTileX n tile),env,k)
eval1 ((TmTile n tile),env,(ReflectH (TmY)):k) = (TmTile n (reflectTileY n tile),env,k)

-- Evaluation rules for rotate operator
eval1 ((TmRotate e1 e2),env,k) = (e1,env,(HRotate e2 env):k)
eval1 ((TmInt x),env1,(HRotate e env2):k) = (e,env2,(RotateH (TmInt x)) : k)
eval1 ((TmBlank n),env,(RotateH (TmInt x)):k) = ((TmTile n (makeBlank n)),env,(RotateH (TmInt x)):k)
eval1 ((TmTile n tile),env,(RotateH (TmInt x)):k) = (TmTile n (rotateTile x n tile),env,k)

-- Evaluation rules for scale operator
eval1 ((TmScale e1 e2),env,k) = (e1,env,(HScale e2 env):k)
eval1 ((TmInt x),env1,(HScale e env2):k) = (e,env2,(ScaleH (TmInt x)) : k)
eval1 ((TmBlank n),env,(ScaleH (TmInt x)):k) = ((TmTile n (makeBlank n)),env,(ScaleH (TmInt x)):k)
eval1 ((TmTile n tile),env,(ScaleH (TmInt x)):k) = (TmTile (scaleInt x n) (scaleTile x n tile),env,k)

-- Evaluation rules for AND operator
eval1 ((TmAnd e1 e2),env,k) = (e1,env,(HAnd e2 env):k)
eval1 ((TmBlank n),env1,(HAnd e env2):k) = ((TmTile n (makeBlank n)),env1,(HAnd e env2):k)
eval1 ((TmTile n1 tile1),env1,(HAnd e env2):k) = (e,env2,(AndH (TmTile n1 tile1)) : k)
eval1 ((TmBlank n),env,(AndH (TmTile n2 tile2)):k) = ((TmTile n (makeBlank n)),env,(AndH (TmTile n2 tile2)):k)
eval1 ((TmTile n1 tile1),env,(AndH (TmTile n2 tile2)):k) | (checkTileSize n1 n2) = (TmTile n1 (andTile n1 tile1 tile2),env,k)
                                                         | otherwise = error "Tile size is different; cannot perform AND"

-- Evaluation rules for OR operator
eval1 ((TmOr e1 e2),env,k) = (e1,env,(HOr e2 env):k)
eval1 ((TmBlank n),env1,(HOr e env2):k) = ((TmTile n (makeBlank n)),env1,(HOr e env2):k)
eval1 ((TmTile n1 tile1),env1,(HOr e env2):k) = (e,env2,(OrH (TmTile n1 tile1)) : k)
eval1 ((TmBlank n),env,(OrH (TmTile n2 tile2)):k) = ((TmTile n (makeBlank n)),env,(OrH (TmTile n2 tile2)):k)
eval1 ((TmTile n1 tile1),env,(OrH (TmTile n2 tile2)):k) | (checkTileSize n1 n2) = (TmTile n1 (orTile n1 tile1 tile2),env,k)
                                                         | otherwise = error "Tile size is different; cannot perform OR"

-- Evaluation rules for NOT operator
eval1 ((TmNot e1),env,k) = (e1,env, NotH : k)
eval1 ((TmBlank n),env, NotH : k) = ((TmTile n (makeBlank n)),env, NotH : k)
eval1 ((TmTile n tile),env, NotH : k) = (TmTile n (notTile n tile),env,k)

-- Evaluation rules for subtile operator
eval1 ((TmSubtile e1 e2 e3 e4),env,k)             = (e1,env, (HSubtile e2 e3 e4 env):k)
eval1 ((TmInt m),env1,(HSubtile e2 e3 e4 env2):k) = (e2,env2,(HHSubtile (TmInt m) e3 e4 env1) : k)
eval1 ((TmInt x),env1,(HHSubtile e1 e3 e4 env2):k) = (e3,env2,(HHHSubtile e1 (TmInt x) e4 env1) : k)
eval1 ((TmInt y),env1,(HHHSubtile e1 e2 e4 env2):k) = (e4,env2,(SubtileH e1 e2 (TmInt y)) : k)
eval1 ((TmBlank n),env,(SubtileH (TmInt m) (TmInt x) (TmInt y)):k) = ((TmTile n (makeBlank n)),env,(SubtileH (TmInt m) (TmInt x) (TmInt y)):k)
eval1 ((TmTile n tile),env,(SubtileH (TmInt m) (TmInt x) (TmInt y)):k) = (TmTile (TmInt m) (tileSub n m x y tile),env,k)

-- Evaluation rules for combine operator
eval1 ((TmCombine e1 e2 e3 e4),env,k)             = (e1,env,(HCombine e2 e3 e4 env):k)

eval1 ((TmBlank n1),env1,(HCombine e2 e3 e4 env2):k) = ((TmTile n1 (makeBlank n1)),env1,(HCombine e2 e3 e4 env2):k)
eval1 ((TmTile n1 tile1),env1,(HCombine e2 e3 e4 env2):k) = (e2,env1,(HHCombine (TmTile n1 tile1) e3 e4 env2) : k)
--eval1 ((TmTile n1 tile1),env1,(HCombine e2 e3 e4 env2):k) = (e2,env2,(CombineH (TmTile n1 tile1) e3 e4):k)

--eval1 ((TmBlank n2),env,(CombineH e1 e3 e4):k) = ((TmTile n2 (makeBlank n2)),env,(CombineH e1 e3 e4):k)
eval1 ((TmBlank n2),env1,(HHCombine e1 e3 e4 env2):k) = ((TmTile n2 (makeBlank n2)),env1,(HHCombine e1 e3 e4 env2):k)
eval1 ((TmTile n2 tile2),env1,(HHCombine e1 e3 e4 env2):k) = (e3,env1,(HHHCombine e1 (TmTile n2 tile2) e4 env2) : k)
--eval1 ((TmTile n2 tile2),env,(CombineH e1 e3 e4):k) = (e3,env,(CombineHH e1 (TmTile n2 tile2) e4):k)

--eval1 ((TmBlank n3),env,(CombineHH e1 e2 e4):k) = ((TmTile n3 (makeBlank n3)),env,(CombineHH e1 e2 e4 ):k)
eval1 ((TmBlank n3),env1,(HHHCombine e1 e2 e4 env2):k) = ((TmTile n3 (makeBlank n3)),env1,(HHHCombine e1 e2 e4 env2):k)
eval1 ((TmTile n3 tile3),env1,(HHHCombine e1 e2 e4 env2):k) = (e4,env2,(CombineH e1 e2 (TmTile n3 tile3)) : k)
--eval1 ((TmTile n3 tile3),env,(CombineHH e1 e2 e4):k) = (e4,env,(CombineHHH e1 e2 (TmTile n3 tile3)):k)

--eval1 ((TmBlank n4),env,(CombineHHH e1 e2 e3):k) = ((TmTile n4 (makeBlank n4)),env,(CombineHHH e1 e2 e3):k)
eval1 ((TmBlank n4),env,(CombineH e1 e2 e3):k) = ((TmTile n4 (makeBlank n4)),env,(CombineH e1 e2 e3):k)
eval1 ((TmTile n4 tile4),env,(CombineH (TmTile n1 tile1) (TmTile n2 tile2) (TmTile n3 tile3)):k)
--eval1 ((TmTile n4 tile4),env,(CombineHHH (TmTile n1 tile1) (TmTile n2 tile2) (TmTile n3 tile3)):k)
    | checkCombineSize n1 n2 n3 n4 = (TmTile (combineSize n1 n2) (tileCombine n1 n2 n3 n4 tile1 tile2 tile3 tile4),env,k)
    | otherwise = error "Combine does not produce a N*N tile!"

-- Evaluation rules for repeatH operator
eval1 ((TmRepeatH e1 e2),env,k) = (e1,env,(HRepeatHo e2 env):k)
eval1 ((TmInt x),env1,(HRepeatHo e env2):k) = (e,env2,(RepeatHoH (TmInt x)) : k)
eval1 ((TmBlank n),env,(RepeatHoH (TmInt x)):k) = ((TmTile n (makeBlank n)),env,(RepeatHoH (TmInt x)):k)
eval1 ((TmTile (TmInt n) tile),env,(RepeatHoH (TmInt x)):k) = (TmTile (TmInt (n*x)) (repeatTileH x n tile),env,k)

-- Evaluation rules for repeatV operator
eval1 ((TmRepeatV e1 e2),env,k) = (e1,env,(HRepeatVe e2 env):k)
eval1 ((TmInt y),env1,(HRepeatVe e env2):k) = (e,env2,(RepeatVeH (TmInt y)) : k)
eval1 ((TmBlank n),env,(RepeatVeH (TmInt y)):k) = ((TmTile n (makeBlank n)),env,(RepeatVeH (TmInt y)):k)
eval1 ((TmTile (TmInt n) tile),env,(RepeatVeH (TmInt y)):k) = (TmTile (TmInt n) (repeatTileV y n tile),env,k)

-- Evaluation rules for replace operator
eval1 ((TmReplace e1 e2 e3 e4),env,k)             = (e1,env, (HReplace e2 e3 e4 env):k)
eval1 ((TmInt x),env1,(HReplace e2 e3 e4 env2):k) = (e2,env2,(HHReplace (TmInt x) e3 e4 env1) : k)
eval1 ((TmInt y),env1,(HHReplace e1 e3 e4 env2):k) = (e3,env2,(HHHReplace e1 (TmInt y) e4 env1) : k)
eval1 ((TmBlank m),env1,(HHHReplace e1 e2 e4 env2):k) = ((TmTile m (makeBlank m)),env1,(HHHReplace e1 e2 e4 env2):k)
eval1 ((TmTile m tile1),env1,(HHHReplace e1 e2 e4 env2):k) = (e4,env2,(ReplaceH e1 e2 (TmTile m tile1)) : k)
eval1 ((TmBlank n),env,(ReplaceH e1 e2 e3):k) = ((TmTile n (makeBlank n)),env,(ReplaceH e1 e2 e3):k)
eval1 ((TmTile (TmInt n) tile2),env,(ReplaceH (TmInt x) (TmInt y) (TmTile (TmInt m) tile1)):k) = (TmTile (TmInt n) (tileReplace x y m tile1 n tile2),env,k)

-- Evaluation rules for length operator
eval1 ((TmLength e1),env,k) = (e1,env, LengthH : k)
eval1 ((TmBlank n),env, LengthH : k) = ((TmTile n (makeBlank n)),env, LengthH : k)
eval1 ((TmTile n tile),env, LengthH : k) = (n,env,k)

-- Evaluation rules for Let blocks
eval1 ((TmLet x typ e1 e2),env,k) = (e1,env,(HLet x typ e2 env):k)
eval1 (v,env1,(HLet x typ e env2):k) | isValue v = (e, update env2 x v , k)

--  Rule to make closures from lambda abstractions.
eval1 ((TmLambda x typ e),env,k) = ((Cl x typ e env), [], k)

-- Evaluation rules for application
eval1 ((TmApp e1 e2),env,k) = (e1,env, (HApp e2 env) : k)
eval1 (v,env1,(HApp e env2):k ) | isValue v = (e, env2, (AppH v) : k)
eval1 (v,env1,(AppH (Cl x typ e env2) ) : k )  = (e, update env2 x v, k)

-- Rule for runtime errors
eval1 (e,env,k) = error "Evaluation Error"

-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && (null k) then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k)

-- Function to unparse underlying values from the AST term
unparse :: Expr -> String
unparse (TmInt n)   = show n
unparse TmX         = "X Axis"
unparse TmY         = "Y Axis"
unparse (TmTile (TmInt n) tile) = showTile n tile
--unparse (TmBlank (TmInt n)) = showBlankTile n
unparse (Cl {}) = "Function Value"
unparse _ = "Unknown"

-- Function to evaluate int from a TmInt expression
tmInttoInt :: Expr -> Int
tmInttoInt (TmInt n) = n

-- Function to display a tile in output, as a string
showTile :: Int -> Expr -> String
showTile n tile = displayTile $ makeTile n (tileExprToInt tile)

-- Function to display a blank tile of n 0's, as a string
-- showBlankTile :: Int -> String
-- showBlankTile n = displayTile $ makeBlankTile n

--change words and such ????
displayTile :: [[Int]] -> String
displayTile matrix = unlines $ map unwords $ map (map show) matrix

-------------------------------------------
--  CONVERSION BETWEEN EXPR and [[INT]]  --
-------------------------------------------

tileExprToInt :: Expr -> [[Int]]
tileExprToInt (TmCell e1) = tileExprToInt e1
tileExprToInt (TmComma e1 e2) = tileExprToInt e1 ++ tileExprToInt e2
tileExprToInt (TmInt n) = [[n]]

--change words and such!!
makeTile :: Int -> [[Int]] -> [[Int]]
makeTile n xs = separate n $ concat xs
  where separate _ [] = []
        separate m ys = take m ys : separate m (drop m ys)

makeBlank :: Expr -> Expr
makeBlank (TmInt n) = makeExpr n (makeBlankTile n)

makeBlankTile :: Int -> [[Int]]
makeBlankTile n = replicate n (replicate n 0)

unparseTile :: Expr -> Expr -> [[Int]]
unparseTile n tile = makeTile (read $ unparse n) (tileExprToInt tile)

unparseTile' :: Int -> Expr -> [[Int]]
unparseTile' n tile = makeTile n (tileExprToInt tile)

--change words and such!!
makeExpr :: Int -> [[Int]] -> Expr
makeExpr n matrix = TmCell $ makeTmComma n $ map makeTmCell $ makeTile n matrix
  where makeTmInt n = TmInt n
        makeTmCell row = TmCell $ makeTmComma n $ map makeTmInt row
        makeTmComma n [x] = x
        makeTmComma n (x:xs) = TmComma x $ makeTmComma n xs

--------------------------------------
--          REFLECTION              --
--------------------------------------

reflectTileX :: Expr -> Expr -> Expr
reflectTileX n tile = makeExpr (tmInttoInt n) (reflectX $ unparseTile n tile)

reflectTileY :: Expr -> Expr -> Expr
reflectTileY n tile = makeExpr (tmInttoInt n) (reflectY $ unparseTile n tile)

reflectX :: [[Int]] -> [[Int]]
reflectX = reverse

reflectY :: [[Int]] -> [[Int]]
reflectY = map reverse

--------------------------------------
--          ROTATION                --
--------------------------------------

rotateTile :: Int -> Expr -> Expr -> Expr
rotateTile x n tile = makeExpr (tmInttoInt n) (rotateTileInt x $ unparseTile n tile)

rotateTileInt :: Int -> [[Int]] -> [[Int]]
rotateTileInt n tile = iterate turn90 tile !! (4-n)
  where
    turn90 m = reverse (transpose m)

--change this to show less copied stuff
transpose :: [[a]] -> [[a]]
transpose [] = []
transpose ([]:xs) = transpose xs
transpose ((x:xs):ys) = (x : [h | (h:_) <- ys]) : transpose (xs : [t | (_:t) <- ys])

-----------------------------------
--          SCALE                --
-----------------------------------

scaleTile :: Int -> Expr -> Expr -> Expr
scaleTile x n tile = makeExpr (tmInttoInt n) (scaleTileInt x $ unparseTile n tile)

--change this to show less copied stuff
scaleTileInt :: Int -> [[Int]] -> [[Int]]
scaleTileInt n matrix
    | n > 0     = concat [replicate n (concatMap (replicate n) row) | row <- matrix]
    | n < 0     = [take n' (drop (n' * i) (concat matrix)) | i <- [0..n'-1]]
    | otherwise = matrix
    where n' = abs n

scaleInt :: Int -> Expr -> Expr
scaleInt x n = TmInt (x * (tmInttoInt n))

-------------------------------------
--         AND, NOT, OR            --
-------------------------------------

checkTileSize :: Expr -> Expr -> Bool
checkTileSize (TmInt x1) (TmInt x2) | x1 == x2  = True
                    | otherwise = False

andTile :: Expr -> Expr -> Expr -> Expr
andTile n tile1 tile2 = makeExpr (tmInttoInt n) (tileAnd (unparseTile n tile1) (unparseTile n tile2))

orTile :: Expr -> Expr -> Expr -> Expr
orTile n tile1 tile2 = makeExpr (tmInttoInt n) (tileOr (unparseTile n tile1) (unparseTile n tile2))

notTile :: Expr -> Expr -> Expr
notTile n tile = makeExpr (tmInttoInt n) (tileNot (unparseTile n tile))

tileAnd :: [[Int]] -> [[Int]] -> [[Int]]
tileAnd a b = zipWith (zipWith (\x y -> if x == 1 && y == 1 then 1 else 0)) a b

tileOr :: [[Int]] -> [[Int]] -> [[Int]]
tileOr a b = zipWith (zipWith (\x y -> if x == 1 || y == 1 then 1 else 0)) a b

tileNot :: [[Int]] -> [[Int]]
tileNot = map (map (\x -> if x == 0 then 1 else 0))

--------------------------------
--         SUBTILE            --
--------------------------------

tileSub :: Expr -> Int -> Int -> Int -> Expr -> Expr
tileSub n m x y tile = makeExpr m (getSubTile m x y (unparseTile n tile))

getSubTile :: Int -> Int -> Int -> [[Int]] -> [[Int]]
getSubTile m x y matrix
  | x < 0 || y < 0 || x+m > length matrix || y+m > length (head matrix) = error "Invalid coordinates!"
  | otherwise = take m $ drop x $ map (take m . drop y) matrix

--------------------------------
--         COMBINE            --
--------------------------------

combineSize :: Expr -> Expr -> Expr
combineSize n1 n2 = (TmInt $ (tmInttoInt n1) + (tmInttoInt n2))

tileCombine :: Expr -> Expr -> Expr -> Expr -> Expr -> Expr -> Expr -> Expr -> Expr
tileCombine n1 n2 n3 n4 tile1 tile2 tile3 tile4 = makeExpr ((tmInttoInt n1) + (tmInttoInt n2)) (getCombineTile (unparseTile n1 tile1) (unparseTile n2 tile2) (unparseTile n3 tile3) (unparseTile n4 tile4))

getCombineTile :: [[Int]] -> [[Int]] -> [[Int]] -> [[Int]] -> [[Int]]
getCombineTile tile1 tile2 tile3 tile4 =
  let n = length tile1
      topRows = zipWith (++) tile1 tile2
      bottomRows = zipWith (++) tile3 tile4
  in topRows ++ bottomRows

checkCombineSize :: Expr -> Expr -> Expr -> Expr -> Bool
checkCombineSize n1 n2 n3 n4 = (tmInttoInt n1) == (tmInttoInt n2) && (tmInttoInt n3) == (tmInttoInt n4) && (tmInttoInt n1) == (tmInttoInt n3)

-------------------------------
--         REPEAT            --
-------------------------------

repeatTileH :: Int -> Int -> Expr -> Expr
repeatTileH x n tile = makeExpr (n*x) (getRepeatH x (unparseTile' n tile))

repeatTileV:: Int -> Int -> Expr -> Expr
repeatTileV x n tile = makeExpr n (getRepeatV x (unparseTile' n tile))

getRepeatH :: Int -> [[Int]] -> [[Int]]
getRepeatH x tile = map (concat . replicate x) tile

getRepeatV :: Int -> [[Int]] -> [[Int]]
getRepeatV y tile = concat $ replicate y tile

--------------------------------
--         REPLACE            --
--------------------------------

tileReplace :: Int -> Int -> Int -> Expr -> Int -> Expr -> Expr
tileReplace x y m tile1 n tile2 = makeExpr n (getTileReplace x y (unparseTile' m tile1) (unparseTile' n tile2) )

getTileReplace :: Int -> Int -> [[Int]] -> [[Int]] -> [[Int]]
getTileReplace x y smallMatrix bigMatrix
  | x + (length smallMatrix) > (length bigMatrix) || y + (length smallMatrix) > (length bigMatrix) = error "Invalid replace: smaller tile is outside bigger tile."
  | otherwise =
    let replaceRows = zipWith (\a b -> take x a ++ b ++ drop (x+(length smallMatrix)) a) (drop y bigMatrix) smallMatrix
    in take y bigMatrix ++ replaceRows ++ drop (y+(length smallMatrix)) bigMatrix
