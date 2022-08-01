{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Wrapper (parse)  where

import Data.Map qualified as M

import Lam.Lexer (alexScanTokens)
import Lam.Parser (parseLam)
import Lam.Expr (Expr, RawExpr, removeNames)

parse :: String -> Expr
parse = removeNames . parseLam . alexScanTokens
