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
                (Lam "x" BoolT
                  (Lam "y" BoolT
                    (App
                      (Var Z)
                      (Var Z))))
                (Lam "x" BoolT (Var Z))
    , eOut  = Lam "y" BoolT (App (Var Z) (Var Z))
    }
tc2 =
  TC
    { prog = "lam y -> ((lam x -> x . x) . ((lam f -> f . (f . y)) . (lam x -> x)))"
    , eInp =
        Lam "y" BoolT
               (App
                 (Lam "x" BoolT
                   (App
                     (Var Z)
                     (Var Z)))
                 (App
                   (Lam "f" BoolT
                     (App
                       (Var Z)
                       (App
                         (Var Z)
                         (Var (S Z)))))
                   (Lam "x" BoolT (Var Z))))
    , eOut = Lam "y" BoolT (App (Var Z) (Var Z))
    }
