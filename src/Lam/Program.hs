{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Program where

import Data.Map qualified as M

import Lam.Expr

type GlobalContext = M.Map String Expr

-- will catch the Just's in runtime for now
type Program = GlobalContext -> ([Maybe Expr], GlobalContext)

emptyContext :: GlobalContext
emptyContext = M.empty


