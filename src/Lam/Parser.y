{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser (parseLam) where

import Lam.Lexer qualified as L
import Lam.Expr (Expr(..))

import Data.List (elemIndex)
}

%name parseLam
%tokentype { L.Token }
%error { parseError }

%right "."
  
%token
  lam  { L.Lam }
  var  { L.Var $$ }
  "->" { L.Arrow } 
  "."  { L.Dot }
  "("  { L.LPar }
  ")"  { L.RPar }

%%

Expr : Expr "." Expr { \ctx -> App ($1 ctx) ($3 ctx) }
     | lam var "->" Expr %shift { \ctx -> Lam $2 ($4 ($2 : ctx)) }
     | var { \ctx -> case elemIndex $1 ctx of
                        Just i  -> Var i
                        Nothing -> error "free variable!"
           }
     | ParExpr { \ctx -> ($1 ctx) }

ParExpr : "(" Expr ")" { $2 }

{
parseError :: [L.Token] -> a
parseError _ = error "error while parsing"
}
