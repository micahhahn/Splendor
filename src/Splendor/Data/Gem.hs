module Splendor.Data.Gem (
    Gem(..)
) where

data Gem = Diamond
         | Sapphire
         | Emerald
         | Ruby
         | Onyx
         deriving (Show, Eq, Enum)