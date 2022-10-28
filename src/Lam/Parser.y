{
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Parser ( hParseCommand
                  , hParseProg
                  , hParseUntypedCommand
                  , hParseUntypedProg
                  , parseProg
                  , parseCommand
                  , Command(..)
                  ) where

import Control.Monad.State
import Data.List (elemIndex)
import Data.Map qualified as M

import Lam.Expr (RawExpr(..), RawType(..), Id)
import Lam.Lexer qualified as L
}

%name hParseUntypedProg UntypedProgram
%name hParseUntypedCommand UntypedCommand
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


UntypedProgram :: { [Command] }
  : UntypedCommand UntypedProgram { $1 : $2 }
  | { [] }

UntypedCommand :: { Command }
  : UntypedDefineCommand { DefineC $1  }
  | UntypedEvalCommand { EvalC $1  }
  | LoadCommand { LoadC $1 }

UntypedDefineCommand :: { (Id, RawExpr) }
  : "DEFINE" ":" var ":=" UntypedRawExpr ";" { ($3, $5) }

UntypedEvalCommand :: { RawExpr }
  : "EVAL" ":" UntypedRawExpr ";" { $3 }

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

UntypedRawExpr :: { RawExpr }
  : UntypedRawExpr "." UntypedRawExpr { RawApp $1 $3  }
  | "lam" var "->" UntypedRawExpr %shift
    { RawLam $2 RawU $4 }
  | var { RawVar $1 }
  | UntypedParExpr { $1 }

UntypedParExpr : "(" UntypedRawExpr ")" { $2 }

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

data Command =
    TypedefC (Id, RawType)
  | DefineC (Id, RawExpr)
  | EvalC RawExpr
  | LoadC String

getParser :: L.Alex a -> String -> a
getParser f s =
    case L.runAlex s f of
      Left err -> error ("parsing error:" <> err)
      Right p  -> p

parseCommand :: Bool -> String -> Command
parseCommand untyped =
  if untyped then
    getParser hParseUntypedCommand
  else getParser hParseCommand

parseProg :: Bool -> String -> [Command]
parseProg untyped =
  if untyped then
    getParser hParseUntypedProg
  else getParser hParseProg


}
