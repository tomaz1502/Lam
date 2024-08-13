module Lam.Data where

open import Data.Bool using (true; false)

open import Haskell.Prelude using (Int; Bool; String; _×_)

Id : Set
Id = String

{-# COMPILE AGDA2HS Id #-}

data Nat : Set where
  Z : Nat
  S : Nat → Nat

{-# COMPILE AGDA2HS Nat deriving (Eq, Show) #-}

data RawType : Set where
  RawBoolT : RawType
  RawIntT  : RawType
  RawU     : RawType
  RawArrow : RawType → RawType → RawType
  FreeType : Id → RawType

{-# COMPILE AGDA2HS RawType deriving Show #-}

data Type : Set where
  BoolT : Type
  IntT  : Type
-- U is an opaque type
  U     : Type
  Arrow : Type → Type → Type

{-# COMPILE AGDA2HS Type #-}

data RawExpr : Set where
  RawVar     : Id → RawExpr
  RawLam     : Id → RawType → RawExpr → RawExpr
  RawApp     : RawExpr → RawExpr → RawExpr
  RawIte     : RawExpr → RawExpr → RawExpr → RawExpr
  RawNumVal  : Int → RawExpr
  RawBoolVal : Bool → RawExpr
  RawAdd     : RawExpr → RawExpr → RawExpr
  RawSub     : RawExpr → RawExpr → RawExpr
  RawMul     : RawExpr → RawExpr → RawExpr
  RawNot     : RawExpr → RawExpr
  RawAnd     : RawExpr → RawExpr → RawExpr
  RawOr      : RawExpr → RawExpr → RawExpr

{-# COMPILE AGDA2HS RawExpr deriving Show #-}

data Expr : Set where
  Var     : Nat → Expr
  Lam     : Id → Type → Expr → Expr
  App     : Expr → Expr → Expr
  Ite     : Expr → Expr → Expr → Expr
  NumVal  : Int → Expr
  BoolVal : Bool → Expr
  Add     : Expr → Expr → Expr
  Sub     : Expr → Expr → Expr
  Mul     : Expr → Expr → Expr
  Not     : Expr → Expr
  And     : Expr → Expr → Expr
  Or      : Expr → Expr → Expr

{-# COMPILE AGDA2HS Expr #-}

data Command : Set where
    TypedefC : Id × RawType → Command
    DefineC  : Id × RawExpr → Command
    EvalC    : RawExpr → Command
    LoadC    : Id → Command

{-# COMPILE AGDA2HS Command #-}
