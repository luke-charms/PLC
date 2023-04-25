{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Eta reduce" #-}
module TileEval where
import TileGrammar
import System.IO.Unsafe
import Data.Ratio
import Data.List
import Distribution.Simple.Utils (xargs)

--Data structures as defined in TileGrammar:

--data TileType = TyInt | TyBool | TyAxis | TyTile | TyCell TileType | TyComma TileType TileType | TyFile | TyFun TileType TileType
--type Environment = [ (String,Expr) ]
--data Expr = TmInt Int | TmX | TmY | TmTrue | TmFalse 
--            | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmComma Expr Expr
--            | TmInp Expr
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
--            | TmFor Expr Expr

--            | TmLength Expr | TmIf Expr Expr Expr 
--            | TmVar String | TmLet String TileType Expr Expr
--            | TmFile String


data Frame = HReflect Expr Environment | ReflectH Expr
           | HRotate Expr Environment | RotateH Expr
           | HScale Expr Environment | ScaleH Expr
           | HSubtile Expr Expr Expr Environment | HHSubtile Expr Expr Expr Environment
           | HHHSubtile Expr Expr Expr Environment | SubtileH Expr Expr Expr
           | HCombine Expr Expr Expr Environment | HHCombine Expr Expr Expr Environment
           | HHHCombine Expr Expr Expr Environment | CombineH Expr Expr Expr
           | HCombineHo Expr Environment | CombineHoH Expr
           | HCombineVe Expr Environment | CombineVeH Expr
           | HRepeatHo Expr Environment | RepeatHoH Expr
           | HRepeatVe Expr Environment | RepeatVeH Expr
           | HReplace Expr Expr Expr Environment | HHReplace Expr Expr Expr Environment
           | HHHReplace Expr Expr Expr Environment| ReplaceH Expr Expr Expr
           | HAnd Expr Environment | AndH Expr
           | HOr Expr Environment | OrH Expr
           | NotH | LengthH | ForH Expr
           | HLessThan Expr Environment | LessThanH Expr
           | HMoreThan Expr Environment | MoreThanH Expr
           | HLessThanEqual Expr Environment | LessThanEqualH Expr
           | HMoreThanEqual Expr Environment | MoreThanEqualH Expr
           | HAdd Expr Environment | AddH Expr
           | HMinus Expr Environment | MinusH Expr
           | HMultiply Expr Environment | MultiplyH Expr
           | HEqualsInt Expr Environment | EqualsIntH Expr
           | HAndInt Expr Environment | AndIntH Expr
           | HOrInt Expr Environment | OrIntH Expr
           | HModulo Expr Environment | ModuloH Expr
           | HIf Expr Expr Environment
           | HLet String TileType Expr Environment
           | HTake Expr Expr Environment | HHTake Expr Expr Environment
           | TakeH Expr Expr
           | InputH

type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)

-- Looks up a value in an environment and unpacks it
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y    = (e,(y,e):env)
                              | otherwise = getValueBinding x env

-- Updates environment with variable name and value
update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

-- Checks for terminated expressions
isValue :: Expr -> Bool
isValue (TmInt _) = True
isValue TmX = True
isValue TmY = True
isValue TmTrue = True
isValue TmFalse = True
isValue (TmTile _ _) = True
isValue (TmBlank _) = True
isValue (TmCell _) = True
isValue _ = False

--Small step evaluation function
eval1 :: State -> State
eval1 (TmVar x,env,k) = (e',env',k)
                    where (e',env') = getValueBinding x env

-- Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

-- Rule for finding relevant column number
eval1 ((TmCol),env,k) = (e',env',k)
                    where (e',env') = getValueBinding "col" env

