module Lam.Expr (Expr(..)) where

data Expr =
    Lam Expr
  | App Expr Expr
  | Var Int
  deriving Show

eval :: Expr -> Expr
eval = undefined
