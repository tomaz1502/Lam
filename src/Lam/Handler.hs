{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ConstraintKinds #-}

module Lam.Handler ( repl
                   , handleFile
                   , Command
                   , GlobalContext
                   , emptyContext
                   , parseDefine
                   , parseEval
                   ) where

import Control.Monad.Except
import Data.Map qualified as M
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Expr ( eval, Expr )
import Lam.Parser
    ( emptyContext, hParseDefine, hParseEval, GlobalContext )
import Lam.Lexer ( runAlex, Alex )

type Command a = ExceptT String IO a

-- TODO: report cyclic dependencies
loadFile :: String -> Command GlobalContext
loadFile fName = do
    sc <- liftIO (readFile fName)
    f (lines sc) emptyContext
    where
      -- TODO: abstract pattern here and in handleFile
      f :: [String] -> GlobalContext -> Command GlobalContext
      f [] ctx = return ctx
      f (c:cs) ctx = case take 2 c of
                       "de" -> liftEither (parseDefine c ctx) >>= \ctx' -> f cs ctx'
                       "lo" -> let target = parseLoad c
                               in loadFile target >>= \ctx' ->
                                -- use ctx' on the left because
                                -- it was defined later, so should
                                -- have priority in the context
                                  f cs (M.union ctx' ctx)
                       _    -> f cs ctx

handleCommand :: String -> GlobalContext -> Command GlobalContext
handleCommand command ctx = do
  case take 2 command of
    ":q" -> liftIO exitSuccess
    "ev" -> liftEither (parseEval command ctx) >>= \e ->
            liftIO (print (eval e)) >>
            return ctx
    "de" -> liftEither $ parseDefine command ctx
    "lo" -> let target = parseLoad command
            in loadFile target >>= \ctx' -> return (M.union ctx' ctx)
    _    -> liftIO (print "Unknown command!") >> return ctx

repl :: GlobalContext -> Command ()
repl ctx = do
  command <- liftIO readRepl
  ctx' <- handleCommand command ctx
  repl ctx'
      where readRepl :: IO String
            readRepl = putStr "> " >> hFlush stdout >> getLine

handleFile :: String -> Command ()
handleFile fName = do
  sc <- liftIO $ readFile fName
  f (lines sc) emptyContext
  where
    f :: [String] -> GlobalContext -> Command ()
    f [] _ = return ()
    f (c:cs) ctx = handleCommand c ctx >>= f cs

getParser :: Alex a -> String -> a
getParser f s =
    case runAlex s f of
      Left err -> error "parsing error"
      Right p  -> p

parseEval :: String -> GlobalContext -> Either String Expr
parseEval = getParser hParseEval

parseDefine :: String -> GlobalContext -> Either String GlobalContext
parseDefine = getParser hParseDefine

parseLoad :: String -> String
parseLoad s = let s1 = dropWhile (/= '\"') s -- remove load command
                  s2 = drop 1 s1 -- remove quote
                  s3 = init (init s2) -- remove semicolon and other quote
              in s3