-- Rule for finding relevant row number
eval1 ((TmRow),env,k) = (e',env',k)
                    where (e',env') = getValueBinding "row" env

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
eval1 ((TmCombine e1 e2 e3 e4),env,k) = (e1,env,(HCombine e2 e3 e4 env):k)
eval1 ((TmBlank n1),env1,(HCombine e2 e3 e4 env2):k) = ((TmTile n1 (makeBlank n1)),env1,(HCombine e2 e3 e4 env2):k)
eval1 ((TmTile n1 tile1),env1,(HCombine e2 e3 e4 env2):k) = (e2,env1,(HHCombine (TmTile n1 tile1) e3 e4 env2) : k)
eval1 ((TmBlank n2),env1,(HHCombine e1 e3 e4 env2):k) = ((TmTile n2 (makeBlank n2)),env1,(HHCombine e1 e3 e4 env2):k)
eval1 ((TmTile n2 tile2),env1,(HHCombine e1 e3 e4 env2):k) = (e3,env1,(HHHCombine e1 (TmTile n2 tile2) e4 env2) : k)
eval1 ((TmBlank n3),env1,(HHHCombine e1 e2 e4 env2):k) = ((TmTile n3 (makeBlank n3)),env1,(HHHCombine e1 e2 e4 env2):k)
eval1 ((TmTile n3 tile3),env1,(HHHCombine e1 e2 e4 env2):k) = (e4,env2,(CombineH e1 e2 (TmTile n3 tile3)) : k)
eval1 ((TmBlank n4),env,(CombineH e1 e2 e3):k) = ((TmTile n4 (makeBlank n4)),env,(CombineH e1 e2 e3):k)
eval1 ((TmTile n4 tile4),env,(CombineH (TmTile n1 tile1) (TmTile n2 tile2) (TmTile n3 tile3)):k)
    | checkCombineSize n1 n2 n3 n4 = (TmTile (combineSize n1 n2) (tileCombine n1 n2 n3 n4 tile1 tile2 tile3 tile4),env,k)
    | otherwise = error "Combine does not produce a N*N tile!"

-- Evaluation rules for combineH operator
eval1 ((TmCombineH e1 e2),env,k) = (e1,env,(HCombineHo e2 env):k)
eval1 ((TmBlank n),env,(HCombineHo e env2):k) = ((TmTile n (makeBlank n)),env,(HCombineHo e env2):k)
eval1 ((TmTile (TmInt n1) tile1),env1,(HCombineHo e env2):k) = (e,env2,(CombineHoH (TmTile (TmInt n1) tile1)) : k)
eval1 ((TmBlank n),env,(CombineHoH e):k) = ((TmTile n (makeBlank n)),env,(CombineHoH e):k)
eval1 ((TmTile (TmInt n2) tile2),env,(CombineHoH (TmTile (TmInt n1) tile1)):k) = (TmTile (TmInt (n1+n2)) (combineTileH n1 tile1 n2 tile2),env,k)
--    | checkCombineHV n1 n2 = (TmTile (TmInt (n1+n2)) (combineTileH n1 tile1 n2 tile2),env,k)
--    | otherwise = error "CombineH is not used with tiles of same height!"

-- Evaluation rules for combineV operator
eval1 ((TmCombineV e1 e2),env,k) = (e1,env,(HCombineVe e2 env):k)
eval1 ((TmBlank n),env1,(HCombineVe e env2):k) = eval1 ((TmTile n (makeBlank n)),env1,(HCombineVe e env2):k)
eval1 ((TmTile (TmInt n1) tile1),env1,(HCombineVe e env2):k) = (e,env2,(CombineVeH (TmTile (TmInt n1) tile1)) : k)
eval1 ((TmBlank n),env,(CombineVeH e):k) = ((TmTile n (makeBlank n)),env,(CombineVeH e):k)
eval1 ((TmTile (TmInt n2) tile2),env,(CombineVeH (TmTile (TmInt n1) tile1)):k) = (TmTile (TmInt n1) (combineTileV n1 tile1 n2 tile2),env,k)
--    | checkCombineHV n1 n2 = (TmTile (TmInt n1) (combineTileV n1 tile1 n2 tile2),env,k)
--    | otherwise = error "CombineV is not used with tiles of same width!"

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

-- Evaluation rules for less than operator
eval1 ((TmLessThan e1 e2),env,k) = (e1,env,(HLessThan e2 env):k)
eval1 ((TmInt n),env1,(HLessThan e env2):k) = (e,env2,(LessThanH (TmInt n)) : k)
eval1 ((TmInt m),env,(LessThanH (TmInt n)):k) | n < m = (TmTrue,env,k)
                                              | otherwise = (TmFalse,env,k)

