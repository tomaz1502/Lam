{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser ( hParseCommand
                  , hParseProg
                  ) where

import Control.Monad.State
import Data.List (elemIndex)
import Data.Map qualified as M

import Lam.Expr (RawExpr(..), RawType(..), Id, Command(..))
import Lam.Lexer qualified as L
}

%name hParseProg Program
%name hParseCommand Command
%tokentype { L.Token }
%error { parseError }
%monad { L.Alex } { >>= } { pure }
%lexer { lexer } { L.EOF }

%left "."
%right "=>"

%token
  "lam"     { L.Lam       }
  ":"       { L.Colon     }
  "::"      { L.TypeColon }
  ";"       { L.Semicolon }
  ":="      { L.ColonEq   }
  "DEFINE"  { L.Define    }
  "EVAL"    { L.Eval      }
  "TYPEDEF" { L.Typedef   }
  "LOAD"    { L.Load      }
  var       { L.Var $$    }
  "->"      { L.Arrow     }
  "=>"      { L.TypeArrow }
  "U"       { L.BaseType  }
  "."       { L.Dot       }
  "("       { L.LPar      }
  ")"       { L.RPar      }
%%

Program :: { [Command] }
  : Command Program { $1 : $2 }
  | { [] }

Command :: { Command }
  : TypedefCommand { TypedefC $1 }
  | DefineCommand { DefineC $1 }
  | EvalCommand { EvalC $1 }
  | LoadCommand { LoadC $1 }

TypedefCommand :: { (Id, RawType) }
  : "TYPEDEF" ":" var ":=" RawType ";"
    { ($3, $5) }

-- we allow name shadowing
DefineCommand :: { (Id, RawExpr) }
  : "DEFINE" ":" var ":=" RawExpr ";" { ($3, $5) }

EvalCommand :: { RawExpr }
  : "EVAL" ":" RawExpr ";" { $3 }

LoadCommand :: { String }
  : "LOAD" ":" var ";" { $3 }
  -- yes i will change that later to FilePath thank you

RawExpr :: { RawExpr }
  : RawExpr "." RawExpr { RawApp $1 $3  }
  | "lam" var "::" RawType "->" RawExpr %shift
    { RawLam $2 $4 $6 }
  | var { RawVar $1 }
  | ParExpr { $1 }

ParExpr : "(" RawExpr ")" { $2 }

RawType :: { RawType }
  : RawType "=>" RawType { RawArrow $1 $3 }
  | "U" { RawU }
  | var { FreeType $1 }
  | ParType { $1 }

ParType : "(" RawType ")" { $2 }

{
lexer :: (L.Token -> L.Alex a) -> L.Alex a
lexer = (=<< L.alexMonadScan)

parseError :: L.Token -> a
parseError t = error $ "error while parsing " ++ (show t)
}
