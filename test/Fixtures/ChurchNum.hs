module Fixtures.ChurchNum where

import Lam.Expr ( Expr(..) )

import Fixtures.Common ( SourceCode )

applyN :: Int -> (a -> a) -> a -> a
applyN 0 f a = a
applyN n f a = f (applyN (n - 1) f a)

encodeChurchP :: Int -> SourceCode
encodeChurchP n
  | n >= 0    =
     let concatRep s = concat (replicate n s)
     in  concat [ "eval: "
                , "lam f -> lam x -> "
                , concatRep "f . ("
                , "x"
                , concatRep ")"
                , ";"
                ]
  | otherwise = error "negative church (program)"

encodeChurchE :: Int -> Expr
encodeChurchE n
  | n >= 0    = Lam "f" (Arrow U U) $
                  Lam "x" U $
                    applyN n (App (Var 1)) (Var 0)
  | otherwise = error "negative church (expr)"


-- notice:
-- 1. forall n, encodeChurchE n = parse (encodeChurchP n)
-- 2. forall n and m, encodeChurchE (n * m) =
--                      eval $ Lam "f" (Lam "x" (App (App (encodeChurchE n) (App (encodeChurchE m) (Var 1))) (Var 0)))
--                      (works if we swap n and m too)
-- 3. forall n and m, encodeChurchE (n + m) =
--   eval $ (Lambda "f" (Lambda "x" (App (encodeChurchE n) (App (Var 1) (App (encodeChurch m) (App (Var 1) (Var 0)))))))
