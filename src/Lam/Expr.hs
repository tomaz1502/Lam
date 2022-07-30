{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Expr ( RawExpr(..)
                , Expr(..)
                , debruijn) where

import Data.Map qualified as M

type Id = String
type Context = Id -> Int

-- We still need regular Expr for reporting errors regarding
-- variables defined by the user
data RawExpr =
    RawLam Id RawExpr
  | RawApp RawExpr RawExpr
  | RawVar Id
  deriving Show

data Expr =
    Lam Expr
  | App Expr Expr
  | Var Int
  deriving Show

debruijn :: Int -> M.Map String Int -> RawExpr -> Expr
debruijn t m (RawLam n e) = debruijn (t + 1) (M.insert n (t + 1) m) e
debruijn t m (RawApp e1 e2) = App (debruijn t m e1) (debruijn t m e2)
debruijn t m (RawVar n) =
    case M.lookup n m of
      Just t' -> Var (t - t')
      Nothing -> error "Free variable!"

substitution :: Int -> Expr -> Expr -> Expr
substitution i s e = undefined

eval :: Expr -> Expr
eval = undefined
 
