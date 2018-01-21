{-# LANGUAGE TemplateHaskell #-}

module Splendor.Data.PlayerState (
    PlayerState(..),
    cards,
    reservedCards,
    tokens,
    nobles
) where

import Control.Lens

import Splendor.Data.Card
import Splendor.Data.Token
import qualified Splendor.Data.Noble as N

data PlayerState = PlayerState { _cards :: [Card] 
                               , _reservedCards :: [Card]
                               , _tokens :: [Token]
                               , _nobles :: [N.Noble]
                               } deriving (Show, Eq)

makeLenses ''PlayerState