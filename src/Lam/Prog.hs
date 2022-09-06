module Lam.Prog where

import Lam.Expr

newtype Prog = Prog { stms :: [Statement] }

data Statement = Eval Expr | Define String Expr

instance Show Statement where
    show (Eval e) = unwords ["eval:", show e]
    show (Define var e) = unwords ["define", var, ":=", show e]

instance Show Prog where
    show = unlines . map show . stms
