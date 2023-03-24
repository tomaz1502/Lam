module Defs where

open import Data.Nat    using (ℕ)
open import Data.String using (String)

{-# FOREIGN GHC

type Id = Data.Text.Text

data Type = U | Arrow Type Type
  deriving Eq

data Expr =
    Var Integer
  | Lam Id Type Expr
  | App Expr Expr
  deriving Eq

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
