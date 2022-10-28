{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE KindSignatures #-}

module Lam.Handler ( repl
                   , handleFile
                   , Result
                   , GlobalContext
                   , emptyContext
                   , Flag(..)
                   ) where

import Control.Monad.RWS (MonadReader, ask)
import Control.Monad.Except ( liftEither, MonadIO(liftIO), ExceptT, MonadError )
import Data.Map qualified as M
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Evaluator ( eval )
import Lam.Expr
import Lam.Lexer ( runAlex, Alex )
import Lam.Parser
import Lam.TypeChecker

data Flag = Untyped
  deriving Eq

type Result a =
  forall (m :: * -> *). ( MonadIO m
                        , MonadError String m
                        , MonadReader [Flag] m
                        ) => m a

askUntyped :: Result Bool
askUntyped = (Untyped `elem`) <$> ask

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
      liftIO (print (eval e))
    else
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
