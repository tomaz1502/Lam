module Lam.Eval (eval, evalWithGas) where

import Lam.Expr ( Expr(..) )

shift' :: Int -> Int -> Expr -> Expr
shift' c d (Var k)     = if k < c then Var k else Var $ k + d
shift' c d (Lam n t e)   = Lam n t (shift' (c + 1) d e)
shift' c d (App e1 e2) = App (shift' c d e1) (shift' c d e2)

shift :: Int -> Expr -> Expr
shift = shift' 0

substitute :: Int -> Expr -> Expr -> Expr
substitute i s (Lam n t e)   = Lam n t $ substitute (i + 1) (shift 1 s) e
substitute i s (App e1 e2) = App (substitute i s e1) (substitute i s e2)
substitute i s (Var k)     = if i == k then s else Var k

smallStep :: Expr -> Maybe Expr
smallStep (Var _)            = Nothing
smallStep (Lam n t e)          = smallStep e >>= Just . Lam n t
smallStep (App (Lam n _ e) e2) = Just $ shift (-1) (substitute 0 (shift 1 e2) e)
smallStep (App e1 e2)        =
    case smallStep e1 of
      Just e1' -> Just $ App e1' e2
      Nothing  -> smallStep e2 >>= Just . App e1

eval :: Expr -> Expr
eval e = maybe e eval (smallStep e)

evalWithGas :: Int -> Expr -> Expr
evalWithGas 0 e = e
evalWithGas gas e = maybe e (evalWithGas (gas - 1)) (smallStep e)
