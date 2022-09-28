{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser (parseLam) where

import Lam.Lexer qualified as L
import Lam.Expr (Expr(..))
import Lam.Program (Program, GlobalContext)

import Data.List (elemIndex)
import qualified Data.Map as M

}

%name parseLam
%tokentype { L.Token }
%error { parseError }
%monad { L.Alex } { >>= } { pure }
%lexer { lexer } { L.EOF }

%right "."
  
%token
  "lam"     { L.Lam       }
  "eval"    { L.Eval      }
  ":"       { L.Colon     }
  ";"       { L.Semicolon }
  "="       { L.Equals    }
  "define"  { L.Define    }
  var       { L.Var $$    }
  "->"      { L.Arrow     }
  "."       { L.Dot       }
  "("       { L.LPar      }
  ")"       { L.RPar      }
  eof       { L.EOF       }
%%

-- (TODO: obviously this is could be much simpler with State)
Prog :: { GlobalContext -> ([Maybe Expr], GlobalContext) }
  : Command ";" Prog { \globalCtx ->
                         let (e, globalCtx') = $1 globalCtx
                             (es, globalCtx'') = $3 globalCtx'
                         in  (e : es, globalCtx'')
                     }
  | { \globalCtx -> ([], globalCtx) }

Command :: { GlobalContext -> (Maybe Expr, GlobalContext) }
 : DefineCommand { \globalCtx -> (Nothing, $1 globalCtx) }
 | EvalCommand   { \globalCtx -> (Just ($1 globalCtx), globalCtx) }

-- we allow name shadowing
DefineCommand :: { GlobalContext -> GlobalContext }
  : "define" var ":" "=" Expr { \globalCtx -> M.insert $2 ($5 globalCtx []) globalCtx  }

EvalCommand :: { GlobalContext -> Expr }
  : "eval" ":" Expr { \globalCtx -> $3 globalCtx [] }

Expr :: {  GlobalContext -> LocalContext -> Expr }
  : Expr "." Expr { \global local -> App ($1 global local) ($3 global local) }
  | "lam" var "->" Expr %shift { \global local -> Lam $2 ($4 global ($2 : local)) }
  | var { \global local -> -- TODO: rewrite using maybe monad
            case elemIndex $1 local of
              Just i  -> Var i
              Nothing ->
                case M.lookup $1 global of
                  Just e  -> e
                  Nothing -> error $ "free variable! " ++ $1
        }
  | ParExpr { $1 }

ParExpr : "(" Expr ")" { $2 }

{
type LocalContext = [String]

lexer :: (L.Token -> L.Alex a) -> L.Alex a
lexer = (=<< L.alexMonadScan)

parseError :: L.Token -> a
parseError t = error $ "error while parsing " ++ (show t)
}
