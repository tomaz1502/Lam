{-# LANGUAGE OverloadedStrings #-}

module Lam.Context where

import Lam.Expr

import Data.Map qualified as M
import Data.Text qualified as T

data GlobalContext = GlobalContext
    { boundTypes :: M.Map T.Text Type
    , boundExprs :: M.Map T.Text Expr
    }

emptyContext :: GlobalContext
emptyContext = GlobalContext M.empty M.empty

ctxUnion :: GlobalContext -> GlobalContext -> GlobalContext
ctxUnion ctx1 ctx2 =
    let bTypes1 = boundTypes ctx1
        bTypes2 = boundTypes ctx2
        bExprs1 = boundExprs ctx1
        bExprs2 = boundExprs ctx2
     in GlobalContext (M.union bTypes1 bTypes2) (M.union bExprs1 bExprs2)

type LocalContext = [Id]

pickFresh :: LocalContext -> Id -> Id
pickFresh ctx nm
 | nm `elem` ctx = pickFresh ctx (T.append nm "'")
 | otherwise     = nm

