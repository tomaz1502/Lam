{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser ( hParseEval
                  , hParseDefine
                  , GlobalContext
                  , emptyContext
                  ) where

import Control.Monad.State
import Data.List (elemIndex)
import Data.Map qualified  as M

import Lam.Expr (Expr(..), LocalContext)
import Lam.Lexer qualified as L
import Lam.Type
}

%name hParseEval EvalCommand
%name hParseDefine DefineCommand
%tokentype { L.Token }
%error { parseError }
%monad { L.Alex } { >>= } { pure }
%lexer { lexer } { L.EOF }

%left "."
  
%token
  "lam"     { L.Lam       }
  "eval"    { L.Eval      }
  ":"       { L.Colon     }
  ";"       { L.Semicolon }
  "="       { L.Equals    }
  "define"  { L.Define    }
  var       { L.Var $$    }
  "->"      { L.Arrow     }
  "=>"      { L.TypeArrow }
  "U"       { L.BaseType  }
  "."       { L.Dot       }
  "("       { L.LPar      }
  ")"       { L.RPar      }
%%

-- we allow name shadowing
DefineCommand :: { GlobalContext -> Either String GlobalContext }
  : "define" var ":" "=" Expr ";"
    { \globalCtx -> 
        case $5 globalCtx [] of
          Right e  -> Right $ M.insert $2 e globalCtx  
          Left err -> Left err
    }

EvalCommand :: { GlobalContext -> Either String Expr }
  : "eval" ":" Expr ";" { \globalCtx -> $3 globalCtx [] }

Expr :: {  GlobalContext -> LocalContext -> Either String Expr }
  : Expr "." Expr { \global local -> $1 global local >>= \e1 ->
                                     $3 global local >>= \e2 ->
                                     Right (App e1 e2)
                  }
    | "lam" var ":" Type "->" Expr %shift
        { \global local ->
            ($6 global ($2 : local)) >>= \e ->
            Right (Lam $2 $4 e)
        }
  | var { \global local ->
            case elemIndex $1 local of
              Just i  -> Right $ Var i
              Nothing -> case M.lookup $1 global of
                           Just e  -> Right e
                           Nothing -> Left $ "free variable: " <> $1
        }
  | ParExpr { $1 }

ParExpr : "(" Expr ")" { $2 }

Type :: { Type }
  : Type "=>" Type { Arrow $1 $3 }
  | "U" { U }
  | ParType { $1 }

ParType :: { Type }
  : "(" Type ")" { $2 }

{
type GlobalContext = M.Map String Expr

emptyContext :: GlobalContext
emptyContext = M.empty

lexer :: (L.Token -> L.Alex a) -> L.Alex a
lexer = (=<< L.alexMonadScan)

parseError :: L.Token -> a
parseError t = error $ "error while parsing " ++ (show t)
}
