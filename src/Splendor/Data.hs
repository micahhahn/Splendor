module Splendor.Data (
    validateAction,
    applyAction,
    wildsRequired
) where

import System.Random
import Control.Lens
import Data.Array
import Data.List (findIndex)
import Data.Maybe (fromJust)

import qualified Splendor.Data.GameState as G
import qualified Splendor.Data.PlayerState as P
import Splendor.Data.Action
import Splendor.Data.Gem

wildsRequired :: Array Gem Int -> Array Gem Int -> Int
wildsRequired l r = (sum . fmap sub) (zip (elems l) (elems r)) 
    where sub (l, r) = max (r - l) 0

validateAction :: G.GameState -> Int -> Action -> Either String ()
validateAction g _ (Take gs ts)
    | sum gs > 3                                                        = Left "You can take at most three gems."
    | wildsRequired gs (g ^. G.remainingGems) > 0                       = Left "Those gems are not available."
    | any (>=2) gs && sum gs == 3                                           = Left "You may only take two of a kind."
    | any (==2) gs && elems (g ^. G.remainingGems) !! (fromJust (findIndex (==2) (elems gs))) < 4 = Left "You may only take two of a kind if there are 4 available."
    | otherwise                                   = Right ()
validateAction g i (Reserve c mg)
    | length (((g ^. G.playerStates) !! i) ^. P.reservedCards) > 2  = Left "You can have at most three reserved cards."
    | not (elem c (g ^. G.cards))                                   = Left "You must reserve a card currently on the board."
    | otherwise                                                     = Right ()
validateAction g _ (Purchase c) = Right ()

applyAction :: (StdGen, G.GameState) -> Int -> Action -> Either String (StdGen, G.GameState)
applyAction (r, g) i a = case validateAction g i a of
    Left s -> Left s
    Right _ -> internalApplyAction (r, g) i a

internalApplyAction (r, g) i (Take gs ts) = Right (r, g)
internalApplyAction (r, g) i (Reserve c mg) = Right (r, g)
internalApplyAction (r, g) i (Purchase c) = Right (r, g)