module Fixtures.Misc where

import Lam.Expr ( Expr(..) )

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
    { prog = "eval: (lam x -> lam y -> y . y) . (lam x -> x);"
    , eInp  = App
                (Lam "x"
                  (Lam "y"
                    (App
                      (Var 0)
                      (Var 0))))
                (Lam "x" (Var 0))
    , eOut  = Lam "y" (App (Var 0) (Var 0))
    }
tc2 =
  TC
    { prog = "eval: lam y -> ((lam x -> x . x) . (lam f -> f . f . y) . (lam x -> x));"
    , eInp = Lam "y"
               (App
                 (Lam "x"
                   (App
                     (Var 0)
                     (Var 0)))
                 (App
                   (Lam "f"
                     (App
                       (Var 0)
                       (App
                         (Var 0)
                         (Var 1))))
                   (Lam "x" (Var 0))))
    , eOut = Lam "y" (App (Var 0) (Var 0))
    }
