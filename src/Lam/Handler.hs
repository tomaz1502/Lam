{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Handler ( repl
                   , handleFile
                   , GlobalContext
                   , emptyContext
                   , parseDefine
                   , parseEval
                   ) where

import Control.Monad.State ()
import Data.Map qualified as M
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Expr ( eval, Expr )
import Lam.Parser
    ( emptyContext, hParseDefine, hParseEval, GlobalContext )
import Lam.Lexer ( runAlex, Alex )

handleCommand :: String -> GlobalContext -> IO GlobalContext
handleCommand command ctx = do
  case take 2 command of
    ":q" -> exitSuccess
    "ev" -> print (eval $ parseEval command ctx) >> return ctx
    "de" -> return (parseDefine command ctx)
    _    -> print "Unknown command!" >> return ctx

repl :: GlobalContext -> IO ()
repl ctx = do
  putStr "> "
  hFlush stdout
  command <- getLine
  ctx' <- handleCommand command ctx
  repl ctx'

handleFile :: String -> IO ()
handleFile fName = do
  sc <- readFile fName
  f (lines sc) emptyContext
  where
    f :: [String] -> GlobalContext -> IO ()
    f [] _ = return ()
    f (c:cs) ctx = handleCommand c ctx >>= f cs

getParser :: Alex a -> String -> a
getParser f s =
    case runAlex s f of
      Left err -> error "parsing error"
      Right p  -> p

parseEval :: String -> GlobalContext -> Expr
parseEval = getParser hParseEval

parseDefine :: String -> GlobalContext -> GlobalContext
parseDefine = getParser hParseDefine

