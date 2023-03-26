-- Author: Julian Rathke, 2018
-- Provides a CEK implementation of the \Toy language from the lecture notes
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Use join" #-}
{-# HLINT ignore "Use map once" #-}
module TileEval where
import TileGrammar
import Data.Char


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
unparse (Cl {}) = "Function Value"
unparse _ = "Unknown"

tmInttoInt :: Expr -> Int
tmInttoInt (TmInt n) = n

displayTile :: [[Int]] -> String
displayTile matrix = unlines $ map unwords $ map (map show) matrix

showTile :: Int -> Expr -> String
showTile n tile = displayTile $ makeTile n (tileExprToInt tile)

----------------------------------

tileExprToInt :: Expr -> [[Int]]
tileExprToInt (TmCell e1) = tileExprToInt e1
tileExprToInt (TmComma e1 e2) = tileExprToInt e1 ++ tileExprToInt e2
tileExprToInt (TmInt n) = [[n]]

makeTile :: Int -> [[Int]] -> [[Int]]
makeTile n xs = chunk n $ concat xs
  where chunk _ [] = []
        chunk m ys = take m ys : chunk m (drop m ys)

unparseTile :: Expr -> Expr -> [[Int]]
unparseTile n tile = makeTile (read $ unparse n) (tileExprToInt tile)

makeExpr :: Int -> [[Int]] -> Expr
makeExpr n matrix = TmCell $ makeTmComma n $ map makeTmCell $ makeTile n matrix
  where makeTmInt n = TmInt n
        makeTmCell row = TmCell $ makeTmComma n $ map makeTmInt row
        makeTmComma n [x] = x
        makeTmComma n (x:xs) = TmComma x $ makeTmComma n xs

----------------------------------

reflectTileX :: Expr -> Expr -> Expr
reflectTileX n tile = makeExpr (tmInttoInt n) (reflectX $ unparseTile n tile)

reflectTileY :: Expr -> Expr -> Expr
reflectTileY n tile = makeExpr (tmInttoInt n) (reflectY $ unparseTile n tile)

reflectX :: [[Int]] -> [[Int]]
reflectX = reverse

reflectY :: [[Int]] -> [[Int]]
reflectY = map reverse

-----------------------------------