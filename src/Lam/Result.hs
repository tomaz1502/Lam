{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE FlexibleContexts #-}

module Lam.Result where

import Control.Monad.RWS (MonadIO, MonadReader, ask)
import Control.Monad.Except (MonadError)

data Flag = Untyped
  deriving Eq

type Result a =
  forall (m :: * -> *). ( MonadIO m
                        , MonadError String m
                        , MonadReader [Flag] m
                        ) => m a

askUntyped :: Result Bool
askUntyped = (Untyped `elem`) <$> ask

