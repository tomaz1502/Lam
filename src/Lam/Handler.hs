{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Handler ( repl
                   , handleFile
                   , Result
                   , GlobalContext
                   , emptyContext
                   ) where

import Control.Monad.Except ( liftEither, MonadIO(liftIO), ExceptT )
import Data.Map qualified as M
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Evaluator ( eval )
import Lam.Expr
import Lam.Lexer ( runAlex, Alex )
import Lam.Parser
import Lam.TypeChecker

type Result a = ExceptT String IO a

-- TODO: report cyclic dependencies
loadFile :: String -> Result GlobalContext
loadFile fName = do
    sc <- liftIO (readFile fName)
    f (parseProg sc) emptyContext
    where
      f :: [Command] -> GlobalContext -> Result GlobalContext
      f [] ctx = return ctx
      f ((EvalC _):cs) gctx = f cs gctx -- load just mean the macros
      f (c:cs) gctx =
          handleCommand c gctx >>= \gctx' -> f cs gctx'

handleCommand :: Command -> GlobalContext -> Result GlobalContext
handleCommand (TypedefC (s, rt)) gctx = do
    t <- liftEither (expandType gctx rt)
    let boundTypes' = M.insert s t (boundTypes gctx)
     in return $ gctx {boundTypes = boundTypes'}
handleCommand (DefineC (s, re)) gctx = do
    e <- liftEither (eraseNames gctx re)
    let boundExprs' = M.insert s e (boundExprs gctx)
     in return $ gctx {boundExprs = boundExprs'}
handleCommand (EvalC re) gctx = do
    e <- liftEither (eraseNames gctx re)
    case typeCheck e of
      Nothing -> liftIO (putStrLn "typing error")
      Just t  -> liftIO (putStrLn (show (eval e) <> " :: " <> show t))
    return gctx
handleCommand (LoadC path) gctx = do
    gctx' <- loadFile path
    return (ctxUnion gctx' gctx)

repl :: GlobalContext -> Result ()
repl ctx = do
  cmd <- liftIO readRepl
  ctx' <- handleCommand (parseCommand cmd) ctx
  repl ctx'
  where readRepl :: IO String
        readRepl = putStr "> " >> hFlush stdout >> getLine

handleFile :: String -> Result ()
handleFile fName = do
  sc <- liftIO $ readFile fName
  f (parseProg sc) emptyContext
  where
    f :: [Command] -> GlobalContext -> Result ()
    f [] _       = return ()
    f (c:cs) gctx = handleCommand c gctx >>= f cs

parseCommand :: String -> Command
parseCommand s =
    case runAlex s hParseCommand of
      Left err -> error ("parsing error: " <> err)
      Right p  -> p

parseProg :: String -> [Command]
parseProg s =
    case runAlex s hParseProg of
      Left err -> error ("parsing error: " <> err)
      Right p  -> p
