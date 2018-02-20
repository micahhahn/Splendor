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

isSubset :: Array Gem Int -> Array Gem Int -> Bool
isSubset l r = any (> 0) $ zipWith (-) (elems l) (elems r)

wildsRequired :: Array Gem Int -> Array Gem Int -> Int
wildsRequired l r = (sum . fmap sub) (zip (elems l) (elems r)) 
    where sub (l, r) = max (r - l) 0

validateAction :: G.GameState -> Int -> Action -> Either String ()
validateAction g i (Take gs ts)
    | (sum . elems) playerGems + (sum . elems) gs - (sum . elems) ts > 10 = Left "You cannot have more than 10 tokens at the end of your turn."
    | not (isSubset ts playerGems)             = Left "You cannot return cards you do not own."
    | length gs > 3                            = Left "You can take at most three gems."
    | not (isSubset gs (g ^. G.remainingGems)) = Left "Those gems are not available."
    | (length . filter (> 0) . elems) gs > 1   = if any (> 1) gs then Left "You may only take one of each color." else Right ()
    | otherwise                                = case sum gs of
                                                   1 -> Right ()
                                                   2 -> if (g ^. G.remainingGems) ! (fst . head . filter (\x -> snd x > 0) . assocs) gs >= 4 then Right () else Left "You can only take 2 of a kind if there are at least 4 gems available."
                                                   3 -> Left "You can take at most 1 of a color"
    where playerGems = (((g ^. G.playerStates) !! i) ^. P.gems)

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