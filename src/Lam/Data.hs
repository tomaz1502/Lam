module Lam.Data where

type Id = String

data Nat = Z
         | S Nat
             deriving (Eq, Show)

data RawType = RawNatT
             | RawU
             | RawArrow RawType RawType
             | FreeType Id
                 deriving Show

data Type = NatT
          | U
          | Arrow Type Type

data RawExpr = RawVar Id
             | RawLam Id RawType RawExpr
             | RawApp RawExpr RawExpr
             | RawNumber Int
             | RawPrim Id
                 deriving Show

data Expr = Var Nat
          | Lam Id Type Expr
          | App Expr Expr
          | Number Int
          | Prim Id

