{
  module Lam.Lexer (Token(..), alexScanTokens) where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
@id = $alpha[$alpha$digit]*

tokens :-
<0> $white+ ;
<0> "->" { \_ -> Arrow }
<0> "."  { \_ -> Dot }
<0> "lam" { \_ -> Lam }
<0> "("   { \_ -> LPar }
<0> ")"   { \_ -> RPar }
<0> @id   { \s -> Var s }

{
data Token =
    Arrow
  | Dot
  | Lam
  | Var String
  | LPar
  | RPar
  deriving Show
}
