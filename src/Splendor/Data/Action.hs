module Splendor.Data.Action (
    Action(..)
) where

import Splendor.Data.Gem
import Splendor.Data.Token
import Splendor.Data.Card

data Action = Take [Gem] [Token]
            | Reserve Card (Maybe Gem)
            | Purchase Card
            deriving (Show, Eq)