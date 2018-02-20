{-# LANGUAGE TemplateHaskell #-}

module Splendor.Data.PlayerState (
    PlayerState(..),
    cards,
    reservedCards,
    gems,
    wilds,
    nobles
) where

import Control.Lens
import Data.Array

import Splendor.Data.Card
import Splendor.Data.Gem
import Splendor.Data.Token
import Splendor.Data.Gem
import qualified Splendor.Data.Noble as N

data PlayerState = PlayerState { _cards :: [Card] 
                               , _reservedCards :: [Card]
                               , _gems :: Array Gem Int
                               , _wilds :: Int
                               , _nobles :: [N.Noble]
                               } deriving (Show, Eq)

makeLenses ''PlayerState