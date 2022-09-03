module Fixtures.ChurchNum where

import Lam.Expr ( Expr(..) )

import Fixtures.Common

-- testCases :: [TestCase]
-- testCases = []

applyN :: Int -> (a -> a) -> a -> a
applyN 0 f a = a
applyN n f a = f (applyN (n - 1) f a)

encodeChurchP :: Int -> Prog
encodeChurchP n
  | n >= 0    =
     let concatRep s = concat (replicate n s)
     in  concat [ "lam f -> lam x -> "
                , concatRep "f . ("
                , "x"
                , concatRep ")"
                ]
  | otherwise = error "negative church (program)"

encodeChurchE :: Int -> Expr
encodeChurchE n
  | n >= 0    = Lam "f" $
                  Lam "x" $
                    applyN n (App (Var 1)) (Var 0)
  | otherwise = error "negative church (expr)"


-- notice:
-- 1. forall n, encodeChurchE n = parse (encodeChurchP n)
-- 2. forall n and m, encodeChurchE (n * m) =
--                      eval $ App (encodeChurchE n) (encodeChurchE m)
--                      (works if we swap n and m too)
-- 3. forall n and m, encodeChurchE (n + m) =
--   eval $ (Lambda "f" (Lambda "x" (App (encodeChurchE n) (App (Var 1) (App (encodeChurch m) (App (Var 1) (Var 0)))))))
