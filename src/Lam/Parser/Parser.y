{
module Lam.Parser.Parser where

import Control.Monad.State
import Data.List (elemIndex)
import Data.Map qualified as M

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

-- Lowest priority to highest priority
%right "else"
%left "."
%right "=>"
%left "<" ">"
%left "&&" "||"
%left "+" "-"
%right "+T"
%left "*"
%right "*T"
%left "!"
%left "proj1"
%left "proj2"
%left "inl"
%left "inr"

%token
  "lam"     { L.Lam        }
  ":"       { L.Colon      }
  "::"      { L.TypeColon  }
  ";"       { L.Semicolon  }
  ":="      { L.ColonEq    }
  "DEFINE"  { L.Define     }
  "EVAL"    { L.Eval       }
  "EXIT"    { L.Exit       }
  "TYPEDEF" { L.Typedef    }
  "LOAD"    { L.Load       }
  "READ"    { L.Read       }
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
  "*"       { L.Prod       }
  "&&"      { L.And        }
  "||"      { L.Or         }
  "!"       { L.Not        }
  "if"      { L.If         }
  "then"    { L.Then       }
  "else"    { L.Else       }
  "proj1"   { L.Proj1      }
  "proj2"   { L.Proj2      }
  "<"       { L.LTTok      }
  ">"       { L.GTTok      }
  "inl"     { L.Inl        }
  "inr"     { L.Inr        }
  "case"    { L.Case       }
  "of"      { L.Of         }
  "|"       { L.Pipe       }
  "as"      { L.As         }
  "+T"      { L.PlusT      }
  "*T"      { L.ProdT      }
%%


UntypedProgram :: { [Command] }
  : UntypedCommand UntypedProgram { $1 : $2 }
  | -- EMPTY
    { [] }

UntypedCommand :: { Command }
  : UntypedDefineCommand { DefineC $1  }
  | UntypedEvalCommand   { EvalC $1  }
  | LoadCommand          { LoadC $1 }
  | ReadCommand          { ReadC $1 }
  | ExitCommand          { ExitC }
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
  | ReadCommand    { ReadC $1 }
  | ExitCommand    { ExitC }

TypedefCommand :: { (Id, RawTypeL) }
  : "TYPEDEF" var ":=" RawTypeL ";"
    { ($2, $4) }

-- we allow name shadowing
DefineCommand :: { (Id, RawExpr) }
  : "DEFINE" var ":=" RawExpr ";" { ($2, $4) }

EvalCommand :: { RawExpr }
  : "EVAL" ":" RawExpr ";" { $3 }

LoadCommand :: { String }
  : "LOAD" ":" path ";" { init (tail $3) {- Removes quotes -} }
  -- yes i will change that later to FilePath thank you

ReadCommand :: { String }
  : "READ" var ";" { $2 }

ExitCommand :: { () }
  : "EXIT" ";" { () }

UntypedRawExpr :: { RawExpr }
  : UntypedRawExpr "." UntypedRawExpr { RawApp $1 $3  }
  | "lam" CommaSeparatedIdents "->" UntypedRawExpr %shift
    { joinLams $2 RawU $4 }
  | var { RawVar $1 }
  | number { RawConst (NumC $1) }
  | boolean { RawConst (BoolC $1) }
  | UntypedRawExpr "+" UntypedRawExpr { RawBinOp Add $1 $3 }
  | UntypedRawExpr "-" UntypedRawExpr { RawBinOp Sub $1 $3 }
  | UntypedRawExpr "*" UntypedRawExpr { RawBinOp Mul $1 $3 }
  | UntypedRawExpr "&&" UntypedRawExpr { RawBinOp And $1 $3 }
  | UntypedRawExpr "||" UntypedRawExpr { RawBinOp Or $1 $3 }
  | "!" UntypedRawExpr { RawUnOp Not $2 }
  | "if" UntypedRawExpr "then" UntypedRawExpr "else" UntypedRawExpr { RawIte $2 $4 $6 }
  | "proj1" UntypedRawExpr { RawUnOp Proj1 $2 }
  | "proj2" UntypedRawExpr { RawUnOp Proj2 $2 }
  | "<" UntypedRawExpr "," UntypedRawExpr ">" { RawBinOp MkPair $2 $4 }
  | UntypedParExpr { $1 }

UntypedParExpr : "(" UntypedRawExpr ")" { $2 }

RawExpr :: { RawExpr }
  : RawExpr "." RawExpr { RawApp $1 $3  }
  | "lam" CommaSeparatedIdents "::" RawTypeL "->" RawExpr %shift
    { joinLams $2 $4 $6 }
  | var { RawVar $1 }
  | number { RawConst (NumC $1) }
  | boolean { RawConst (BoolC $1) }
  | RawExpr "+" RawExpr { RawBinOp Add $1 $3 }
  | RawExpr "-" RawExpr { RawBinOp Sub $1 $3 }
  | RawExpr "*" RawExpr { RawBinOp Mul $1 $3 }
  | RawExpr "&&" RawExpr { RawBinOp And $1 $3 }
  | RawExpr "||" RawExpr { RawBinOp Or $1 $3 }
  | RawExpr "<" RawExpr { RawBinOp LtInt $1 $3 }
  | "!" RawExpr { RawUnOp Not $2 }
  | "if" RawExpr "then" RawExpr "else" RawExpr { RawIte $2 $4 $6 }
  | "proj1" RawExpr { RawUnOp Proj1 $2 }
  | "proj2" RawExpr { RawUnOp Proj2 $2 }
  | "<" RawExpr "," RawExpr ">" { RawBinOp MkPair $2 $4 }
  | "inl" RawExpr "as" RawTypeL { RawInl $2 $4 }
  | "inr" RawExpr "as" RawTypeL { RawInr $2 $4 }
  | "case" RawExpr "of" "inl" var "=>" RawExpr "|" "inr" var "=>" RawExpr { RawCase $2 $5 $7 $10 $12 }
  | ParExpr { $1 }

ParExpr : "(" RawExpr ")" { $2 }

RawTypeL :: { RawTypeL }
  : RawTypeL "=>" RawTypeL { RawArrow $1 $3 }
  | "U" { RawU }
  | "Int" { RawIntT }
  | "Bool" { RawBoolT }
  | var { FreeType $1 }
  | RawTypeL "*T" RawTypeL { RawProd $1 $3 }
  | RawTypeL "+T" RawTypeL { RawSum $1 $3 }
  | ParType { $1 }

ParType : "(" RawTypeL ")" { $2 }

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

joinLams :: [Id] -> RawTypeL -> RawExpr -> RawExpr
joinLams names ty body =
  foldr (`RawLam` ty) body names
}
