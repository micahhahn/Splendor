module Splendor.Data.Gem (
    Gem(..),
    gemArray
) where

import Data.Array

data Gem = Diamond
         | Sapphire
         | Emerald
         | Ruby
         | Onyx
         deriving (Show, Eq, Enum, Ord, Ix)

gemArray :: [(Gem, Int)] -> Array Gem Int
gemArray = array (Diamond, Onyx)