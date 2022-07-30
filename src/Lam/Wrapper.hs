{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Wrapper (parse)  where

import Data.Map qualified as M

import Lam.Lexer (alexScanTokens)
import Lam.Parser (parseLam)
import Lam.Expr (Expr, RawExpr, debruijn)

parse :: String -> Expr
parse = debruijn 0 M.empty . parseLam . alexScanTokens
