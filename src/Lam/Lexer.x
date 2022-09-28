{
  module Lam.Lexer (Token(..), alexMonadScan, runAlex, Alex) where
}

%wrapper "monad"

$digit = 0-9
$alpha = [a-zA-Z]
@id = $alpha[$alpha$digit]*

tokens :-
<0> $white+ ;
<0> "->"     { tok Arrow     }
<0> "."      { tok Dot       }
<0> "lam"    { tok Lam       }
<0> "eval"   { tok Eval      }
<0> "define" { tok Define    }
<0> ":"      { tok Colon     }
<0> "="      { tok Equals    }
<0> ";"      { tok Semicolon }
<0> "("      { tok LPar      }
<0> ")"      { tok RPar      }
<0> @id      { tok (Var "")  }

{

data Token =
    Arrow
  | Dot
  | Lam
  | Eval
  | Define
  | Colon
  | Semicolon
  | Equals
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
