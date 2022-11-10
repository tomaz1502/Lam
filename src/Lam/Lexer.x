{
  module Lam.Lexer (Token(..), alexMonadScan, runAlex, Alex) where
}

%wrapper "monad"

$digit = 0-9
$alpha = [a-zA-Z]
@id = $alpha[$alpha$digit]*[']*

tokens :-
<0> $white+ ;
<0> \n ;
<0> "->"      { tok Arrow     }
<0> "=>"      { tok TypeArrow }
<0> "U"       { tok BaseType  }
<0> "."       { tok Dot       }
<0> "lam"     { tok Lam       }
<0> "EVAL"    { tok Eval      }
<0> "TYPEDEF" { tok Typedef   }
<0> "DEFINE"  { tok Define    }
<0> "LOAD"    { tok Load }
<0> ":"       { tok Colon     }
<0> "::"      { tok TypeColon }
<0> ":="      { tok ColonEq   }
<0> ";"       { tok Semicolon }
<0> "("       { tok LPar      }
<0> ")"       { tok RPar      }
<0> @id       { tok (Var "")  }

{

data Token =
    Arrow
  | TypeArrow
  | BaseType
  | Dot
  | Lam
  | Eval   
  | Typedef
  | Load
  | Define
  | Colon
  | TypeColon
  | Semicolon
  | ColonEq
  | Var String
  | LPar
  | RPar
  | EOF
  deriving Show

alexEOF :: Alex Token
alexEOF = return EOF

tok :: Token -> AlexInput -> Int -> Alex Token
tok t (_,_,_,s) len = pure $
  case t of 
      Var _ -> Var (take len s)
      _     -> t

}
