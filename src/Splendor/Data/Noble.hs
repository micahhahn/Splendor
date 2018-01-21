{-# LANGUAGE TemplateHaskell #-}

module Splendor.Data.Noble (
    Noble(..), 
    prestige,
    cost,
    gameNobles
) where

import Control.Lens

import Splendor.Data.Gem

data Noble = Noble { _prestige :: Int
                   , _cost :: [(Gem, Int)]
                   } deriving (Show, Eq)

makeLenses ''Noble

gameNobles :: [Noble]
gameNobles = [ Noble { _prestige = 3, _cost = [(Diamond, 3), (Sapphire, 3), (Emerald, 0), (Ruby, 0), (Onyx, 3)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 4), (Sapphire, 4), (Emerald, 0), (Ruby, 0), (Onyx, 0)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 3), (Sapphire, 3), (Emerald, 3), (Ruby, 0), (Onyx, 0)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 4), (Ruby, 4), (Onyx, 0)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 4), (Sapphire, 0), (Emerald, 0), (Ruby, 0), (Onyx, 4)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 3), (Sapphire, 0), (Emerald, 0), (Ruby, 3), (Onyx, 3)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 3), (Emerald, 3), (Ruby, 3), (Onyx, 0)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 0), (Ruby, 4), (Onyx, 4)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 0), (Emerald, 3), (Ruby, 3), (Onyx, 3)] }
             , Noble { _prestige = 3, _cost = [(Diamond, 0), (Sapphire, 4), (Emerald, 4), (Ruby, 0), (Onyx, 0)] }
             ]