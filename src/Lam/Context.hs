{-# LANGUAGE OverloadedStrings #-}

module Lam.Context where

import Lam.Data

import Data.Map qualified as M

data GlobalContext = GlobalContext
    { boundTypes :: M.Map String Type
    , boundExprs :: M.Map String Expr
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
 | nm `elem` ctx = pickFresh ctx (nm ++ "'")
 | otherwise     = nm

