{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}

module Lam.Handler ( repl
                   , handleFile
                   ) where

import Control.Monad.RWS        ( get, put )
import Control.Monad.Except     ( liftEither, MonadIO(liftIO), MonadError (..) )
import Data.Map qualified as M
import System.Exit              (exitSuccess, exitFailure)

import Lam.Context
import Lam.Data
import Lam.Evaluator
import Lam.Parser
import Lam.Result
import Lam.TypeChecker
import Lam.Utils

-- TODO: report cyclic dependencies
loadFile :: String -> Result ()
loadFile fName = do
  isUntyped <- askUntyped
  sc        <- liftIO (readFile fName)
  prog      <- liftEither (parseProg isUntyped sc)
  mapM_ (\case {EvalC _ -> pure (); c -> handleCommand c}) prog

handleTypedef :: Id -> RawType -> Result ()
handleTypedef macroName macroType = do
  isUntyped <- askUntyped
  gctx    <- get
  if isUntyped then
     throwError "Trying to define a type in an untyped context."
  else do
    t <- liftEither (expandType gctx macroType)
    let boundTypes' = M.insert macroName t (boundTypes gctx)
     in put gctx {boundTypes = boundTypes'}

handleDefine :: Id -> RawExpr -> Result ()
handleDefine macroName macroExpr = do
  gctx <- get
  e    <- liftEither (eraseNames gctx macroExpr)
  let boundExprs' = M.insert macroName e (boundExprs gctx)
   in put gctx {boundExprs = boundExprs'}

handleEval :: RawExpr -> Result ()
handleEval rExpr = do
  gctx    <- get
  expr    <- liftEither (eraseNames gctx rExpr)
  isUntyped <- askUntyped
  if isUntyped then
    liftIO (putStrLnFlush (untypedPrettyPrint (eval expr)))
  else
    case typeCheck expr of
      Nothing -> throwError "Typing error."
      Just t  ->
        let normalizedExpr = eval expr in
        let msg = untypedPrettyPrint normalizedExpr <> " :: " <> prettyPrintType t in
        liftIO (putStrLnFlush msg)

handleCommand :: Command -> Result ()
handleCommand c =
  case c of
    TypedefC (macroName, macroType) -> handleTypedef macroName macroType
    DefineC  (macroName, macroExpr) -> handleDefine macroName macroExpr
    EvalC rExpr                     -> handleEval rExpr
    LoadC path                      -> loadFile path

readCommand :: Result Command
readCommand = do
  cmd <- liftIO readRepl
  isUntyped <- askUntyped
  case parseCommand isUntyped cmd of
    Left err ->
      liftIO (putStrLnFlush err) >>
      readCommand
    Right command -> pure command
  where
    readRepl :: IO String
    readRepl = putStrFlush "> " >> getLine

repl :: Result ()
repl = do
  command <- readCommand
  catchError (handleCommand command) (liftIO . putStrLnFlush)
  repl

handleFile :: String -> Result ()
handleFile fName = do
  isUntyped <- askUntyped
  sc      <- liftIO $ readFile fName
  prog    <- liftEither (parseProg isUntyped sc)
  mapM_ handleCommand prog
