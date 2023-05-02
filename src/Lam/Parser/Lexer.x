{
{-# LANGUAGE OverloadedStrings #-}
module Lam.Parser.Lexer (Token(..), alexMonadScan, runAlex, Alex) where
import qualified Data.Text as T
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
<0> ","       { tok Comma     }
<0> "lam"     { tok Lam       }
<0> "EVAL"    { tok Eval      }
<0> "TYPEDEF" { tok Typedef   }
<0> "DEFINE"  { tok Define    }
<0> "LOAD"    { tok Load      }
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
  | Comma
  | Lam
  | Eval   
  | Typedef
  | Load
  | Define
  | Colon
  | TypeColon
  | Semicolon
  | ColonEq
  | Var T.Text
  | LPar
  | RPar
  | EOF
  deriving Show

alexEOF :: Alex Token
alexEOF = return EOF

tok :: Token -> AlexInput -> Int -> Alex Token
tok t (_,_,_,s) len = pure $
  case t of 
      Var _ -> Var (T.take len (T.pack s))
      _     -> t

}
