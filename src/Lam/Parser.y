{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser (parseLam) where

import Lam.Lexer qualified as L
import Lam.Expr (Expr(..))
}

%name parseLam
%tokentype { L.Token }
%error { parseError }

%left "."
  
%token
  lam  { L.Lam }
  var  { L.Var $$ }
  "->" { L.Arrow } 
  "."  { L.Dot }

%%

Expr : Expr "." Expr { App $1 $3 }
     | lam var "->" Expr %shift { Lam $2 $4 }
     | var { Var $1 }

{
parseError :: [L.Token] -> a
parseError  = error "error while parsing"
}
