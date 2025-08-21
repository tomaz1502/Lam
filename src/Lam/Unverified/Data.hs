-- Unverified!
module Lam.Data where

import Lam.Nat (Nat)

type Id = String

data RawTypeL = RawBoolT
              | RawIntT
              | RawProd RawTypeL RawTypeL
              | RawSum RawTypeL RawTypeL
              | RawArrow RawTypeL RawTypeL
              | FreeType Id
                  deriving (Eq, Show)

data TypeL = BoolT
           | IntT
           | Arrow TypeL TypeL
           | Prod TypeL TypeL
           | Sum TypeL TypeL
               deriving Show

instance Eq TypeL where
    BoolT == BoolT = True
    IntT == IntT = True
    Arrow t11 t12 == Arrow t21 t22 = t11 == t21 && t12 == t22
    Prod t11 t12 == Prod t21 t22 = t11 == t21 && t12 == t22
    Sum t11 t12 == Sum t21 t22 = t11 == t21 && t12 == t22
    _ == _ = False

data ConstT = NumC Int
            | BoolC Bool
                deriving (Eq, Show)

data BinOpT = Add
            | Sub
            | Mul
            | And
            | Or
            | LtInt
            | MkPair
                deriving (Eq, Show)

data UnaryOpT = Not
              | Proj1
              | Proj2
                  deriving (Eq, Show)

data RawExpr = RawVar Id
             | RawLam Id RawTypeL RawExpr
             | RawApp RawExpr RawExpr
             | RawFix RawExpr
             | RawIte RawExpr RawExpr RawExpr
             | RawInl RawExpr RawTypeL
             | RawInr RawExpr RawTypeL
             | RawCase RawExpr Id RawExpr Id RawExpr
             | RawConst ConstT
             | RawBinOp BinOpT RawExpr RawExpr
             | RawUnOp UnaryOpT RawExpr
                 deriving Show

data Expr = Var Nat
          | Lam Id TypeL Expr
          | App Expr Expr
          | Fix Expr
          | Ite Expr Expr Expr
          | Inl Expr TypeL
          | Inr Expr TypeL
          | Case Expr Id Expr Id Expr
          | Const ConstT
          | BinOp BinOpT Expr Expr
          | UnaryOp UnaryOpT Expr
              deriving Show

instance Eq Expr where
    Var i == Var j = i == j
    Lam _ _ e1 == Lam _ _ e2 = e1 == e2
    App e11 e12 == App e21 e22 = e11 == e21 && e12 == e22
    Const c1 == Const c2 = c1 == c2
    BinOp o1 e11 e12 == BinOp o2 e21 e22
      = o1 == o2 && e11 == e21 && e12 == e22
    UnaryOp o1 e1 == UnaryOp o2 e2 = o1 == o2 && e1 == e2
    Ite b1 t1 e1 == Ite b2 t2 e2 = b1 == b2 && t1 == t2 && e1 == e2
    Inl e1 t1 == Inl e2 t2 = e1 == e2 && t1 == t2
    Inr e1 t1 == Inr e2 t2 = e1 == e2 && t1 == t2
    _ == _ = False

data Command = TypedefC (Id, RawTypeL)
             | DefineC (Id, RawExpr)
             | EvalC RawExpr
             | CheckC RawExpr
             | LoadC Id
             | ReadC Id
             | ExitC

