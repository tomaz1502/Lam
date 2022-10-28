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
loadFile :: String -> Bool -> Result GlobalContext
loadFile fName untyped = do
    sc <- liftIO (readFile fName)
    f (parseProg untyped sc) emptyContext
    where
      f :: [Command] -> GlobalContext -> Result GlobalContext
      f [] ctx = return ctx
      f ((EvalC _):cs) gctx = f cs gctx -- load just mean the macros
      f (c:cs) gctx =
          handleCommand c gctx untyped >>= \gctx' -> f cs gctx'

handleCommand :: Command -> GlobalContext -> Bool -> Result GlobalContext
handleCommand (TypedefC (s, rt)) gctx untyped =
    if untyped then
      liftEither (Left "trying to define a type in an untyped context!")
    else do
      t <- liftEither (expandType gctx rt)
      let boundTypes' = M.insert s t (boundTypes gctx)
       in return $ gctx {boundTypes = boundTypes'}
handleCommand (DefineC (s, re)) gctx untyped = do
    e <- liftEither (eraseNames gctx re)
    let boundExprs' = M.insert s e (boundExprs gctx)
     in return $ gctx {boundExprs = boundExprs'}
handleCommand (EvalC re) gctx untyped = do
    e <- liftEither (eraseNames gctx re)
    if untyped then
      liftIO (print (eval e))
    else
      case typeCheck e of
        Nothing -> liftIO (putStrLn "typing error")
        Just t  -> liftIO (putStrLn (show (eval e) <> " :: " <> show t))
    return gctx
handleCommand (LoadC path) gctx untyped = do
    gctx' <- loadFile path untyped
    return (ctxUnion gctx' gctx)

repl :: GlobalContext -> Bool -> Result ()
repl ctx untyped = do
  cmd <- liftIO readRepl
  ctx' <- handleCommand (parseCommand untyped cmd) ctx untyped
  repl ctx' untyped
  where readRepl :: IO String
        readRepl = putStr "> " >> hFlush stdout >> getLine

handleFile :: String -> Bool -> Result ()
handleFile fName untyped = do
  sc <- liftIO $ readFile fName
  f (parseProg untyped sc) emptyContext
  where
    f :: [Command] -> GlobalContext -> Result ()
    f [] _       = return ()
    f (c:cs) gctx = handleCommand c gctx untyped >>= f cs

getParser :: Alex a -> String -> a
getParser f s =
    case runAlex s f of
      Left err -> error ("parsing error:" <> err)
      Right p  -> p

parseCommand :: Bool -> String -> Command
parseCommand True  = getParser hParseUntypedCommand
parseCommand False = getParser hParseCommand

parseProg :: Bool -> String -> [Command]
parseProg True  = getParser hParseUntypedProg
parseProg False = getParser hParseProg
