{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Expr where

import Lam.RawExpr
import Lam.Parser

import Data.Map qualified as M
import Data.List (elemIndex)

data Type = U | Arrow Type Type
  deriving Eq

instance Show Type where
    show U = "U"
    show (Arrow t1 t2) = concat [ "("
                                , show t1
                                , ")"
                                , " => "
                                , show t2
                                ]

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

-- | Representation of lambda terms with DeBruijn indices
data Expr =
    Var Int
  | Lam Id Type Expr
  | App Expr Expr

instance Eq Expr where -- if we derive we don't get alpha equivalence
  (==) :: Expr -> Expr -> Bool
  (==) (Var i) (Var j) = i == j
  (==) (Lam _ _ e1') (Lam _ _ e2') = e1' == e2'
  (==) (App e11 e12) (App e21 e22) = e11 == e21 && e12 == e22
  (==) _ _ = False

-- print respecting Lam's syntax
prettyPrint :: Bool -> Expr -> String
prettyPrint = go []
  where go :: LocalContext -> Bool -> Expr -> String
        go ctx _ (Var i) = ctx !! i
        go ctx untyped (Lam n ty e) =
            let freshName = pickFresh ctx n
             in unwords $ [ "lam"
                          , freshName
                          ] ++
                          -- show types depending on the parameter
                          [":: " <> show ty | not untyped] ++
                          [ "->"
                          , go (freshName : ctx) untyped e
                          ]
        go ctx untyped (App e1 e2) =
          let f e@(Var _) = go ctx untyped e
              f e         = concat ["(", go ctx untyped e, ")"]
           in unwords [f e1, ".", f e2]

untypedPrettyPrint, typedPrettyPrint :: Expr -> String
untypedPrettyPrint = prettyPrint True
typedPrettyPrint   = prettyPrint False

eraseNames :: GlobalContext -> RawExpr -> Either String Expr
eraseNames = go []
  where
    go lctx gctx (RawVar s) =
      case elemIndex s lctx of
        Just i  -> Right $ Var i
        Nothing -> case M.lookup s (boundExprs gctx) of
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

parseUntypedExpr :: String -> Either String Expr
parseUntypedExpr = eraseNames emptyContext . parseRawExpr True

parseTypedExpr :: String -> Either String Expr
parseTypedExpr = eraseNames emptyContext . parseRawExpr False

type LocalContext = [Id]

pickFresh :: LocalContext -> Id -> Id
pickFresh ctx nm
 | nm `elem` ctx = pickFresh ctx (nm <> "'")
 | otherwise     = nm

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

