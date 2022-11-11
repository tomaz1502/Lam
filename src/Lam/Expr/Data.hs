module Lam.Expr.Data where

type Id = String

data Type = U | Arrow Type Type
  deriving Eq

-- | Representation of lambda terms with DeBruijn indices
data Expr =
    Var Int
  | Lam Id Type Expr
  | App Expr Expr

data RawType =
    RawU
  | RawArrow RawType RawType
  | FreeType Id
  deriving Show

data RawExpr =
    RawVar Id
  | RawApp RawExpr RawExpr
  | RawLam Id RawType RawExpr
  deriving Show

