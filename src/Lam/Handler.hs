{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RankNTypes #-}

module Lam.Handler ( repl
                   , handleFile
                   , GlobalContext
                   , emptyContext
                   ) where

import Control.Monad.RWS ( get, put )
import Control.Monad.Except ( liftEither, MonadIO(liftIO), MonadError )
import Data.Map qualified as M
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Command
import Lam.Context
import Lam.Expr
import Lam.Parser
import Lam.Result

-- TODO: report cyclic dependencies
loadFile :: String -> Result ()
loadFile fName = do
  untyped <- askUntyped
  sc      <- liftIO (readFile fName)
  f (parseProg untyped sc)
  where
    f :: [Command] -> Result ()
    f []             = return ()
    f ((EvalC _):cs) = f cs -- load just mean the macros
    f (c:cs)         = handleCommand c >> f cs

handleTypedef :: Id -> RawType -> Result ()
handleTypedef macroName macroType = do
  untyped <- askUntyped
  gctx    <- get
  if untyped then
    liftEither (Left "trying to define a type in an untyped context!")
  else do
    t <- liftEither (expandType gctx macroType)
    let boundTypes' = M.insert macroName t (boundTypes gctx)
     in put gctx {boundTypes = boundTypes'}

handleDefine :: Id -> RawExpr -> Result ()
handleDefine macroName macroExpr = do
  gctx <- get
  e    <- liftEither $ eraseNames gctx macroExpr
  let boundExprs' = M.insert macroName e (boundExprs gctx)
   in put gctx {boundExprs = boundExprs'}

handleEval :: RawExpr -> Result ()
handleEval rExpr = do
  gctx    <- get
  expr       <- liftEither (eraseNames gctx rExpr)
  untyped <- askUntyped
  if untyped then
    liftIO (putStrLn (untypedPrettyPrint (eval expr)))
  else
    case typeCheck expr of
      Nothing -> liftEither (Left "typing error")
      Just t  -> liftIO $
        putStrLn (untypedPrettyPrint (eval expr) <> " :: " <> show t)

handleCommand :: Command -> Result ()
handleCommand c =
  case c of
    TypedefC (macroName, macroType) -> handleTypedef macroName macroType
    DefineC  (macroName, macroExpr) -> handleDefine macroName macroExpr
    EvalC rExpr                     -> handleEval rExpr
    LoadC path                      -> loadFile path

repl :: Result ()
repl = do
  cmd     <- liftIO readRepl
  untyped <- askUntyped
  ctx     <- get
  ctx'    <- handleCommand (parseCommand untyped cmd)
  repl
  where
    readRepl :: IO String
    readRepl = putStr "> " >> hFlush stdout >> getLine

handleFile :: String -> Result ()
handleFile fName = do
  untyped <- askUntyped
  sc      <- liftIO $ readFile fName
  f (parseProg untyped sc)
  where
    f :: [Command] -> Result ()
    f []     = return ()
    f (c:cs) = do
      gctx <- get
      handleCommand c
      f cs
