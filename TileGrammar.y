{ 
module TileGrammar where 
import TileTokens 
}

%name parseCalc 
%tokentype { TileToken } 
%error { parseError }
%token 
    Axis        { TokenTypeAxis _ }
    Int         { TokenTypeInt _ } 
    Tile        { TokenTypeTile _ }
    Blank       { TokenTypeBlank _ }
    Cell        { TokenTypeCell _ }
    Bool        { TokenTypeBool _ }

    arr         { TokenTypeArr _ } 
    x           { TokenXAxis _ }
    y           { TokenYAxis _ }
    tile        { TokenTile _ }
    blank       { TokenBlank _ }
    true        { TokenTrue _ }
    false       { TokenFalse _ }
    '<'         { TokenLessThan _ }
    '>'         { TokenMoreThan _ }
    '<='        { TokenLessThanEqual _ }
    '>='        { TokenMoreThanEqual _ }
    '+'         { TokenPlus _ }
    '-'         { TokenMinus _ }
    if          { TokenIf _ }
    then        { TokenThen _ }
    else        { TokenElse _ }

    reflect     { TokenReflect _ }
    rotate      { TokenRotate _ }
    scale       { TokenScale _ }
    AND         { TokenAnd _ }
    NOT         { TokenNot _ }
    OR          { TokenOr _ }
    subtile     { TokenSubtile _ }
    combine     { TokenCombine _ }
    combineH     { TokenCombineH _ }
    combineV     { TokenCombineV _ }
    repeatH     { TokenRepeatH _ }
    repeatV     { TokenRepeatV _ }
    replace     { TokenReplace _ }

    length      { TokenLength _ }
    lam         { TokenLambda _ }
    let         { TokenLet _ }
    ':'         { TokenHasType _ }
    '='         { TokenEq _ }
    in          { TokenIn _ }
    '('         { TokenLParen _ } 
    ')'         { TokenRParen _ } 
    '['         { TokenLSquBracket _ } 
    ']'         { TokenRSquBracket _ } 
    ','         { TokenComma _ }
    int         { TokenInt _ $$ } 
    var         { TokenVar _ $$ }

    for         { TokenFor _ }
    ';'         { TokenSemiColon _ }
    col         { TokenCol _ }
    row         { TokenRow _ }


%left arr
%right let
%right in
%right Cell
%nonassoc if then else for
%nonassoc col row
%nonassoc '<' '>' '<=' '>='
%left '+' '-'
%left tile blank
%left repeatH repeatV
%left AND NOT OR
%left reflect rotate scale subtile combine replace
%left combineH combineV
%left length
%left ','
%nonassoc x y int var true false '(' ')' '[' ']' '.' ';'
%left lam
%left APP


%% 
Exp : x                                         { TmX }
    | y                                         { TmY }
    | int                                       { TmInt $1 } 
    | var                                       { TmVar $1 }
    | true                                      { TmTrue }
    | false                                     { TmFalse } 
    | tile Exp Exp                              { TmTile $2 $3 }
    | blank Exp                                 { TmBlank $2 }
    | Exp '<' Exp                               { TmLessThan $1 $3 }
    | Exp '>' Exp                               { TmMoreThan $1 $3 } 
    | Exp '<=' Exp                              { TmLessThanEqual $1 $3 } 
    | Exp '>=' Exp                              { TmMoreThanEqual $1 $3 } 
    | Exp '+' Exp                               { TmAdd $1 $3 }
    | Exp '-' Exp                               { TmMinus $1 $3 }

    | reflect Exp Exp                           { TmReflect $2 $3 }
    | rotate Exp Exp                            { TmRotate $2 $3 }
    | scale Exp Exp                             { TmScale $2 $3 }
    | AND Exp Exp                               { TmAnd $2 $3 }
    | NOT Exp                                   { TmNot $2 }
    | OR Exp Exp                                { TmOr $2 $3 }
    | subtile Exp '(' Exp ',' Exp ')' Exp       { TmSubtile $2 $4 $6 $8 }
    | combine '(' Exp ')' '(' Exp ')' 
    '(' Exp ')' '(' Exp ')'                     { TmCombine $3 $6 $9 $12 }
    | combineH '(' Exp ')' '(' Exp ')'          { TmCombineH $3 $6 }
    | combineV '(' Exp ')' '(' Exp ')'          { TmCombineV $3 $6 }
    | repeatH Exp Exp                           { TmRepeatH $2 $3 }
    | repeatV Exp Exp                           { TmRepeatV $2 $3 }
    | replace '(' Exp ',' Exp ')' Exp Exp       { TmReplace $3 $5 $7 $8 }

    | if Exp then Exp else Exp                  { TmIf $2 $4 $6 } 
    | length Exp                                { TmLength $2 }
    | lam '(' var ':' Type ')' Exp              { TmLambda $3 $5 $7 }
    | let '(' var ':' Type ')' '=' Exp in Exp   { TmLet $3 $5 $8 $10 }
    | Exp Exp %prec APP                         { TmApp $1 $2 } 
    | '(' Exp ')'                               { $2 }
    | '[' Exp ']'                               { TmCell $2 }
    | Exp ',' Exp                               { TmComma $1 $3 }

    | for '(' Exp ';' col ',' row ')' Exp       { TmFor $3 $9 }


Type : Bool                     { TyBool } 
     | Axis                     { TyAxis }
     | Int                      { TyInt }
     | Tile                     { TyTile }
     | Blank                    { TyBlank }
     | Type arr Type            { TyFun $1 $3 }
     | Cell Type                { TyCell $2 }
     | Type ',' Type            { TyComma $1 $3 }


{ 
parseError :: [TileToken] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data TileType = TyInt | TyBool | TyAxis | TyTile | TyBlank | TyCell TileType | TyFun TileType TileType | TyComma TileType TileType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmX | TmY | TmTrue | TmFalse 
            | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmComma Expr Expr
            | TmLessThan Expr Expr | TmMoreThan Expr Expr 
            | TmLessThanEqual Expr Expr | TmMoreThanEqual Expr Expr 
            | TmAdd Expr Expr | TmMinus Expr Expr
            | TmReflect Expr Expr 
            | TmRotate Expr Expr
            | TmScale Expr Expr
            | TmSubtile Expr Expr Expr Expr
            | TmCombine Expr Expr Expr Expr
            | TmCombineH Expr Expr
            | TmCombineV Expr Expr
            | TmRepeatH Expr Expr
            | TmRepeatV Expr Expr
            | TmReplace Expr Expr Expr Expr
            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
            | TmLength Expr | TmIf Expr Expr Expr 
            | TmVar String | TmLet String TileType Expr Expr
            | TmLambda String TileType Expr | TmApp Expr Expr 
            | Cl String TileType Expr Environment

            | TmFor Expr Expr
    deriving (Show,Eq)
}

