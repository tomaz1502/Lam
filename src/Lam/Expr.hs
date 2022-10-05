{-# LANGUAGE InstanceSigs #-}

module Lam.Expr ( Expr(..)
                , debugDeBruijn
                , LocalContext
                , Id) where


data Type = U | Arrow Type Type

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
debugDeBruijn (Lam _ _ e)   = unwords [ "(lam.", debugDeBruijn e, ")" ]
debugDeBruijn (App e1 e2) = unwords [ "("
                                    , debugDeBruijn e1
                                    , debugDeBruijn e2
                                    , ")"
                                    ]
