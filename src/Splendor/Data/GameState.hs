{-# LANGUAGE TemplateHaskell #-}

module Splendor.Data.GameState (
    GameState(..),
    cards,
    nobles,
    remainingCards,
    remainingNobles,
    remainingGems,
    remainingWilds,
    playerStates
) where

import Control.Lens
import Data.Array

import Splendor.Data.Gem
import qualified Splendor.Data.Card as C
import qualified Splendor.Data.Noble as N
import qualified Splendor.Data.Token as T
import qualified Splendor.Data.PlayerState as P

data GameState = GameState { _cards :: [C.Card]
                           , _nobles :: [N.Noble]
                           , _remainingCards :: [C.Card]
                           , _remainingNobles :: [N.Noble]
                           , _remainingGems :: Array Gem Int
                           , _remainingWilds :: Int
                           , _playerStates :: [P.PlayerState]
                           } deriving (Show, Eq)

makeLenses ''GameState