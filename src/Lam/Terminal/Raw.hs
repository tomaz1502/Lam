module Lam.Terminal.Raw where

import System.Posix.Terminal
import System.Posix (stdInput)
import Control.Monad.Cont (MonadIO, liftIO)

withRawMode :: TerminalAttributes -> TerminalAttributes
withRawMode attrs =
  let withoutMode' = flip withoutMode in
      foldl (\a fn -> fn a) attrs
        [ withoutMode' EnableEcho
        , withoutMode' ProcessInput
        , withoutMode' ExtendedFunctions
        ]

setRawMode :: TerminalAttributes -> IO ()
setRawMode attrs = do
  let rawAttrs = withRawMode attrs
  setTerminalAttributes stdInput rawAttrs Immediately

runInRawMode :: MonadIO m => m a -> m a
runInRawMode m = do
  attrs <- liftIO (getTerminalAttributes stdInput)
  liftIO (setRawMode attrs)
  a <- m
  liftIO (setTerminalAttributes stdInput attrs Immediately)
  return a
