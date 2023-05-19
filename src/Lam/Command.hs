module Lam.Command where

import Lam.Data

data Command =
    TypedefC (Id, RawType)
  | DefineC (Id, RawExpr)
  | EvalC RawExpr
  | LoadC Id

