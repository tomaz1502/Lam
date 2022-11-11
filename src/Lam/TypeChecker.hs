module Lam.TypeChecker (typeCheck) where

import Data.Map qualified as M

import Lam.Expr ( Expr(..), Type(..) )

type TypingContext = M.Map Int Type

emptyTypingContext :: TypingContext
emptyTypingContext = M.empty

typeCheck' :: TypingContext -> Int -> Expr -> Maybe Type
typeCheck' ctx d (Var n)      = M.lookup (d - n) ctx
typeCheck' ctx d (Lam _ ty e) = let ctx' = M.insert (d + 1) ty ctx
                                 in typeCheck' ctx' (d + 1) e >>= \t ->
                                      Just $ Arrow ty t
typeCheck' ctx d (App e1 e2)  =
    typeCheck' ctx d e1 >>= \t1 ->
    typeCheck' ctx d e2 >>= \t2 ->
        case t1 of
          Arrow t11 t12
            | t11 == t2 -> Just t12
            | otherwise -> Nothing
          _ -> Nothing

typeCheck :: Expr -> Maybe Type
typeCheck = typeCheck' emptyTypingContext 0
