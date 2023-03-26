-- Author: Julian Rathke, 2018
-- Provides a CEK implementation of the \Toy language from the lecture notes
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Use join" #-}
{-# HLINT ignore "Use map once" #-}
{-# HLINT ignore "Eta reduce" #-}
module TileEval where
import TileGrammar


--Data structures as defined in ToyGrammar:

--data TileType = TyInt | TyAxis | TyTile | TyBlank | TyCell | TyFun TileType TileType

--type Environment = [ (String,Expr) ]

--data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr | TmCell Expr
--            | TmReflect Expr Expr 
--            | TmRotate Expr Expr
--            | TmScale Expr Expr
--            | TmSubtile Expr Expr Expr
--            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
--            | TmVar String | TmLet String TileType Expr Expr
--            | TmApp Expr Expr 
--            | Cl String TileType Expr Environment

data Frame = HReflect Expr Environment | ReflectH Expr
           | HRotate Expr Environment | RotateH Expr
           | HScale Expr Environment | ScaleH Expr
           | HSubtile Expr Expr Environment
           | HAnd Expr Environment | AndH Expr
           | HOr Expr Environment | OrH Expr
           | NotH
           | HLet String TileType Expr Environment
           | HApp Expr Environment | AppH Expr
type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)

-- Function to unpack a closure to extract the underlying lambda term and environment
unpack :: Expr -> (Expr,Environment)
unpack (Cl x t e env1) = (TmLambda x t e , env1)
unpack e = (e,[])

-- Look up a value in an environment and unpack it
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y  = unpack e
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
eval1 ((TmTile n tile),env,(ReflectH (TmX)):k) = (TmTile n (reflectTileX n tile),[],k)
eval1 ((TmTile n tile),env,(ReflectH (TmY)):k) = (TmTile n (reflectTileY n tile),[],k)

-- Evaluation rules for rotate operator
eval1 ((TmRotate e1 e2),env,k) = (e1,env,(HRotate e2 env):k)
eval1 ((TmInt x),env1,(HRotate e env2):k) = (e,env2,(RotateH (TmInt x)) : k)
eval1 ((TmTile n tile),env,(RotateH (TmInt x)):k) = (TmTile n (rotateTile x n tile),[],k)

-- Evaluation rules for scale operator
eval1 ((TmScale e1 e2),env,k) = (e1,env,(HScale e2 env):k)
eval1 ((TmInt x),env1,(HScale e env2):k) = (e,env2,(ScaleH (TmInt x)) : k)
eval1 ((TmTile n tile),env,(ScaleH (TmInt x)):k) = (TmTile (scaleInt x n) (scaleTile x n tile),[],k)

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
unparse (TmBlank (TmInt n)) = showBlankTile n
unparse (Cl {}) = "Function Value"
unparse _ = "Unknown"

-- Function to evaluate int from a TmInt expression
tmInttoInt :: Expr -> Int
tmInttoInt (TmInt n) = n

-- Function to display a tile in output, as a string
showTile :: Int -> Expr -> String
showTile n tile = displayTile $ makeTile n (tileExprToInt tile)

-- Function to display a blank tile of n 0's, as a string
showBlankTile :: Int -> String
showBlankTile n = displayTile $ makeBlankTile n

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
makeTile n xs = chunk n $ concat xs
  where chunk _ [] = []
        chunk m ys = take m ys : chunk m (drop m ys)

makeBlankTile :: Int -> [[Int]]
makeBlankTile n = replicate n (replicate n 0)

unparseTile :: Expr -> Expr -> [[Int]]
unparseTile n tile = makeTile (read $ unparse n) (tileExprToInt tile)

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
rotateTileInt n tile = iterate turn90 tile !! n
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

andTile :: Expr -> Expr
andTile expr = undefined

--------------------------------
--         SUBTILE            --
--------------------------------




--------------------------------
--         COMBINE            --
--------------------------------

