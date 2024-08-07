{
module Lam.Parser.Parser where

import Control.Monad.State
import Data.List (elemIndex)
import Data.Map qualified as M

import Lam.Command
import Lam.Data
import Lam.Parser.Lexer qualified as L
}

%name hParseUntypedProg UntypedProgram
%name hParseUntypedCommand UntypedCommand
%name hParseProg Program
%name hParseCommand Command
%name hParseExpr RawExpr
%name hParseUntypedExpr UntypedRawExpr
%tokentype { L.Token }
%error { parseError }
%monad { L.Alex } { >>= } { pure }
%lexer { lexer } { L.EOF }

%left "."
%right "=>"
%left "&&" "||"
%left "+" "-"
%left "*"
%right "!"
%right "if" "then" "else"

%token
  "lam"     { L.Lam        }
  ":"       { L.Colon      }
  "::"      { L.TypeColon  }
  ";"       { L.Semicolon  }
  ":="      { L.ColonEq    }
  "DEFINE"  { L.Define     }
  "EVAL"    { L.Eval       }
  "TYPEDEF" { L.Typedef    }
  "LOAD"    { L.Load       }
  var       { L.Var $$     }
  "->"      { L.Arrow      }
  "=>"      { L.TypeArrow  }
  "U"       { L.BaseType   }
  "Int"     { L.IntType    }
  "Bool"    { L.BoolType   }
  "."       { L.Dot        }
  ","       { L.Comma      }
  "("       { L.LPar       }
  ")"       { L.RPar       }
  path      { L.Path $$    }
  number    { L.NumVal $$  }
  boolean   { L.BoolVal $$ }
  "+"       { L.Plus       }
  "-"       { L.Minus      }
  "*"       { L.Mult       }
  "&&"      { L.And        }
  "||"      { L.Or         }
  "!"       { L.Not        }
  "if"      { L.If         }
  "then"    { L.Then       }
  "else"    { L.Else       }
%%


UntypedProgram :: { [Command] }
  : UntypedCommand UntypedProgram { $1 : $2 }
  | -- EMPTY
    { [] }

UntypedCommand :: { Command }
  : UntypedDefineCommand { DefineC $1  }
  | UntypedEvalCommand   { EvalC $1  }
  | LoadCommand          { LoadC $1 }
  -- we allow this here but throw an error later
  | TypedefCommand       { TypedefC $1 }

UntypedDefineCommand :: { (Id, RawExpr) }
  : "DEFINE" var ":=" UntypedRawExpr ";" { ($2, $4) }

UntypedEvalCommand :: { RawExpr }
  : "EVAL" ":" UntypedRawExpr ";" { $3 }

Program :: { [Command] }
  : Command Program { $1 : $2 }
  | { [] }

Command :: { Command }
  : TypedefCommand { TypedefC $1 }
  | DefineCommand  { DefineC $1 }
  | EvalCommand    { EvalC $1 }
  | LoadCommand    { LoadC $1 }

TypedefCommand :: { (Id, RawType) }
  : "TYPEDEF" var ":=" RawType ";"
    { ($2, $4) }

-- we allow name shadowing
DefineCommand :: { (Id, RawExpr) }
  : "DEFINE" var ":=" RawExpr ";" { ($2, $4) }

EvalCommand :: { RawExpr }
  : "EVAL" ":" RawExpr ";" { $3 }

LoadCommand :: { String }
  : "LOAD" ":" path ";" { init (tail $3) {- Removes quotes -} }
  -- yes i will change that later to FilePath thank you

UntypedRawExpr :: { RawExpr }
  : UntypedRawExpr "." UntypedRawExpr { RawApp $1 $3  }
  | "lam" CommaSeparatedIdents "->" UntypedRawExpr %shift
    { joinLams $2 RawU $4 }
  | var { RawVar $1 }
  | UntypedParExpr { $1 }

UntypedParExpr : "(" UntypedRawExpr ")" { $2 }

RawExpr :: { RawExpr }
  : RawExpr "." RawExpr { RawApp $1 $3  }
  | "lam" CommaSeparatedIdents "::" RawType "->" RawExpr %shift
    { joinLams $2 $4 $6 }
  | var { RawVar $1 }
  | number { RawNumVal $1 }
  | boolean { RawBoolVal $1 }
  | RawExpr "+" RawExpr { RawApp (RawApp (RawPrimE PlusPrim) $1) $3 }
  | RawExpr "-" RawExpr { RawApp (RawApp (RawPrimE MinusPrim) $1) $3 }
  | RawExpr "*" RawExpr { RawApp (RawApp (RawPrimE MultPrim) $1) $3 }
  | RawExpr "&&" RawExpr { RawApp (RawApp (RawPrimE AndPrim) $1) $3 }
  | RawExpr "||" RawExpr { RawApp (RawApp (RawPrimE OrPrim) $1) $3 }
  | "!" RawExpr { RawApp (RawPrimE NotPrim) $2 }
  | "if" RawExpr "then" RawExpr "else" RawExpr { RawIte $2 $4 $6 }
  | ParExpr { $1 }

ParExpr : "(" RawExpr ")" { $2 }

RawType :: { RawType }
  : RawType "=>" RawType { RawArrow $1 $3 }
  | "U" { RawU }
  | "Int" { RawIntT }
  | "Bool" { RawBoolT }
  | var { FreeType $1 }
  | ParType { $1 }

ParType : "(" RawType ")" { $2 }

CommaSeparatedIdents :: { [Id] }
  : var "," CommaSeparatedIdents { $1 : $3 }
  | var { [$1] }
{
lexer :: (L.Token -> L.Alex a) -> L.Alex a
lexer = (=<< L.alexMonadScan)

parseError :: L.Token -> L.Alex a
parseError t = L.alexMonad (\_ -> Left ("Error reading the token: " <> (show t)))

getParser :: L.Alex a -> String -> Either String a
getParser f s = L.runAlex s f

joinLams :: [Id] -> RawType -> RawExpr -> RawExpr
joinLams names ty body =
  foldr (`RawLam` ty) body names
}
