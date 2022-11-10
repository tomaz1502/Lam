module Lam.RawExpr where

type Id = String

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

