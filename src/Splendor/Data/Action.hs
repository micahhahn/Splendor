module Splendor.Data.Action (
    Action(..)
) where

import Data.Array

import Splendor.Data.Gem
import Splendor.Data.Token
import Splendor.Data.Card

data Action = Take (Array Gem Int) (Array Gem Int)
            | Reserve Card (Maybe Gem)
            | Purchase Card
            deriving (Show, Eq)