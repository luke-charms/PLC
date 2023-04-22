{ 
module TileTokens where 
}

%wrapper "posn" 
$digit = 0-9      -- digits 
$alpha = [a-zA-Z] -- alphabetic characters

tokens :-
  $white+        ; 
  "--".*         ;

  $digit+        { tok (\p s -> TokenInt p (read s)) }
  x              { tok (\p s -> TokenXAxis p) }
  y              { tok (\p s -> TokenYAxis p) }
  tile           { tok (\p s -> TokenTile p) }
  blank          { tok (\p s -> TokenBlank p) }
  true           { tok (\p s -> TokenTrue p) }
  false          { tok (\p s -> TokenFalse p) }
  \<             { tok (\p s -> TokenLessThan p) }
  \>             { tok (\p s -> TokenMoreThan p) }
  \<=            { tok (\p s -> TokenLessThanEqual p) }
  \>=            { tok (\p s -> TokenMoreThanEqual p) }
  \+             { tok (\p s -> TokenPlus p) }
  \-             { tok (\p s -> TokenMinus p) }
  \,             { tok (\p s -> TokenComma p) }
  if             { tok (\p s -> TokenIf p) }
  then           { tok (\p s -> TokenThen p) }
  else           { tok (\p s -> TokenElse p) }
  input          { tok (\p s -> TokenInput p) }

  reflect        { tok (\p s -> TokenReflect p) }
  rotate         { tok (\p s -> TokenRotate p) }
  scale          { tok (\p s -> TokenScale p) }
  NOT            { tok (\p s -> TokenNot p) }
  AND            { tok (\p s -> TokenAnd p) }
  OR             { tok (\p s -> TokenOr p) }
  subtile        { tok (\p s -> TokenSubtile p) }
  combine        { tok (\p s -> TokenCombine p) }
  combineH       { tok (\p s -> TokenCombineH p) }
  combineV       { tok (\p s -> TokenCombineV p) }
  repeatH        { tok (\p s -> TokenRepeatH p) }
  repeatV        { tok (\p s -> TokenRepeatV p) }
  replace        { tok (\p s -> TokenReplace p) }
  length         { tok (\p s -> TokenLength p) }
  take           { tok (\p s -> TokenTake p) }

  Int            { tok (\p s -> TokenTypeInt p) }
  Tile           { tok (\p s -> TokenTypeTile p) }
  Cell           { tok (\p s -> TokenTypeCell p) }
  Bool           { tok (\p s -> TokenTypeBool p)} 
  Axis           { tok (\p s -> TokenTypeAxis p) }
  File           { tok (\p s -> TokenTypeFile p) }

  \:             { tok (\p s -> TokenHasType p) }
  let            { tok (\p s -> TokenLet p ) }
  =              { tok (\p s -> TokenEq p ) }
  in             { tok (\p s -> TokenIn p ) }
  \&\&           { tok (\p s -> TokenAndInt p ) }
  \|\|           { tok (\p s -> TokenOrInt p ) }
  \=\=           { tok (\p s -> TokenEqualsInt p ) }
  odd            { tok (\p s -> TokenOdd p ) }
  even           { tok (\p s -> TokenEven p ) }

  \(             { tok (\p s -> TokenLParen p) }
  \)             { tok (\p s -> TokenRParen p) }
  \[             { tok (\p s -> TokenLSquBracket p) }
  \]             { tok (\p s -> TokenRSquBracket p) }

  for            { tok (\p s -> TokenFor p) }
  \;             { tok (\p s -> TokenSemiColon p) }
  col            { tok (\p s -> TokenCol p) }
  row            { tok (\p s -> TokenRow p) }

  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) } 

{ 

-- Helper function
tok f p s = f p s

-- The type of the token: 
data TileToken = 

  TokenInt AlexPosn Int          | 
  TokenVar AlexPosn String       |
  TokenXAxis AlexPosn            |
  TokenYAxis AlexPosn            |
  TokenTile AlexPosn             |
  TokenBlank AlexPosn            |
  TokenTrue AlexPosn             |
  TokenFalse AlexPosn            |
  TokenLessThan AlexPosn         |
  TokenMoreThan AlexPosn         |
  TokenLessThanEqual AlexPosn    |
  TokenMoreThanEqual AlexPosn    |
  TokenPlus AlexPosn             |
  TokenMinus AlexPosn            |
  TokenComma AlexPosn            |
  TokenIf AlexPosn               |
  TokenThen AlexPosn             |
  TokenElse AlexPosn             |
  TokenInput AlexPosn            |

  TokenReflect AlexPosn          |
  TokenRotate AlexPosn           |
  TokenScale AlexPosn            |
  TokenAnd AlexPosn              |
  TokenNot AlexPosn              |
  TokenOr AlexPosn               |
  TokenSubtile AlexPosn          |
  TokenCombine AlexPosn          |
  TokenCombineH AlexPosn         |
  TokenCombineV AlexPosn         |
  TokenRepeatH AlexPosn          |
  TokenRepeatV AlexPosn          |
  TokenReplace AlexPosn          |
  TokenLength AlexPosn           |
  TokenTake AlexPosn             |

  TokenTypeInt  AlexPosn         | 
  TokenTypeBool AlexPosn         | 
  TokenTypeTile AlexPosn         |
  TokenTypeCell AlexPosn         |
  TokenTypeAxis AlexPosn         |
  TokenTypeFile AlexPosn         |

  TokenHasType AlexPosn          |
  TokenLet AlexPosn              |
  TokenEq AlexPosn               |
  TokenIn AlexPosn               |
  TokenAndInt AlexPosn           |
  TokenOrInt AlexPosn            |
  TokenEqualsInt AlexPosn        |
  TokenOdd AlexPosn              |
  TokenEven AlexPosn             |

  TokenLParen AlexPosn           |
  TokenRParen AlexPosn           |
  TokenLSquBracket AlexPosn      |
  TokenRSquBracket AlexPosn      |

  TokenFor AlexPosn              |
  TokenSemiColon AlexPosn        |
  TokenCol AlexPosn              |
  TokenRow AlexPosn
  deriving (Eq,Show) 


tokenPosn :: TileToken -> String
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenXAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenYAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBlank (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThan  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMoreThan  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThanEqual  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMoreThanEqual  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInput (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenReflect (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRotate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenScale (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSubtile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCombine (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCombineH (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCombineV (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRepeatH (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRepeatV (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReplace (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTake (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenTypeAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeTile  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeCell (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeFile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenHasType (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAndInt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOrInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEqualsInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOdd  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEven  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLSquBracket (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRSquBracket (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenFor (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSemiColon (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCol (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRow (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}