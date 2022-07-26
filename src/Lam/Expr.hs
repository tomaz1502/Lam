module Lam.Expr (Expr(..)) where

type Id = String

data Expr =
    Lam Id Expr
  | App Expr Expr
  | Var Id
  deriving Show

eval :: Expr -> Int
eval = undefined
