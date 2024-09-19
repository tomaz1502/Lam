module Fixtures.Misc where

import Lam.Data ( Expr(..), TypeL(..) )
import Lam.Nat

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
                      (Var Z)
                      (Var Z))))
                (Lam "x" U (Var Z))
    , eOut  = Lam "y" U (App (Var Z) (Var Z))
    }
tc2 =
  TC
    { prog = "lam y -> ((lam x -> x . x) . ((lam f -> f . (f . y)) . (lam x -> x)))"
    , eInp =
        Lam "y" U
               (App
                 (Lam "x" U
                   (App
                     (Var Z)
                     (Var Z)))
                 (App
                   (Lam "f" U
                     (App
                       (Var Z)
                       (App
                         (Var Z)
                         (Var (S Z)))))
                   (Lam "x" U (Var Z))))
    , eOut = Lam "y" U (App (Var Z) (Var Z))
    }
