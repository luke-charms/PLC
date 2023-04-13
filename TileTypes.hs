--Author: Julian Rathke, 2018 
--Provides an implementation of a type checker for the \Toy language from the lecture notes.
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}
module TileTypes where
import TileGrammar
import System.Directory
import System.IO.Unsafe

--Data structures as defined in ToyGrammar:

--data TileType = TyInt | TyBool | TyAxis | TyTile | TyBlank | TyCell TileType | TyFun TileType TileType | TyComma TileType TileType | TyFile

--type Environment = [ (String,Expr) ]

--data Expr = TmInt Int | TmX | TmY | TmTrue | TmFalse 
--            | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmComma Expr Expr
--            | TmLessThan Expr Expr | TmMoreThan Expr Expr 
--            | TmLessThanEqual Expr Expr | TmMoreThanEqual Expr Expr 
--            | TmAdd Expr Expr | TmMinus Expr Expr
--            | TmReflect Expr Expr 
--            | TmRotate Expr Expr
--            | TmScale Expr Expr
--            | TmSubtile Expr Expr Expr Expr
--            | TmCombine Expr Expr Expr Expr
--            | TmCombineH Expr Expr
--            | TmCombineV Expr Expr
--            | TmRepeatH Expr Expr
--            | TmRepeatV Expr Expr
--            | TmReplace Expr Expr Expr Expr
--            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
--            | TmLength Expr | TmIf Expr Expr Expr 
--            | TmVar String | TmLet String TileType Expr Expr
--            | TmLambda String TileType Expr | TmApp Expr Expr 
--            | Cl String TileType Expr Environment

--            | TmFor Expr Expr
--            | TmInp Expr
--            | TmFile String

type TypeEnvironment = [ (String,TileType) ]


getBinding :: String -> TypeEnvironment -> TileType
getBinding x [] = error "Variable binding not found"
getBinding x ((y,t):tenv) | x == y  = t
                          | otherwise = getBinding x tenv

addBinding :: String -> TileType -> TypeEnvironment -> TypeEnvironment
addBinding x t tenv = (x,t):tenv

typeOf :: TypeEnvironment -> Expr -> TileType
typeOf tenv (TmInt _ )  = TyInt

typeOf tenv TmX = TyAxis

typeOf tenv TmY = TyAxis

typeOf tenv TmTrue = TyBool

typeOf tenv TmFalse = TyBool

typeOf tenv (TmCell e1) = TyCell t1
   where t1 = typeOf tenv e1

typeOf tenv (TmComma e1 e2) = TyComma t1 t2
   where (t1,t2) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (TmTile e1 (TmCell e2)) | (TyInt,TyCell t1) == (typeOf tenv e1,typeOf tenv (TmCell e2)) && tileCheck e1 (TmCell e2) = TyTile
                                    | otherwise = error "Invalid Tile!"
   where t1 = typeOf tenv e2

typeOf tenv (TmBlank e1) | TyInt == typeOf tenv e1 = TyTile

typeOf tenv (TmLessThan e1 e2) | (TyInt,TyInt) == (typeOf tenv e1, typeOf tenv e2)  = TyBool

typeOf tenv (TmMoreThan e1 e2) | (TyInt,TyInt) == (typeOf tenv e1, typeOf tenv e2)  = TyBool

typeOf tenv (TmLessThanEqual e1 e2) | (TyInt,TyInt) == (typeOf tenv e1, typeOf tenv e2)  = TyBool

typeOf tenv (TmMoreThanEqual e1 e2) | (TyInt,TyInt) == (typeOf tenv e1, typeOf tenv e2)  = TyBool

typeOf tenv (TmAdd e1 e2) | (TyInt,TyInt) == (typeOf tenv e1, typeOf tenv e2) = TyInt 

typeOf tenv (TmMinus e1 e2) | (TyInt,TyInt) == (typeOf tenv e1, typeOf tenv e2) = TyInt 

typeOf tenv (TmReflect e1 e2) | (TyAxis,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmRotate e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmScale e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmSubtile e1 e2 e3 e4) | (TyInt,TyInt,TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3, typeOf tenv e4) = TyTile

typeOf tenv (TmCombine e1 e2 e3 e4) | (TyTile,TyTile,TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3, typeOf tenv e4) = TyTile

typeOf tenv (TmCombineH e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile --might need to check this type!!

typeOf tenv (TmCombineV e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile --might need to check this type!!

typeOf tenv (TmRepeatH e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile --might need to check this type!!

typeOf tenv (TmRepeatV e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile --might need to check this type!!

typeOf tenv (TmReplace e1 e2 e3 e4) | (TyInt,TyInt,TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3, typeOf tenv e4) = TyTile

typeOf tenv (TmAnd e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmNot e1) | TyTile == typeOf tenv e1 = TyTile

typeOf tenv (TmOr e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmIf e1 e2 e3) | t2 == t3 = t2
  where (TyBool,t2,t3) = (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3)

typeOf tenv (TmLength e1) | TyTile == typeOf tenv e1 = TyInt

typeOf tenv (TmVar x) = getBinding x tenv

typeOf tenv (TmLambda x t e) = TyFun t u
  where u = typeOf (addBinding x t tenv) e

typeOf tenv (TmApp e1 e2) | t1 == t3 = t2
  where ((t1,t2),t3) = (checkFun (typeOf tenv e1), typeOf tenv e2)
        checkFun (TyFun t1 t2) = (t1,t2)
        checkFun _ = error "Type Error"

typeOf tenv (TmLet x t e1 e2) | t == t1 = typeOf (addBinding x t tenv) e2
  where t1 = typeOf tenv e1

typeOf tenv (TmFor e1 e2) | (TyTile,t1) == (typeOf tenv e1,t1) = TyTile
  where t1 = typeOf tenv e2

typeOf tenv (TmInp (TmVar x)) = if unsafePerformIO $ doesFileExist (x ++ ".tl") then TyTile else error "Invalid File Input!"

typeOf tenv (TmFile x) = TyFile

typeOf tenv _ = error "Type Error"

-- Function for printing the results of the TypeCheck
unparseType :: TileType -> String
unparseType TyInt = "Int"
unparseType TyAxis = "Axis"
unparseType TyBool = "Bool"
unparseType TyTile = "Tile"
unparseType TyBlank = "Blank Tile"
unparseType (TyCell t1) = "Cell: [" ++ unparseType t1 ++ "]"
unparseType (TyFun t1 t2) = unparseType t1 ++ " -> " ++ unparseType t2
unparseType (TyComma t1 t2) = unparseType t1 ++ "," ++ unparseType t2
unparseType TyFile = "FILE"

---------------------------------------

tileCheck :: Expr -> Expr -> Bool
tileCheck n tile = lengthCheck (tmInttoInt n) (tileExprToInt tile) && numCheck (tileExprToInt tile)

lengthCheck :: Int -> [Int] -> Bool
lengthCheck n tile | length tile == n*n = True
                   | otherwise = False

numCheck :: [Int] -> Bool
numCheck [] = True
numCheck (x:xs) | x == 0 || x == 1 = numCheck xs
                    | otherwise = False

-- Function to evaluate int from a TmInt expression
tmInttoInt :: Expr -> Int
tmInttoInt (TmInt n) = n

tileExprToInt :: Expr -> [Int]
tileExprToInt (TmCell e1) = tileExprToInt e1
tileExprToInt (TmComma e1 e2) = tileExprToInt e1 ++ tileExprToInt e2
tileExprToInt (TmInt n) = [n]
