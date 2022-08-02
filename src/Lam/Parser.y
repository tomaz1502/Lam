{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser (parseLam) where

import Lam.Lexer qualified as L
import Lam.Expr (RawExpr(..))
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

Expr : Expr "." Expr { RawApp $1 $3 }
     | lam var "->" Expr %shift { RawLam $2 $4 }
     | var { RawVar $1 }
     | ParExpr { $1 }

ParExpr : "(" Expr ")" { $2 }

{
parseError :: [L.Token] -> a
parseError  = error "error while parsing"
}
