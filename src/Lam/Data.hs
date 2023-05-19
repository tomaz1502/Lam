module Lam.Data where

type Id = String

data Nat = Z
         | S Nat
             deriving (Eq, Show)

data RawType = RawU
             | RawArrow RawType RawType
             | FreeType Id
                 deriving Show

data Type = U
          | Arrow Type Type

data RawExpr = RawVar Id
             | RawLam Id RawType RawExpr
             | RawApp RawExpr RawExpr
                 deriving Show

data Expr = Var Nat
          | Lam Id Type Expr
          | App Expr Expr