-- Evaluation rules for more than operator
eval1 ((TmMoreThan e1 e2),env,k) = (e1,env,(HMoreThan e2 env):k)
eval1 ((TmInt n),env1,(HMoreThan e env2):k) = (e,env2,(MoreThanH (TmInt n)) : k)
eval1 ((TmInt m),env,(MoreThanH (TmInt n)):k) | n > m = (TmTrue,env,k)
                                              | otherwise = (TmFalse,env,k)

-- Evaluation rules for less than and equal to operator
eval1 ((TmLessThanEqual e1 e2),env,k) = (e1,env,(HLessThanEqual e2 env):k)
eval1 ((TmInt n),env1,(HLessThanEqual e env2):k) = (e,env2,(LessThanEqualH (TmInt n)) : k)
eval1 ((TmInt m),env,(LessThanEqualH (TmInt n)):k) | n <= m = (TmTrue,env,k)
                                                   | otherwise = (TmFalse,env,k)

-- Evaluation rules for more than and equal to operator
eval1 ((TmMoreThanEqual e1 e2),env,k) = (e1,env,(HMoreThanEqual e2 env):k)
eval1 ((TmInt n),env1,(HMoreThanEqual e env2):k) = (e,env2,(MoreThanEqualH (TmInt n)) : k)
eval1 ((TmInt m),env,(MoreThanEqualH (TmInt n)):k) | n >= m = (TmTrue,env,k)
                                                   | otherwise = (TmFalse,env,k)

-- Evaluation rules for plus operator
eval1 ((TmAdd e1 e2),env,k) = (e1,env,(HAdd e2 env):k)
eval1 ((TmInt n),env1,(HAdd e env2):k) = (e,env2,(AddH (TmInt n)) : k)
eval1 ((TmInt m),env,(AddH (TmInt n)):k) = (TmInt (n + m),env,k)

-- Evaluation rules for minus operator
eval1 ((TmMinus e1 e2),env,k) = (e1,env,(HMinus e2 env):k)
eval1 ((TmInt n),env1,(HMinus e2 env2):k) = (e2,env2,(MinusH (TmInt n)) : k)
eval1 ((TmInt m),env,(MinusH (TmInt n)):k) = (TmInt (n - m),env,k)

-- Evaluation rules for minus operator
eval1 ((TmMultiply e1 e2),env,k) = (e1,env,(HMultiply e2 env):k)
eval1 ((TmInt n),env1,(HMultiply e2 env2):k) = (e2,env2,(MultiplyH (TmInt n)) : k)
eval1 ((TmInt m),env,(MultiplyH (TmInt n)):k) = (TmInt (n * m),env,k)

-- Evaluation rules for Equals ('==') operator
eval1 ((TmEqualsInt e1 e2),env,k) = (e1,env,(HEqualsInt e2 env):k)
eval1 ((TmOdd),env1,(HEqualsInt e2 env2):k) = (e2,env2,(EqualsIntH (TmOdd)) : k)
eval1 ((TmEven),env1,(HEqualsInt e2 env2):k) = (e2,env2,(EqualsIntH (TmEven)) : k)
eval1 ((TmInt n),env1,(HEqualsInt e2 env2):k) = (e2,env2,(EqualsIntH (TmInt n)) : k)
eval1 ((TmOdd),env,(EqualsIntH e1):k) = ((unparseCompare $ compareEquals e1 (TmOdd)),env,k)
eval1 ((TmEven),env,(EqualsIntH e1):k) = ((unparseCompare $ compareEquals e1 (TmEven)),env,k)
eval1 ((TmInt n),env,(EqualsIntH e1):k) = ((unparseCompare $ compareEquals e1 (TmInt n)),env,k)

-- Evaluation rules for And ('&&') operator
eval1 ((TmAndInt e1 e2),env,k) = (e1,env,(HAndInt e2 env):k)
eval1 ((TmTrue),env1,(HAndInt e2 env2):k) = (e2,env2,(AndIntH (TmTrue)) : k)
eval1 ((TmFalse),env1,(HAndInt e2 env2):k) = (TmFalse,env2,k)
eval1 ((TmTrue),env,(AndIntH e1):k) = (TmTrue,env,k)
eval1 ((TmFalse),env,(AndIntH e1):k) = (TmFalse,env,k)

