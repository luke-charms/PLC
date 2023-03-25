--Author: Julian Rathke, 2018 
--Provides an implementation of a type checker for the \Toy language from the lecture notes.
module TileTypes where
import TileGrammar
import Language.Haskell.TH.Ppr (TypeArg(TyArg))

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

typeOf tenv (TmTile e1 e2) | (TyInt,TyInt) == (typeOf tenv e1, typeOf tenv e2)  = TyTile

typeOf tenv (TmBlank e1) | TyInt == typeOf tenv e1  = TyBlank

typeOf tenv (TmReflect e1 e2) | (TyAxis,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmRotate e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmScale e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmSubtile e1 e2 e3) | (TyInt,TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3) = TyTile

typeOf tenv (TmCombine e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmAnd e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmNot e1) | TyTile == typeOf tenv e1 = TyTile

typeOf tenv (TmOr e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmVar x) = getBinding x tenv

typeOf tenv (TmLambda x t e) = TyFun t u 
  where u = typeOf (addBinding x t tenv) e

typeOf tenv (TmApp e1 e2) | t1 == t3 = t2
  where ((t1,t2),t3) = (checkFun (typeOf tenv e1), typeOf tenv e2)
        checkFun (TyFun t1 t2) = (t1,t2)
        checkFun _ = error "Type Error"

typeOf tenv (TmLet x t e1 e2) | t == t1 = typeOf (addBinding x t tenv) e2
  where t1 = typeOf tenv e1

typeOf tenv _ = error "Type Error"

-- Function for printing the results of the TypeCheck
unparseType :: TileType -> String
unparseType TyInt = "Int"
unparseType TyAxis = "Axis"
unparseType TyTile = "Tile"
unparseType TyBlank = "Blank Tile"
unparseType (TyFun t1 t2) = unparseType t1 ++ " -> " ++ unparseType t2
