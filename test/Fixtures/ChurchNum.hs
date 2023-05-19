module Fixtures.ChurchNum where

import Lam.Data ( Expr(..), Type(..), Nat(..) )

import Fixtures.Common ( SourceCode )

applyN :: Int -> (a -> a) -> a -> a
applyN 0 f a = a
applyN n f a = f (applyN (n - 1) f a)

encodeChurchP :: Int -> SourceCode
encodeChurchP n
  | n >= 0    =
     let concatRep s = concat (replicate n s)
      in concat [ "lam f -> lam x -> "
                , concatRep "f . ("
                , "x"
                , concatRep ")"
                ]
  | otherwise = error "negative church (program)"

encodeChurchE :: Int -> Expr
encodeChurchE n
  | n >= 0    = Lam "s" (Arrow U U) $
                  Lam "z" U $
                    applyN n (App (Var (S Z))) (Var Z)
  | otherwise = error "negative church (expr)"

mulChurch :: Expr -> Expr -> Expr
mulChurch n m =
  Lam "f" (Arrow U U) $
    Lam "x" U $
      App (App n (App m (Var (S Z)))) (Var Z)

addChurch :: Expr -> Expr -> Expr
addChurch n m =
  Lam "f" (Arrow U U) $
    Lam "x" U $
      App (App n (Var (S Z))) (App (App m (Var (S Z))) (Var Z))

-- notice:
-- 1. forall n, encodeChurchE n = parse (encodeChurchP n)
-- 2. forall n and m, encodeChurchE (n * m) =
--                      eval $ Lam "f" (Lam "x" (App (App (encodeChurchE n) (App (encodeChurchE m) (Var 1))) (Var 0)))
--                      (works if we swap n and m too)
-- 3. forall n and m, encodeChurchE (n + m) =
--   eval $ (Lambda "f" (Lambda "x" (App (encodeChurchE n) (App (Var 1) (App (encodeChurch m) (App (Var 1) (Var 0)))))))

