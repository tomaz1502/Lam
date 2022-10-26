{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser ( hParseEval
                  , hParseDefine
                  , hParseTypedef
                  , GlobalContext
                  , emptyContext
                  , ctxUnion
                  ) where

import Control.Monad.State
import Data.List (elemIndex)
import Data.Map qualified as M

import Lam.Expr (Expr(..), Type(..), LocalContext)
import Lam.Lexer qualified as L
}

%name hParseTypedef TypedefCommand
%name hParseEval EvalCommand
%name hParseDefine DefineCommand
%tokentype { L.Token }
%error { parseError }
%monad { L.Alex } { >>= } { pure }
%lexer { lexer } { L.EOF }

%left "."
  
%token
  "lam"     { L.Lam       }
  ":"       { L.Colon     }
  "::"      { L.TypeColon }
  ";"       { L.Semicolon }
  ":="      { L.ColonEq   }
  "DEFINE"  { L.Define    }
  "EVAL"    { L.Eval      }
  "TYPEDEF" { L.Typedef   }
  var       { L.Var $$    }
  "->"      { L.Arrow     }
  "=>"      { L.TypeArrow }
  "U"       { L.BaseType  }
  "."       { L.Dot       }
  "("       { L.LPar      }
  ")"       { L.RPar      }
%%

TypedefCommand :: { GlobalContext -> Either String GlobalContext }
  : "TYPEDEF" ":" var ":=" Type ";"
    { \globalCtx ->
        $5 globalCtx >>= \t ->
          let bExprs = boundExprs globalCtx
              bTypes = M.insert $3 t (boundTypes globalCtx)
          in  Right (GlobalContext bTypes bExprs)
    }

-- we allow name shadowing
DefineCommand :: { GlobalContext -> Either String GlobalContext }
  : "DEFINE" ":" var ":=" Expr ";"
    { \globalCtx ->
        $5 globalCtx [] >>= \e ->
            let bTypes = boundTypes globalCtx
                bExprs = M.insert $3 e (boundExprs globalCtx)
            in  Right (GlobalContext bTypes bExprs)
    }

EvalCommand :: { GlobalContext -> Either String Expr }
  : "EVAL" ":" Expr ";" { \globalCtx -> $3 globalCtx [] }

Expr :: { GlobalContext -> LocalContext -> Either String Expr }
  : Expr "." Expr { \global local -> $1 global local >>= \e1 ->
                                     $3 global local >>= \e2 ->
                                       Right (App e1 e2)
                  }
  | "lam" var "::" Type "->" Expr %shift
    { \global local ->
        $6 global ($2 : local) >>= \e ->
        $4 global >>= \t ->
          Right (Lam $2 t e)
    }
  | var { \global local ->
            case elemIndex $1 local of
              Just i  -> Right $ Var i
              Nothing -> let bExprs = boundExprs global
                         in case M.lookup $1 bExprs of
                              Just e  -> Right e
                              Nothing -> Left $ "free variable: " <> $1
        }
  | ParExpr { $1 }

ParExpr : "(" Expr ")" { $2 }

Type :: { GlobalContext -> Either String Type }
  : Type "=>" Type { \globalCtx ->
                       $1 globalCtx >>= \t1 ->
                       $3 globalCtx >>= \t3 ->
                         Right (Arrow t1 t3)
                   }
  | "U" { \_ -> Right U }
  | var { \globalCtx ->
            let bTypes = boundTypes globalCtx
            in  case M.lookup $1 bTypes of
                  Just e  -> Right e
                  Nothing -> Left $ "undefined type: " <> $1
        }
  | ParType { $1 }

ParType : "(" Type ")" { $2 }

{
data GlobalContext = GlobalContext
    { boundTypes :: M.Map String Type
    , boundExprs :: M.Map String Expr
    }

emptyContext :: GlobalContext
emptyContext = GlobalContext M.empty M.empty

ctxUnion :: GlobalContext -> GlobalContext -> GlobalContext
ctxUnion ctx1 ctx2 =
    let bTypes1 = boundTypes ctx1
        bTypes2 = boundTypes ctx2
        bExprs1 = boundExprs ctx1
        bExprs2 = boundExprs ctx2
    in  GlobalContext (M.union bTypes1 bTypes2) (M.union bExprs1 bExprs2)

lexer :: (L.Token -> L.Alex a) -> L.Alex a
lexer = (=<< L.alexMonadScan)

parseError :: L.Token -> a
parseError t = error $ "error while parsing " ++ (show t)
}