-- Evaluation rules for Or ('||') operator
eval1 ((TmOrInt e1 e2),env,k) = (e1,env,(HOrInt e2 env):k)
eval1 ((TmTrue),env1,(HOrInt e2 env2):k) = (TmTrue,env2,k)
eval1 ((TmFalse),env1,(HOrInt e2 env2):k) = (e2,env2,(OrIntH (TmFalse)) : k)
eval1 ((TmTrue),env,(OrIntH e1):k) = (TmTrue,env,k)
eval1 ((TmFalse),env,(OrIntH e1):k) = (TmFalse,env,k)

-- Evaluation rules for Modulo ('%%') operator
eval1 ((TmModulo e1 e2),env,k) = (e1,env,(HModulo e2 env):k)
eval1 ((TmInt n),env1,(HModulo e2 env2):k) = (e2,env2,(ModuloH (TmInt n)) : k)
eval1 ((TmInt m),env,(ModuloH (TmInt n)):k) = ((TmInt  (n `mod` m)) ,env,k)

-- Evaluation rules for if-then-else
eval1 ((TmIf e1 e2 e3),env,k) = (e1,env,(HIf e2 e3 env):k)
eval1 (TmTrue,env1,(HIf e2 e3 env2):k) = (e2,env2,k)
eval1 (TmFalse,env1,(HIf e2 e3 env2):k) = (e3,env2,k)

-- Evaluation rules for Let blocks
eval1 ((TmLet x typ e1 e2),env,k) = (e1,env,(HLet x typ e2 env):k)
eval1 (v,env1,(HLet x typ e env2):k) | isValue v = (e, update env2 x v , k)

-- Evaluation rules for 'for' operator
eval1 ((TmFor e1 e2),env,k) = (e1,env, (ForH e2) : k)
eval1 ((TmBlank n),env,(ForH e2) : k) = ((TmTile n (makeBlank n)),env,(ForH e2) : k)
eval1 ((TmTile (TmInt n) tile),env,(ForH e2) : k) = ((TmTile (TmInt ((forOutSize e2)*n)) (parseForTile tile n e2)),env,k)

-- Evaluation rules for take operator
eval1 ((TmTake e1 e2 e3),env,k) = (e1,env,(HTake e2 e3 env):k)
eval1 ((TmInt x),env1,(HTake e2 e3 env2):k) = (e2,env2,(HHTake (TmInt x) e3 env1) : k)
eval1 ((TmInt y),env1,(HHTake e1 e3 env2):k) = (e3,env2,(TakeH (TmInt y) e1) : k)
eval1 ((TmBlank n),env,(TakeH e1 e2) : k) = eval1 (TmTile n (makeBlank n),env,(TakeH e1 e2) : k)
eval1 ((TmTile n tile),env,(TakeH (TmInt x) (TmInt y)) : k) = (TmTile (TmInt 1) (takeTile n tile x y),env,k)

-- Evaluation rules for input operator
eval1 ((TmInp (TmVar fileName)),env,k) = ((TmInp (TmFile fileName)),env,LengthH : k)
eval1 ((TmInp (TmFile fileName)),env,LengthH : k) = ((TmTile (TmInt (length $ readAndIndex fileName)) (makeInpTile fileName)),env,k)

-- Rule for runtime errors
eval1 (e,env,k) = error "Evaluation Error"

-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && (null k) then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k)

forEvalLoop :: Environment -> Expr -> Expr
forEvalLoop env e = evalLoop' (e,env,[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && (null k) then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k)

-- Function to unparse underlying values from the AST term
unparse :: Expr -> String
unparse (TmInt n)   = show n
unparse TmX         = "X Axis"
unparse TmY         = "Y Axis"
unparse (TmTrue) = "true"
unparse (TmFalse) = "false"
unparse (TmBlank n) = unparse (TmTile n (makeBlank n))
unparse (TmTile (TmInt n) tile) = showTile n tile
unparse _ = "Unknown"

-- Function to display a tile in output, as a string
showTile :: Int -> Expr -> String
showTile n tile = displayTile $ makeTile n (concat $ tileExprToInt tile)

-- Converts tile matrix to "outputable" String
displayTile :: [[Int]] -> String
displayTile tile = trim $ unlines $ map (unwords . map show) tile

trim :: String -> String
trim [] = []
trim (x:xs) = if x == ' ' then trim xs else x : trim xs

-------------------------------------------
--  CONVERSION BETWEEN EXPR and [[INT]]  --
-------------------------------------------

