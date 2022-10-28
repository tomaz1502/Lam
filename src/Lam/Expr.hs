{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Expr ( Expr(..)
                , Type(..)
                , debugDeBruijn
                , LocalContext
                , GlobalContext(..)
                , emptyContext
                , ctxUnion
                , Id
                , RawExpr(..)
                , RawType(..)
                , Command(..)
                , expandType
                , eraseNames
                ) where

import Data.Map qualified as M
import Data.List (elemIndex)

data Type = U | Arrow Type Type
  deriving Eq

instance Show Type where
    show U = "U"
    show (Arrow t1 t2) = concat [ "("
                                , show t1
                                , ")"
                                , " -> "
                                , show t2
                                ]

-- probably gonna change this later
type Id = String
type LocalContext = [Id]

-- | Representation of lambda terms with DeBruijn indices
data Expr =
    Var Int
  | Lam Id Type Expr
  | App Expr Expr

pickFresh :: LocalContext -> Id -> Id
pickFresh ctx nm
 | nm `elem` ctx = pickFresh ctx (nm <> "'")
 | otherwise     = nm

instance Eq Expr where -- if we derive we don't get alpha equivalence
  (==) :: Expr -> Expr -> Bool
  (==) (Var i) (Var j) = i == j
  (==) (Lam _ _ e1') (Lam _ _ e2') = e1' == e2'
  (==) (App e11 e12) (App e21 e22) = e11 == e21 && e12 == e22
  (==) _ _ = False

instance Show Expr where
  show = go []
    where go :: LocalContext -> Expr -> String
          go ctx (Var i) = ctx !! i
          go ctx (Lam n _ e) =
            let freshName = pickFresh ctx n
            in  unwords ["\\" <> freshName, "->", go (freshName : ctx) e]
          go ctx (App e1 e2) =
            let f e@(Var _) = go ctx e
                f e         = concat ["(", go ctx e, ")"]
            in unwords [f e1, ".", f e2]

debugDeBruijn :: Expr -> String
debugDeBruijn (Var i)     = show i
debugDeBruijn (Lam _ _ e) = unwords [ "(lam.", debugDeBruijn e, ")" ]
debugDeBruijn (App e1 e2) = unwords [ "("
                                    , debugDeBruijn e1
                                    , debugDeBruijn e2
                                    , ")"
                                    ]

data RawExpr =
    RawVar Id
  | RawApp RawExpr RawExpr
  | RawLam Id RawType RawExpr

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
    in  GlobalContext (M.union bTypes1 bTypes2) (M.union bExprs1 bExprs2)

eraseNames :: GlobalContext -> RawExpr -> Either String Expr
eraseNames = go []
  where
    go lctx gctx (RawVar s) =
      case elemIndex s lctx of
        Just i  -> Right $ Var i
        Nothing -> let bExprs = boundExprs gctx
                   in case M.lookup s bExprs of
                        Just e  -> Right e
                        Nothing -> Left $ "free variable: " <> s
    go lctx gctx (RawApp e1 e2) =
        go lctx gctx e1 >>= \e1' ->
        go lctx gctx e2 >>= \e2' ->
        Right $ App e1' e2'
    go lctx gctx (RawLam s ty e) =
        go (s : lctx) gctx e >>= \e' ->
        expandType gctx ty >>= \ty' ->
        Right $ Lam s ty' e'

data RawType =
    RawU
  | RawArrow RawType RawType
  | FreeType Id

expandType :: GlobalContext -> RawType -> Either String Type
expandType _ RawU = Right U
expandType gctx (RawArrow t1 t2) =
    expandType gctx t1 >>= \t1' ->
    expandType gctx t2 >>= \t2' ->
    Right (Arrow t1' t2')
expandType gctx (FreeType s) =
    case M.lookup s (boundTypes gctx) of
      Just t  -> Right t
      Nothing -> Left $ "free type: " <> s

data Command =
    TypedefC (Id, RawType)
  | DefineC (Id, RawExpr)
  | EvalC RawExpr
  | LoadC String
