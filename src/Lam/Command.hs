module Lam.Command where

import Lam.Expr

data Command =
    TypedefC (Id, RawType)
  | DefineC (Id, RawExpr)
  | EvalC RawExpr
  | LoadC Id

