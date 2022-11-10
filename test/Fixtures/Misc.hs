module Fixtures.Misc where

import Lam.Expr ( Expr(..), Type(..) )

import Fixtures.Common ( SourceCode )

data MiscTest = TC { prog :: SourceCode
                   , eInp :: Expr
                   , eOut :: Expr
                   }

miscTestCases :: [MiscTest]
miscTestCases = [ tc1, tc2 ]

tc1, tc2 :: MiscTest
tc1 =
  TC
    { prog = "(lam x -> lam y -> y . y) . (lam x -> x)"
    , eInp  = App
                (Lam "x" U
                  (Lam "y" U
                    (App
                      (Var 0)
                      (Var 0))))
                (Lam "x" U (Var 0))
    , eOut  = Lam "y" U (App (Var 0) (Var 0))
    }
tc2 =
  TC
    { prog = "lam y -> ((lam x -> x . x) . ((lam f -> f . (f . y)) . (lam x -> x)))"
    , eInp =
        Lam "y" U
               (App
                 (Lam "x" U
                   (App
                     (Var 0)
                     (Var 0)))
                 (App
                   (Lam "f" U
                     (App
                       (Var 0)
                       (App
                         (Var 0)
                         (Var 1))))
                   (Lam "x" U (Var 0))))
    , eOut = Lam "y" U (App (Var 0) (Var 0))
    }
