module Lam.Command where

import Lam.Expr.Data

data Command =
    TypedefC (Id, RawType)
  | DefineC (Id, RawExpr)
  | EvalC RawExpr
  | LoadC String

