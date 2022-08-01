{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Expr ( RawExpr(..)
                , Expr(..)
                , removeNames
                , eval) where

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

-- | Representation of lambda terms with DeBruijn indices
data Expr =
    Lam Expr
  | App Expr Expr
  | Var Int
  deriving Show

removeNames' :: Int -> M.Map Id Int -> RawExpr -> Expr
removeNames' t m (RawLam n e)   = Lam $ removeNames' (t + 1) (M.insert n (t + 1) m) e
removeNames' t m (RawApp e1 e2) = App (removeNames' t m e1) (removeNames' t m e2)
removeNames' t m (RawVar n)     =
    case M.lookup n m of
      Just t' -> Var (t - t')
      Nothing -> error "Free variable!"

removeNames :: RawExpr -> Expr
removeNames = removeNames' 0 M.empty

restoreNames :: Expr -> RawExpr
restoreNames = undefined

-- We should have:
--   1. removeNames (restoreNames e) = e
--   2. restoreNames (removeNames re) = re
-- But obviously we will need to define some context to store the name of 
-- the variables and pass it through the functions for this to work.

shift' :: Int -> Int -> Expr -> Expr
shift' c d (Lam e)     = Lam (shift' (c + 1) d e)
shift' c d (App e1 e2) = App (shift' c d e1) (shift' c d e2)
shift' c d (Var k)     = if k < c then Var k else Var $ k + d

shift :: Int -> Expr -> Expr
shift = shift' 0

substitute :: Int -> Expr -> Expr -> Expr
substitute i s (Lam e)     = Lam $ substitute (i + 1) (shift 1 s) e
substitute i s (App e1 e2) = App (substitute i s e1) (substitute i s e2)
substitute i s (Var k)     = if i == k then s else Var k

smallStep :: Expr -> Maybe Expr
smallStep (Lam e) = smallStep e >>= \e' -> Just $ Lam e'
smallStep (App (Lam e) e2) = Just $ shift (-1) (substitute 0 (shift 1 e2) e)
smallStep (App (Var _) _) = Nothing
smallStep (App e1 e2) = smallStep e1 >>= \e1' -> Just $ App e1' e2
smallStep (Var _) = Nothing

eval :: Expr -> Expr
eval e = maybe e eval (smallStep e)

