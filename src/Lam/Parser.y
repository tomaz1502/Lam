{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser (parseLam) where

import Lam.Lexer qualified as L
import Lam.Expr (Expr(..))
import Lam.Prog (Prog(..), Statement(..))

import Data.List (elemIndex)
}

%name parseLam
%tokentype { L.Token }
%error { parseError }
%monad { L.Alex } { >>= } { pure }
%lexer { lexer } { L.EOF }

%right "."
  
%token
  lam    { L.Lam }
  eval   { L.Eval }
  colon  { L.Colon }
  semicolon { L.Semicolon }
  define { L.Define }
  var    { L.Var $$ }
  "->"   { L.Arrow }
  "."    { L.Dot }
  "("    { L.LPar }
  ")"    { L.RPar }
  eof    { L.EOF }
%%

Prog : Command semicolon Prog { Prog ($1 : (stms $3)) }
     |    { Prog [] }

Command : DefineCommand { Eval $1 }
        | EvalCommand   { Eval $1 }

DefineCommand : define colon Expr { $3 [] }

EvalCommand : eval colon Expr { $3 [] }

Expr : Expr "." Expr { \ctx -> App ($1 ctx) ($3 ctx) }
     | lam var "->" Expr %shift { \ctx -> Lam $2 ($4 ($2 : ctx)) }
     | var { \ctx -> case elemIndex $1 ctx of
                        Just i  -> Var i
                        Nothing -> error $ "free variable! " ++ $1
           }
     | ParExpr { \ctx -> ($1 ctx) }

ParExpr : "(" Expr ")" { $2 }

{

lexer :: (L.Token -> L.Alex a) -> L.Alex a
lexer = (=<< L.alexMonadScan)

parseError :: L.Token -> a
parseError t = error $ "error while parsing " ++ (show t)
}