-- Converts the tile Expr to an array of Ints, each of size 1
tileExprToInt :: Expr -> [[Int]]
tileExprToInt (TmCell e1) = tileExprToInt e1
tileExprToInt (TmComma e1 e2) = tileExprToInt e1 ++ tileExprToInt e2
tileExprToInt (TmInt n) = [[n]]

-- Makes the tile into a N*N array
makeTile :: Int -> [Int] -> [[Int]]
makeTile _ [] = []
makeTile n xs = take n xs : makeTile n (drop n xs)

-- Constructs a blank tile of N*N 0s
makeBlank :: Expr -> Expr
makeBlank (TmInt n) = makeExpr n (replicate n (replicate n 0))

-- Unparses the tile from Expr form to matrix form
unparseTile :: Int -> Expr -> [[Int]]
unparseTile n tile = makeTile n (concat $ tileExprToInt tile)

unparseWholeTile :: Expr -> [[Int]]
unparseWholeTile (TmBlank n) = unparseWholeTile (TmTile n $ makeBlank n)
unparseWholeTile (TmTile (TmInt n) tile) = unparseTile n tile

-- Parses back the tile into Expr form from matrix form
makeExpr :: Int -> [[Int]] -> Expr
makeExpr n matrix = TmCell $ makeTmComma n $ map makeTmCell $ makeTile n (concat matrix)
  where makeTmInt n = TmInt n
        makeTmCell row = TmCell $ makeTmComma n $ map makeTmInt row
        makeTmComma n [x] = x
        makeTmComma n (x:xs) = TmComma x $ makeTmComma n xs

--------------------------------------
--          REFLECTION              --
--------------------------------------

reflectTileX :: Expr -> Expr -> Expr
reflectTileX (TmInt n) tile = makeExpr n (reflectX $ unparseTile n tile)

reflectTileY :: Expr -> Expr -> Expr
reflectTileY (TmInt n) tile = makeExpr n (reflectY $ unparseTile n tile)

reflectX :: [[Int]] -> [[Int]]
reflectX = reverse

reflectY :: [[Int]] -> [[Int]]
reflectY = map reverse

--------------------------------------
--          ROTATION                --
--------------------------------------

rotateTile :: Int -> Expr -> Expr -> Expr
rotateTile x (TmInt n) tile = makeExpr n (rotateTileInt x $ unparseTile n tile)

rotateTileInt :: Int -> [[Int]] -> [[Int]]
rotateTileInt n tile = iterate turn90 tile !! (4-n)
  where
    turn90 m = reverse (transposeTile m)

transposeTile :: [[a]] -> [[a]]
transposeTile [] = []
transposeTile ([]:xs) = transposeTile xs
transposeTile ((x:xs):ys) = (x : [h | (h:_) <- ys]) : transposeTile (xs : [t | (_:t) <- ys])

-----------------------------------
--          SCALE                --
-----------------------------------

scaleTile :: Int -> Expr -> Expr -> Expr
scaleTile x (TmInt n) tile = makeExpr n (scaleTileInt x $ unparseTile n tile)

