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

{-# COMPILE AGDA2HS Type deriving Show #-}

data ConstT : Set where
  NumC : Int → ConstT
  BoolC : Bool → ConstT

{-# COMPILE AGDA2HS ConstT deriving Show #-}

data BinOpT : Set where
  Add : BinOpT
  Sub : BinOpT
  Mul : BinOpT
  And : BinOpT
  Or  : BinOpT

{-# COMPILE AGDA2HS BinOpT deriving Show #-}

data UnaryOpT : Set where
  Not : UnaryOpT

{-# COMPILE AGDA2HS UnaryOpT deriving Show #-}

data RawExpr : Set where
  RawVar       : Id → RawExpr
  RawLam       : Id → RawType → RawExpr → RawExpr
  RawApp       : RawExpr → RawExpr → RawExpr
  RawIte       : RawExpr → RawExpr → RawExpr → RawExpr
  RawConst     : ConstT → RawExpr
  RawBinOp     : BinOpT → RawExpr → RawExpr → RawExpr
  RawUnOp      : UnaryOpT → RawExpr → RawExpr

{-# COMPILE AGDA2HS RawExpr deriving Show #-}

data Expr : Set where
  Var     : Nat → Expr
  Lam     : Id → Type → Expr → Expr
  App     : Expr → Expr → Expr
  Ite     : Expr → Expr → Expr → Expr
  Const   : ConstT → Expr
  BinOp   : BinOpT → Expr → Expr → Expr
  UnaryOp : UnaryOpT → Expr → Expr

{-# COMPILE AGDA2HS Expr deriving Show #-}

data Command : Set where
    TypedefC : Id × RawType → Command
    DefineC  : Id × RawExpr → Command
    EvalC    : RawExpr → Command
    LoadC    : Id → Command

{-# COMPILE AGDA2HS Command #-}
