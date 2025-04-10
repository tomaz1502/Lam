{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}

module Lam.Handler ( replWrapper
                   , handleFileWrapper
                   ) where

import Control.Monad.RWS        ( get, put )
import Control.Monad.Except     ( liftEither, MonadIO(liftIO), MonadError (..) )
import Data.Map qualified as M

import Lam.Context
import Lam.Data
import Lam.Evaluator
import Lam.Parser
import Lam.Result
import Lam.TypeChecker
import Lam.Utils
import Lam.Terminal.Raw
import Lam.Terminal.ReadRepl

-- TODO: report cyclic dependencies
loadFile :: String -> Result ()
loadFile fName = do
  isUntyped <- askUntyped
  sc        <- liftIO (readFile fName)
  prog      <- liftEither (parseProg isUntyped sc)
  mapM_ (\case {EvalC _ -> pure (); ReadC _ -> pure (); c -> handleCommand c}) prog

handleTypedef :: Id -> RawTypeL -> Result ()
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
      Just _  ->
        let normalizedExpr = eval expr in
        let msg = untypedPrettyPrint normalizedExpr in
        liftIO (putStrLnFlush msg)

handleCheck :: RawExpr -> Result ()
handleCheck rExpr = do
  gctx    <- get
  expr    <- liftEither (eraseNames gctx rExpr)
  isUntyped <- askUntyped
  if isUntyped then
    throwError "Trying to check type of an expr in an untyped context."
  else
    case typeCheck expr of
      Nothing -> throwError "Typing error."
      Just t  ->
        let msg = prettyPrintType t in
        liftIO (putStrLnFlush msg)

handleCommand :: Command -> Result ()
handleCommand c =
  case c of
    TypedefC (macroName, macroType) -> handleTypedef macroName macroType
    DefineC  (macroName, macroExpr) -> handleDefine macroName macroExpr
    EvalC rExpr                     -> handleEval rExpr
    CheckC rExpr                    -> handleCheck rExpr
    LoadC path                      -> loadFile path
    ReadC varName                   -> do
      exprS <- liftIO (readRepl [] "")
      isUntyped <- askUntyped
      expr <- liftEither (parseRawExpr isUntyped exprS)
      handleDefine varName expr
    ExitC -> return ()

repl :: CmdHistory -> Result ()
repl h = do
  cmdStr <- liftIO (readRepl h "> ")
  let h' = if null cmdStr then h else cmdStr : h
  isUntyped <- askUntyped
  case parseCommand isUntyped cmdStr of
    Left err -> do
      liftIO (putStrLnFlush ("Error parsing command: " <> err))
      repl h'
    Right ExitC -> return ()
    Right cmd -> do
        catchError (handleCommand cmd) (liftIO . putStrLnFlush)
        repl h'

replWrapper :: Result ()
replWrapper = runInRawMode (repl [])

handleFile :: String -> Result ()
handleFile fName = do
  isUntyped <- askUntyped
  sc      <- liftIO $ readFile fName
  prog    <- liftEither (parseProg isUntyped sc)
  mapM_ handleCommand prog

handleFileWrapper :: String -> Result ()
handleFileWrapper = runInRawMode . handleFile
