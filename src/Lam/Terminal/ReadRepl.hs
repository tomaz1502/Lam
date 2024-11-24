module Lam.Terminal.ReadRepl where

import System.Console.ANSI

import GHC.IO.Handle
import GHC.IO.StdHandles
import System.IO (hReady)
import System.Posix.Terminal
import System.Posix (stdInput)

getKey :: IO [Char]
getKey = reverse <$> getKey' ""
  where getKey' chars = do
          char <- getChar
          more <- hReady stdin
          (if more then getKey' else return) (char:chars)

readRepl :: IO String
readRepl = do
  loop "" 0
  where
    loop cmd pos = do
      setCursorColumn 0
      clearLine
      putStr ("> " ++ cmd)
      setCursorColumn (pos + 2)
      hFlush stdout
      k <- getKey
      case k of
        "\n" -> putStr "\n" >> return cmd
        "\ESC[A" -> loop cmd pos
        "\ESC[B" -> loop cmd pos
        "\ESC[C" -> loop cmd (min (pos + 1) (length cmd))
        "\ESC[D" -> loop cmd (max (pos - 1) 0)
        "\DEL"   ->
            let cmd' = take (pos - 1) cmd ++ drop pos cmd in
            loop cmd' (max (pos - 1) 0)
        _ ->
            let cmd' = take pos cmd ++ k ++ drop pos cmd in
            loop cmd' (min (pos + 1) (length cmd'))

setRawMode :: TerminalAttributes -> IO ()
setRawMode attrs = do
  let rawAttrs = withRawMode attrs
  setTerminalAttributes stdInput rawAttrs Immediately

withRawMode :: TerminalAttributes -> TerminalAttributes
withRawMode attrs =
  let withoutMode' = flip withoutMode in
      foldl (\a f -> f a) attrs
        [ withoutMode' EnableEcho
        , withoutMode' ProcessInput
        , withoutMode' ExtendedFunctions
        ]