scaleTileInt :: Int -> [[Int]] -> [[Int]]
scaleTileInt n matrix
    | n > 0     = concat [replicate n (concatMap (replicate n) row) | row <- matrix]
    | n < 0     = [take n' (drop (n' * i) (concat matrix)) | i <- [0..n'-1]]
    | otherwise = matrix
    where n' = abs n

scaleInt :: Int -> Expr -> Expr
scaleInt x (TmInt n) = TmInt (x * n)

-------------------------------------
--         AND, NOT, OR            --
-------------------------------------

checkTileSize :: Expr -> Expr -> Bool
checkTileSize (TmInt x1) (TmInt x2) | x1 == x2  = True
                    | otherwise = False

andTile :: Expr -> Expr -> Expr -> Expr
andTile (TmInt n) tile1 tile2 = makeExpr n (tileAnd (unparseTile n tile1) (unparseTile n tile2))

orTile :: Expr -> Expr -> Expr -> Expr
orTile (TmInt n) tile1 tile2 = makeExpr n (tileOr (unparseTile n tile1) (unparseTile n tile2))

notTile :: Expr -> Expr -> Expr
notTile (TmInt n) tile = makeExpr n (tileNot (unparseTile n tile))

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
tileSub (TmInt n) m x y tile = makeExpr m (getSubTile m x y (unparseTile n tile))

getSubTile :: Int -> Int -> Int -> [[Int]] -> [[Int]]
getSubTile m x y matrix
  | x < 0 || y < 0 || x+m > length matrix || y+m > length (head matrix) = error "Invalid coordinates!"
  | otherwise = take m $ drop x $ map (take m . drop y) matrix

--------------------------------
--         COMBINE            --
--------------------------------

combineSize :: Expr -> Expr -> Expr
combineSize (TmInt n1) (TmInt n2) = (TmInt $ n1 + n2)

tileCombine :: Expr -> Expr -> Expr -> Expr -> Expr -> Expr -> Expr -> Expr -> Expr
tileCombine (TmInt n1) (TmInt n2) (TmInt n3) (TmInt n4) tile1 tile2 tile3 tile4 =
  makeExpr (n1 + n2) (getCombineTile (unparseTile n1 tile1) (unparseTile n2 tile2) (unparseTile n3 tile3) (unparseTile n4 tile4))

getCombineTile :: [[Int]] -> [[Int]] -> [[Int]] -> [[Int]] -> [[Int]]
getCombineTile tile1 tile2 tile3 tile4 =
  let n = length tile1
      topRows = zipWith (++) tile1 tile2
      bottomRows = zipWith (++) tile3 tile4
  in topRows ++ bottomRows

checkCombineSize :: Expr -> Expr -> Expr -> Expr -> Bool
checkCombineSize (TmInt n1) (TmInt n2) (TmInt n3) (TmInt n4) = n1 == n2 && n3 == n4 && n1 == n3

combineTileH :: Int -> Expr -> Int -> Expr -> Expr
combineTileH n1 tile1 n2 tile2 = makeExpr (n1+n2) (getCombineTileH (unparseTile n1 tile1) (unparseTile n2 tile2))

combineTileV :: Int -> Expr -> Int -> Expr -> Expr
combineTileV n1 tile1 n2 tile2 = makeExpr (n1) (getCombineTileV (unparseTile n1 tile1) (unparseTile n2 tile2))

getCombineTileH :: [[Int]] -> [[Int]] -> [[Int]]
getCombineTileH tile1 tile2 = zipWith (++) tile1 tile2

getCombineTileV :: [[Int]] -> [[Int]] -> [[Int]]
getCombineTileV tile1 tile2 = tile1 ++ tile2

checkCombineHV :: Int -> Int -> Bool
checkCombineHV n1 n2 = n1 == n2

-------------------------------
--         REPEAT            --
-------------------------------

repeatTileH :: Int -> Int -> Expr -> Expr
repeatTileH x n tile = makeExpr (n*x) (getRepeatH x (unparseTile n tile))

repeatTileV:: Int -> Int -> Expr -> Expr
repeatTileV x n tile = makeExpr n (getRepeatV x (unparseTile n tile))

getRepeatH :: Int -> [[Int]] -> [[Int]]
getRepeatH x tile = map (concat . replicate x) tile

getRepeatV :: Int -> [[Int]] -> [[Int]]
getRepeatV y tile = concat $ replicate y tile

--------------------------------
--         REPLACE            --
--------------------------------

tileReplace :: Int -> Int -> Int -> Expr -> Int -> Expr -> Expr
tileReplace x y m tile1 n tile2 = makeExpr n (getTileReplace x y (unparseTile m tile1) (unparseTile n tile2) )

getTileReplace :: Int -> Int -> [[Int]] -> [[Int]] -> [[Int]]
getTileReplace x y smallMatrix bigMatrix
  | x + (length smallMatrix) > (length bigMatrix) || y + (length smallMatrix) > (length bigMatrix) = error "Invalid replace: smaller tile is outside bigger tile."
  | otherwise =
    let replaceRows = zipWith (\a b -> take x a ++ b ++ drop (x+(length smallMatrix)) a) (drop y bigMatrix) smallMatrix
    in take y bigMatrix ++ replaceRows ++ drop (y+(length smallMatrix)) bigMatrix

----------------------------
--         FOR            --
----------------------------
parseForTile :: Expr -> Int -> Expr -> Expr
parseForTile tile n func
  | (forOutSize func) == 1 = forTile tile n func
  | otherwise = forTile' n func

forTile :: Expr -> Int -> Expr -> Expr
forTile tile n func = makeExpr n (makeTile n (concat $ funUnPack'' 0 0 (n-1) func))

forTile' :: Int -> Expr -> Expr
forTile' n func = makeExpr ((forOutSize func)*n) $ parseForTile' n func

parseForTile' :: Int -> Expr -> [[Int]]
parseForTile' n func = makeTile ((forOutSize func)*n) $ concat $ matrixRealMake' ((forOutSize func)) $ splitEvery ((forOutSize func)*n) $ funUnPack'' 0 0 (n-1) func

funUnPack'' :: Int -> Int -> Int -> Expr -> [[Int]]
funUnPack'' x y n func
  | x /= n && y /= n = (unparseWholeTile (forEvalLoop [("col",(TmInt x)),("row",(TmInt y))] func)) ++ funUnPack'' (x+1) y n func
  | x == n && y /= n = (unparseWholeTile (forEvalLoop [("col",(TmInt x)),("row",(TmInt y))] func)) ++ funUnPack'' 0 (y+1) n func
  | x /= n && y == n = (unparseWholeTile (forEvalLoop [("col",(TmInt x)),("row",(TmInt y))] func)) ++ funUnPack'' (x+1) y n func
  | x == n && y == n = unparseWholeTile (forEvalLoop [("col",(TmInt x)),("row",(TmInt y))] func)

forOutSize :: Expr -> Int
forOutSize func = length $ unparseWholeTile $ forEvalLoop [("col",(TmInt 0)),("row",(TmInt 0))] func

splitEvery :: Int -> [a] -> [[a]]
splitEvery _ [] = []
splitEvery n xs = as : splitEvery n bs
  where (as,bs) = splitAt n xs

matrixRealMake' :: Int -> [[[Int]]] -> [[Int]]
matrixRealMake' n matrix = concatMap (takeAllNth n n) matrix

everyNth :: Int -> [[Int]] -> [[Int]]
everyNth n lst = [x | (i,x) <- zip [0..] lst, i `mod` n == 0 || i `mod` (n*2) == 0]

takeAllNth :: Int -> Int -> [[Int]] -> [[Int]]
takeAllNth 0 m xs = []
takeAllNth n m (x:xs) = everyNth m (x:xs) ++ (takeAllNth (n-1) m (xs ++ [x]))

------------------------------
--         INPUT            --
------------------------------

makeInpTile :: String -> Expr
makeInpTile inpTile = makeExpr (length (readAndIndex inpTile)) (readAndIndex inpTile)

parseInpTile :: String -> [[Int]]
parseInpTile tile = map (map (\c -> if c == '0' then 0 else 1)) (lines tile)

readAndIndex :: FilePath -> [[Int]]
readAndIndex fileName 
   | sizeCheck (length tile) tile = tile
   | otherwise = error "INPUT FILE not in N*N format!"
  where tile = parseInpTile $ unsafePerformIO $ readFile (fileName ++ ".tl")

sizeCheck :: Int -> [[Int]] -> Bool
sizeCheck n tile = length tile == n && all ((==n) . length) tile

------------------------------
--         TAKE            --
------------------------------

takeTile :: Expr -> Expr -> Int -> Int -> Expr
takeTile (TmInt n) tile x y = makeExpr 1 [[(tileTake x y $ unparseTile n tile)]]

tileTake :: Int -> Int -> [[Int]] -> Int
tileTake x y tile
  | x < 0 || y < 0 || x >= (length tile) || y >= (length tile) = error "Coordinates out of bounds"
  | otherwise = tile !! y !! x

--------------------------------
--         COMPARE            --
--------------------------------

compareEquals :: Expr -> Expr -> Bool
compareEquals (TmInt n1) (TmInt n2) = n1 == n2
compareEquals (TmInt n) (TmEven) = even n
compareEquals (TmEven) (TmInt n) = even n
compareEquals (TmInt n) (TmOdd) = odd n
compareEquals (TmOdd) (TmInt n) = odd n
compareEquals (TmEven) (TmEven) = True
compareEquals (TmOdd) (TmOdd) = True

unparseCompare :: Bool -> Expr
unparseCompare True = TmTrue
unparseCompare False = TmFalse