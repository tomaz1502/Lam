module Defs where

open import Data.Nat    using (ℕ)
open import Data.String using (String)

{-# FOREIGN GHC

type Id = Data.Text.Text

data Type = U | Arrow Type Type
  deriving Eq

-- TODO: how to compile Agda naturals to "Int" instead of "Integer"?
data Expr =
    Var Integer
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

#-}

Id : Set
Id = String

data Type : Set where
  U : Type
  _⇒_ : Type → Type → Type

{-# COMPILE GHC Type = data Type (U | Arrow) #-}

data Expr : Set where
  Var : ℕ → Expr
  Lam : Id → Type → Expr → Expr
  App : Expr → Expr → Expr

{-# COMPILE GHC Expr = data Expr (Var | Lam | App) #-}
