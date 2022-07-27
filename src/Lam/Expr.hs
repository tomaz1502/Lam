module Lam.Expr (Expr(..)) where

type Id = String

data Expr =
    Lam Id Expr
  | App Expr Expr
  | Var Id
  deriving Show

data Value = VLam Id Value

eval :: Expr -> Value
eval = undefined
