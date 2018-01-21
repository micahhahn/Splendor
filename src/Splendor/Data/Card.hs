{-# LANGUAGE TemplateHaskell #-}

module Splendor.Data.Card (
    Card(..),
    level,
    bonus,
    prestige,
    cost,
    gameCards,
) where

import Control.Lens

import Splendor.Data.Gem

data Card = Card { _level :: Int
                 , _bonus :: Gem
                 , _prestige :: Int
                 , _cost :: [(Gem, Int)]
                 } deriving (Show, Eq)

makeLenses ''Card

gameCards :: [Card]
gameCards = [ Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 1), (Emerald, 2), (Ruby, 1), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 3), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 2), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 2), (Emerald, 2), (Ruby, 0), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = [(Diamond, 3), (Sapphire, 1), (Emerald, 0), (Ruby, 0), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 2), (Emerald, 0), (Ruby, 0), (Onyx, 2)] }
            , Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 1), (Emerald, 1), (Ruby, 1), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Diamond, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 4), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 0), (Emerald, 1), (Ruby, 1), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 0), (Emerald, 2), (Ruby, 2), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 0), (Emerald, 1), (Ruby, 2), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 2), (Ruby, 0), (Onyx, 2)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 1), (Emerald, 3), (Ruby, 1), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 2)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 3)] }
            , Card { _level = 1, _bonus = Sapphire, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 4), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 1), (Emerald, 0), (Ruby, 2), (Onyx, 2)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = [(Diamond, 2), (Sapphire, 1), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 2), (Emerald, 0), (Ruby, 2), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 1), (Emerald, 0), (Ruby, 1), (Onyx, 2)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 1), (Emerald, 0), (Ruby, 1), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 3), (Emerald, 1), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Emerald, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 4)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 2), (Emerald, 1), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 1), (Emerald, 1), (Ruby, 0), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 0, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 0, _cost = [(Diamond, 2), (Sapphire, 0), (Emerald, 1), (Ruby, 0), (Onyx, 2)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 0), (Emerald, 0), (Ruby, 1), (Onyx, 3)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 0, _cost = [(Diamond, 2), (Sapphire, 0), (Emerald, 0), (Ruby, 2), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 0, _cost = [(Diamond, 2), (Sapphire, 1), (Emerald, 1), (Ruby, 0), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Ruby, _prestige = 1, _cost = [(Diamond, 4), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 1), (Ruby, 3), (Onyx, 1)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 0, _cost = [(Diamond, 2), (Sapphire, 0), (Emerald, 2), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 1), (Emerald, 1), (Ruby, 1), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 2), (Ruby, 1), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 0, _cost = [(Diamond, 1), (Sapphire, 2), (Emerald, 1), (Ruby, 1), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 0, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 3), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 0, _cost = [(Diamond, 2), (Sapphire, 2), (Emerald, 0), (Ruby, 1), (Onyx, 0)] }
            , Card { _level = 1, _bonus = Onyx, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 4), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Diamond, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 3), (Ruby, 2), (Onyx, 2)] }
            , Card { _level = 2, _bonus = Diamond, _prestige = 1, _cost = [(Diamond, 2), (Sapphire, 3), (Emerald, 0), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Diamond, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 5), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Diamond, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 1), (Ruby, 4), (Onyx, 2)] }
            , Card { _level = 2, _bonus = Diamond, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 5), (Onyx, 3)] }
            , Card { _level = 2, _bonus = Diamond, _prestige = 3, _cost = [(Diamond, 6), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Sapphire, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 2), (Emerald, 3), (Ruby, 0), (Onyx, 3)] }
            , Card { _level = 2, _bonus = Sapphire, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 2), (Emerald, 2), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Sapphire, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 5), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Sapphire, _prestige = 2, _cost = [(Diamond, 5), (Sapphire, 3), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Sapphire, _prestige = 2, _cost = [(Diamond, 2), (Sapphire, 0), (Emerald, 0), (Ruby, 1), (Onyx, 4)] }
            , Card { _level = 2, _bonus = Sapphire, _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 6), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Emerald, _prestige = 1, _cost = [(Diamond, 2), (Sapphire, 3), (Emerald, 0), (Ruby, 0), (Onyx, 2)] }
            , Card { _level = 2, _bonus = Emerald, _prestige = 1, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 2), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Emerald, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 5), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Emerald, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 5), (Emerald, 3), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Emerald, _prestige = 2, _cost = [(Diamond, 4), (Sapphire, 2), (Emerald, 0), (Ruby, 0), (Onyx, 1)] }
            , Card { _level = 2, _bonus = Emerald, _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 6), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Ruby, _prestige = 1, _cost = [(Diamond, 2), (Sapphire, 0), (Emerald, 0), (Ruby, 2), (Onyx, 3)] }
            , Card { _level = 2, _bonus = Ruby, _prestige = 1, _cost = [(Diamond, 0), (Sapphire, 3), (Emerald, 0), (Ruby, 2), (Onyx, 3)] }
            , Card { _level = 2, _bonus = Ruby, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 5)] }
            , Card { _level = 2, _bonus = Ruby, _prestige = 2, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 5)] }
            , Card { _level = 2, _bonus = Ruby, _prestige = 2, _cost = [(Diamond, 1), (Sapphire, 4), (Emerald, 2), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Ruby, _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 6), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Onyx, _prestige = 1, _cost = [(Diamond, 3), (Sapphire, 2), (Emerald, 2), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Onyx, _prestige = 1, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 3), (Ruby, 0), (Onyx, 2)] }
            , Card { _level = 2, _bonus = Onyx, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 1), (Emerald, 4), (Ruby, 2), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Onyx, _prestige = 2, _cost = [(Diamond, 5), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Onyx, _prestige = 2, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 5), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 2, _bonus = Onyx, _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 6)] }
            , Card { _level = 3, _bonus = Diamond, _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 3), (Emerald, 3), (Ruby, 5), (Onyx, 3)] }
            , Card { _level = 3, _bonus = Diamond, _prestige = 4, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 0), (Ruby, 3), (Onyx, 6)] }
            , Card { _level = 3, _bonus = Diamond, _prestige = 4, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 7)] }
            , Card { _level = 3, _bonus = Diamond, _prestige = 5, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 7)] }
            , Card { _level = 3, _bonus = Sapphire, _prestige = 3, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 3), (Ruby, 3), (Onyx, 5)] }
            , Card { _level = 3, _bonus = Sapphire, _prestige = 4, _cost = [(Diamond, 7), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Sapphire, _prestige = 4, _cost = [(Diamond, 6), (Sapphire, 3), (Emerald, 0), (Ruby, 0), (Onyx, 3)] }
            , Card { _level = 3, _bonus = Sapphire, _prestige = 5, _cost = [(Diamond, 7), (Sapphire, 3), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Emerald, _prestige = 3, _cost = [(Diamond, 5), (Sapphire, 3), (Emerald, 0), (Ruby, 3), (Onyx, 3)] }
            , Card { _level = 3, _bonus = Emerald, _prestige = 4, _cost = [(Diamond, 0), (Sapphire, 7), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Emerald, _prestige = 4, _cost = [(Diamond, 3), (Sapphire, 6), (Emerald, 3), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Emerald, _prestige = 5, _cost = [(Diamond, 0), (Sapphire, 7), (Emerald, 3), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Ruby, _prestige = 3, _cost = [(Diamond, 3), (Sapphire, 5), (Emerald, 3), (Ruby, 0), (Onyx, 3)] }
            , Card { _level = 3, _bonus = Ruby, _prestige = 4, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 7), (Ruby, 0), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Ruby, _prestige = 4, _cost = [(Diamond, 0), (Sapphire, 3), (Emerald, 6), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Ruby, _prestige = 5, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 7), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Onyx, _prestige = 3, _cost = [(Diamond, 3), (Sapphire, 3), (Emerald, 5), (Ruby, 3), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Onyx, _prestige = 4, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 7), (Onyx, 0)] }
            , Card { _level = 3, _bonus = Onyx, _prestige = 4, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 3), (Ruby, 6), (Onyx, 3)] }
            , Card { _level = 3, _bonus = Onyx, _prestige = 5, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 7), (Onyx, 3)] }
            ]
                 