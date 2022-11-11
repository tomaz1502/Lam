{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RankNTypes #-}

module Lam.Handler ( repl
                   , handleFile
                   , GlobalContext
                   , emptyContext
                   ) where

import Control.Monad.RWS (MonadReader)
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
loadFile :: String -> Result GlobalContext
loadFile fName = do
    untyped <- askUntyped
    sc <- liftIO (readFile fName)
    f (parseProg untyped sc) emptyContext
    where
      f :: [Command] -> GlobalContext -> Result GlobalContext
      f [] ctx = return ctx
      f ((EvalC _):cs) gctx = f cs gctx -- load just mean the macros
      f (c:cs) gctx =
          handleCommand c gctx >>= \gctx' -> f cs gctx'

handleCommand :: Command -> GlobalContext -> Result GlobalContext
handleCommand (TypedefC (s, rt)) gctx = do
    untyped <- askUntyped
    if untyped then
      liftEither (Left "trying to define a type in an untyped context!")
    else do
      t <- liftEither (expandType gctx rt)
      let boundTypes' = M.insert s t (boundTypes gctx)
       in return $ gctx {boundTypes = boundTypes'}
handleCommand (DefineC (s, re)) gctx = do
    e <- liftEither (eraseNames gctx re)
    let boundExprs' = M.insert s e (boundExprs gctx)
     in return $ gctx {boundExprs = boundExprs'}
handleCommand (EvalC re) gctx = do
    e <- liftEither (eraseNames gctx re)
    untyped <- askUntyped
    if untyped then
      liftIO (putStrLn (untypedPrettyPrint (eval e)))
    else
      case typeCheck e of
        Nothing -> liftIO (putStrLn "typing error")
        Just t  -> liftIO $
          putStrLn (untypedPrettyPrint (eval e) <> " :: " <> show t)
    return gctx
handleCommand (LoadC path) gctx = do
    gctx' <- loadFile path
    return (ctxUnion gctx' gctx)

repl :: GlobalContext -> Result ()
repl ctx = do
  cmd <- liftIO readRepl
  untyped <- askUntyped
  ctx' <- handleCommand (parseCommand untyped cmd) ctx
  repl ctx'
  where readRepl :: IO String
        readRepl = putStr "> " >> hFlush stdout >> getLine

handleFile :: String -> Result ()
handleFile fName = do
  untyped <- askUntyped
  sc <- liftIO $ readFile fName
  f (parseProg untyped sc) emptyContext
  where
    f :: [Command] -> GlobalContext -> Result ()
    f [] _       = return ()
    f (c:cs) gctx = handleCommand c gctx >>= f cs

