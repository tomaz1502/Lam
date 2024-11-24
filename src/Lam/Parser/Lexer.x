{
{-# LANGUAGE OverloadedStrings #-}
module Lam.Parser.Lexer (Token(..), alexMonadScan, runAlex, Alex, unAlex, alexMonad) where
}

%wrapper "monad"

$digit = 0-9
@digits = \-?$digit+
$alpha = [a-zA-Z_]
@id = $alpha[$alpha$digit]*[']*
@path = \"(((\.)?\/)?(@id\/)*)@id(\.@id)?\"

tokens :-
<0> $white+ ;
<0> \n ;
<0> "->"      { tok Arrow           }
<0> "=>"      { tok TypeArrow       }
<0> "U"       { tok BaseType        }
<0> "Int"     { tok IntType         }
<0> "Bool"    { tok BoolType        }
<0> "."       { tok Dot             }
<0> ","       { tok Comma           }
<0> "lam"     { tok Lam             }
<0> "EVAL"    { tok Eval            }
<0> "EXIT"    { tok Exit            }
<0> "TYPEDEF" { tok Typedef         }
<0> "DEFINE"  { tok Define          }
<0> "LOAD"    { tok Load            }
<0> "READ"    { tok Read            }
<0> ":"       { tok Colon           }
<0> "::"      { tok TypeColon       }
<0> ":="      { tok ColonEq         }
<0> ";"       { tok Semicolon       }
<0> "("       { tok LPar            }
<0> ")"       { tok RPar            }
<0> "+"       { tok Plus            }
<0> "-"       { tok Minus           }
<0> "*"       { tok Prod            }
<0> "&&"      { tok And             }
<0> "||"      { tok Or              }
<0> "!"       { tok Not             }
<0> "true"    { tok (BoolVal True)  }
<0> "false"   { tok (BoolVal False) }
<0> "if"      { tok If              }
<0> "then"    { tok Then            }
<0> "else"    { tok Else            }
<0> "proj1"   { tok Proj1           }
<0> "proj2"   { tok Proj2           }
<0> "<"       { tok LTTok           }
<0> ">"       { tok GTTok           }
<0> "inl"     { tok Inl             }
<0> "inr"     { tok Inr             }
<0> "case"    { tok Case            }
<0> "of"      { tok Of              }
<0> "|"       { tok Pipe            }
<0> "as"      { tok As              }
<0> "+T"      { tok PlusT           }
<0> "*T"      { tok ProdT           }
<0> @id       { tok (Var "")        }
<0> @path     { tok (Path "")       }
<0> @digits   { tok (NumVal 0)      }

{

data Token =
    Arrow
  | TypeArrow
  | BaseType
  | IntType
  | BoolType
  | Dot
  | Comma
  | Lam
  | Eval
  | Exit
  | Typedef
  | Load
  | Read
  | Define
  | Colon
  | TypeColon
  | Semicolon
  | ColonEq
  | Var String
  | LPar
  | RPar
  | Path String
  | NumVal Int
  | BoolVal Bool
  | Plus
  | Minus
  | Prod
  | And
  | Or
  | Not
  | If
  | Then
  | Else
  | Proj1
  | Proj2
  | LTTok
  | GTTok
  | Inl
  | Inr
  | Case
  | Of
  | Pipe
  | As
  | ProdT
  | PlusT
  | EOF
  deriving Show

alexEOF :: Alex Token
alexEOF = return EOF

tok :: Token -> AlexInput -> Int -> Alex Token
tok t (_,_,_,s) len = pure $
  case t of
     Var _ -> Var (take len s)
     Path _ -> Path (take len s)
     NumVal _ -> NumVal (read (take len s))
     _ -> t

alexMonad f = Alex f
}
