{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Wrapper (parse)  where

import Lam.Lexer (alexMonadScan, runAlex)
import Lam.Parser (parseLam)
import Lam.Expr (Expr)
import Lam.Prog (Prog)

parse :: String -> Prog
parse s =
    case runAlex s parseLam of
      Left err -> error $ "error at runAlex: " ++ err
      Right p  -> p

