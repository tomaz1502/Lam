{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Wrapper  where

import Data.Map qualified as M

import Lam.Lexer (alexMonadScan, runAlex)
import Lam.Parser (parseLam)
import Lam.Expr (Expr)
import Lam.Program (Program, GlobalContext)

parse :: String -> Program
parse s =
    case runAlex s parseLam of
      Left err -> error $ "error at runAlex: " ++ err
      Right p  -> p

unsafeGetExpr :: String -> GlobalContext -> Expr
unsafeGetExpr s c =
    case parse s c of
      ([Just e], _) -> e
      _             -> error "unsafeGetExpr"

unsafeGetExprDef :: String -> Expr
unsafeGetExprDef = flip unsafeGetExpr M.empty
