module Lam.Data where

type Id = String

data Nat = Z
         | S Nat
             deriving (Eq, Show)

data RawType = RawBoolT
             | RawIntT
             | RawU
             | RawArrow RawType RawType
             | FreeType Id
                 deriving Show

data Type = BoolT
          | IntT
          | U
          | Arrow Type Type

data Prim = PlusPrim
          | MinusPrim
          | MultPrim
              deriving Show

eqPrim :: Prim -> Prim -> Bool
eqPrim PlusPrim PlusPrim = True
eqPrim MinusPrim MinusPrim = True
eqPrim MultPrim MultPrim = True
eqPrim _ _ = False

data RawExpr = RawVar Id
             | RawLam Id RawType RawExpr
             | RawApp RawExpr RawExpr
             | RawNumVal Int
             | RawBoolVal Bool
             | RawPrimE Prim
                 deriving Show

data Expr = Var Nat
          | Lam Id Type Expr
          | App Expr Expr
          | NumVal Int
          | BoolVal Bool
          | PrimE Prim

