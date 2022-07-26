module Lam.Wrapper (parse)  where

import Lam.Lexer (alexScanTokens)
import Lam.Parser (parseLam)
import Lam.Expr (Expr(..))

parse :: String -> Expr
parse = parseLam . alexScanTokens
