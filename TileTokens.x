{ 
module TileTokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
  $white+        ; 
  "--".*         ;

  Axis           { tok (\p s -> TokenTypeAxis p) }
  "->"           { tok (\p s -> TokenTypeArr p) }
  \,             { tok (\p s -> TokenComma p) }
  \.             { tok (\p s -> TokenDot p) }
  $digit+        { tok (\p s -> TokenInt p (read s)) }
  x              { tok (\p s -> TokenXAxis p) }
  y              { tok (\p s -> TokenYAxis p) }
  tile           { tok (\p s -> TokenTile p) }
  blank          { tok (\p s -> TokenBlank p) }

  reflect        { tok (\p s -> TokenReflect p) }
  rotate         { tok (\p s -> TokenRotate p) }
  scale          { tok (\p s -> TokenScale p) }
  NOT            { tok (\p s -> TokenNot p) }
  AND            { tok (\p s -> TokenAnd p) }
  OR             { tok (\p s -> TokenOr p) }
  subtile        { tok (\p s -> TokenSubtile p) }
  combine        { tok (\p s -> TokenCombine p) }
  repeatH        { tok (\p s -> TokenRepeatH p) }
  repeatV        { tok (\p s -> TokenRepeatV p) }
  replace        { tok (\p s -> TokenReplace p) }

  Int            { tok (\p s -> TokenTypeInt p) }
  Tile           { tok (\p s -> TokenTypeTile p) }
  Blank          { tok (\p s -> TokenTypeBlank p) }
  Cell           { tok (\p s -> TokenTypeCell p) }

  length         { tok (\p s -> TokenLength p) }
  \:             { tok (\p s -> TokenHasType p) }
  let            { tok (\p s -> TokenLet p ) }
  =              { tok (\p s -> TokenEq p ) }
  in             { tok (\p s -> TokenIn p ) }

  \\             { tok (\p s -> TokenLambda p) }
  \(             { tok (\p s -> TokenLParen p) }
  \)             { tok (\p s -> TokenRParen p) }
  \[             { tok (\p s -> TokenLSquBracket p) }
  \]             { tok (\p s -> TokenRSquBracket p) }
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) } 

{ 
-- Each action has type :: AlexPosn -> String -> MDLToken 

-- Helper function
tok f p s = f p s

-- The token type: 
data TileToken = 
  TokenTypeAxis AlexPosn         |
  TokenXAxis AlexPosn            |
  TokenYAxis AlexPosn            |
  TokenTypeArr  AlexPosn         |
  TokenTile AlexPosn             |
  TokenBlank AlexPosn            |
  TokenReflect AlexPosn          |
  TokenRotate AlexPosn           |
  TokenScale AlexPosn            |
  TokenAnd AlexPosn              |
  TokenNot AlexPosn              |
  TokenOr AlexPosn               |
  TokenSubtile AlexPosn          |
  TokenCombine AlexPosn          |
  TokenRepeatH AlexPosn          |
  TokenRepeatV AlexPosn          |
  TokenReplace AlexPosn          |

  TokenTypeInt  AlexPosn         | 
  TokenTypeTile AlexPosn         |
  TokenTypeBlank AlexPosn        |
  TokenInt AlexPosn Int          | 
  TokenTypeCell AlexPosn         |

  TokenLength AlexPosn           |
  TokenLambda AlexPosn           |
  TokenHasType AlexPosn          |
  TokenLet AlexPosn              |
  TokenEq AlexPosn               |
  TokenIn AlexPosn               |
  TokenLParen AlexPosn           |
  TokenRParen AlexPosn           |
  TokenLSquBracket AlexPosn      |
  TokenRSquBracket AlexPosn      |
  TokenComma AlexPosn            |
  TokenDot AlexPosn              |
  TokenVar AlexPosn String
  deriving (Eq,Show) 


tokenPosn :: TileToken -> String
tokenPosn (TokenTypeAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenXAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenYAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeArr  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBlank (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReflect (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRotate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenScale (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSubtile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCombine (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRepeatH (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRepeatV (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReplace (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenTypeInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeTile  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeBlank (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeCell (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLambda (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenHasType (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLSquBracket (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRSquBracket (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}