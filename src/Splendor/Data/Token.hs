module Splendor.Data.Token (
    Token(..)
) where

import Splendor.Data.Gem

data Token = GemToken Gem
           | GoldToken
           deriving (Show, Eq)