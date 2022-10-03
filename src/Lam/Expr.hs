{-# LANGUAGE InstanceSigs #-}

module Lam.Expr ( Expr(..)
                , eval
                , debugDeBruijn
                , LocalContext
                , Id) where

-- probably gonna change this later
type Id = String
type LocalContext = [Id]

-- | Representation of lambda terms with DeBruijn indices
data Expr =
    Var Int
  | Lam Id Expr
  | App Expr Expr

pickFresh :: LocalContext -> Id -> Id
pickFresh ctx nm
 | nm `elem` ctx = pickFresh ctx (nm <> "'")
 | otherwise     = nm

instance Eq Expr where -- if we derive we don't get alpha equivalence
  (==) :: Expr -> Expr -> Bool
  (==) (Var i) (Var j) = i == j
  (==) (Lam _ e1') (Lam _ e2') = e1' == e2'
  (==) (App e11 e12) (App e21 e22) = e11 == e21 && e12 == e22
  (==) _ _ = False

instance Show Expr where
  show = go []
    where go :: LocalContext -> Expr -> String
          go ctx (Var i) = ctx !! i
          go ctx (Lam n e) =
            let freshName = pickFresh ctx n
            in  unwords ["\\" <> freshName, "->", go (freshName : ctx) e]
          go ctx (App e1 e2) =
            let f e@(Var _) = go ctx e
                f e         = concat ["(", go ctx e, ")"]
            in unwords [f e1, ".", f e2]

debugDeBruijn :: Expr -> String
debugDeBruijn (Var i)     = show i
debugDeBruijn (Lam _ e)   = unwords [ "(lam.", debugDeBruijn e, ")" ]
debugDeBruijn (App e1 e2) = unwords [ "("
                                   , debugDeBruijn e1
                                   , debugDeBruijn e2
                                   , ")"
                                   ]

shift' :: Int -> Int -> Expr -> Expr
shift' c d (Var k)     = if k < c then Var k else Var $ k + d
shift' c d (Lam n e)   = Lam n (shift' (c + 1) d e)
shift' c d (App e1 e2) = App (shift' c d e1) (shift' c d e2)

shift :: Int -> Expr -> Expr
shift = shift' 0

substitute :: Int -> Expr -> Expr -> Expr
substitute i s (Lam n e)   = Lam n $ substitute (i + 1) (shift 1 s) e
substitute i s (App e1 e2) = App (substitute i s e1) (substitute i s e2)
substitute i s (Var k)     = if i == k then s else Var k

smallStep :: Expr -> Maybe Expr
smallStep (Var _)            = Nothing
smallStep (Lam n e)          = smallStep e >>= Just . Lam n
smallStep (App (Lam n e) e2) = Just $ shift (-1) (substitute 0 (shift 1 e2) e)
smallStep (App e1 e2)        =
    case smallStep e1 of
      Just e1' -> Just $ App e1' e2
      Nothing  -> smallStep e2 >>= Just . App e1

eval :: Expr -> Expr
eval e = maybe e eval (smallStep e)

evalWithGas :: Int -> Expr -> Expr
evalWithGas 0 e = e
evalWithGas gas e = maybe e (evalWithGas (gas - 1)) (smallStep e)

