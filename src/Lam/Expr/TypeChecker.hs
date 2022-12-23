module Lam.Expr.TypeChecker (typeCheck) where

import Data.Map qualified as M

import Lam.Expr.Data ( Expr(..), Type(..) )

type TypingContext = [Type]

emptyTypingContext :: TypingContext
emptyTypingContext = []

typeCheck' :: TypingContext -> Expr -> Maybe Type
typeCheck' ctx (Var n)      = lookup n (zip [0..] ctx)
typeCheck' ctx (Lam _ ty e) = typeCheck' (ty : ctx) e >>= Just . Arrow ty
typeCheck' ctx (App e1 e2)  =
    typeCheck' ctx e1 >>= \t1 ->
    typeCheck' ctx e2 >>= \t2 ->
        case t1 of
          Arrow t11 t12
            | t11 == t2 -> Just t12
            | otherwise -> Nothing
          _ -> Nothing

typeCheck :: Expr -> Maybe Type
typeCheck = typeCheck' emptyTypingContext
