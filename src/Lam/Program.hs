{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Program where

import Control.Monad.State
import Data.Map qualified as M

import Lam.Expr

type GlobalContext = M.Map String Expr

-- will catch the Just's in runtime for now
type Program a = State GlobalContext a

emptyContext :: GlobalContext
emptyContext = M.empty
