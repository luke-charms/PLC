-- Author: Julian Rathke, 2018
-- Provides a CEK implementation of the \Toy language from the lecture notes
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Use join" #-}
module TileEval where
import TileGrammar
import Data.Char


--Data structures as defined in ToyGrammar:

--data TileType = TyInt | TyAxis | TyTile | TyBlank | TyFun TileType TileType

--type Environment = [ (String,Expr) ]

--data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr
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
eval1 ((TmTile n tile),env,(ReflectH (TmX)):k) = (TmTile n (parseTile (reflectTileX (unparse n) (unparse tile))),[],k)
eval1 ((TmTile n tile),env,(ReflectH (TmY)):k) = (TmTile n (parseTile (reflectTileY (unparse n) (unparse tile))),[],k)

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
unparse (TmTile n tile) = showTile (read $ unparse n) (read $ unparse n) "" (unparse tile)
unparse (Cl {}) = "Function Value"
unparse _ = "Unknown"

parseTile :: String -> Expr
parseTile tile = (TmInt (read tile))


unparseTile :: Expr -> Int
unparseTile (TmInt n) = n

parseTile' :: Int -> Expr
parseTile' n = (TmInt n)

showTile :: Int -> Int -> String -> String -> String
showTile 0 n tile _             = tile
showTile n 0 tile tileLoop      = showTile (n-1) n (tile ++ "\n") tileLoop
showTile n nn tile (t:ileLoop)  = showTile n (nn-1) (tile ++ [t]) ileLoop

packageTile :: Int -> Int -> [[Int]]
packageTile x n = map (map digitToInt) (chunksOf n (show x))


reflectTileX :: String -> String -> String
reflectTileX n tile = reverse (chunksOf (read n) tile) >>= id

reflectTileY :: String -> String -> String
reflectTileY n tile = concatMap reverse (chunksOf (read n) tile)

chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = take n xs : chunksOf n (drop n xs)
