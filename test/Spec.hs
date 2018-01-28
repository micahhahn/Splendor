import Test.Tasty
import Test.Tasty.HUnit

import Data.Array
import Splendor.Data
import Splendor.Data.Gem
import qualified Splendor.Data.GameState as G
import qualified Splendor.Data.Card as C
import qualified Splendor.Data.Noble as N
import qualified Splendor.Data.PlayerState as P

main :: IO ()
main = defaultMain tests

tests = testGroup "Tests" $ [ wildsRequiredTests
                            , validateActionTests
                            ]

gemListArray = listArray (Diamond, Onyx)

wildsRequiredTests = testGroup "wildsRequired"
    [ testCase "Sufficient Resources 1"   $ wildsRequired (gemListArray [1, 0, 0, 0, 0]) (gemListArray [1, 0, 0, 0, 0]) @?= 0 
    , testCase "Sufficient Resources 2"   $ wildsRequired (gemListArray [1, 2, 0, 0, 0]) (gemListArray [1, 1, 0, 0, 0]) @?= 0 
    , testCase "Insufficient Resources 1" $ wildsRequired (gemListArray [0, 0, 0, 0, 0]) (gemListArray [1, 0, 0, 0, 0]) @?= 1 
    ]

gameState = G.GameState { G._cards = take 4 C.gameCards
                        , G._nobles = take 3 N.gameNobles
                        , G._remainingCards = drop 4 C.gameCards
                        , G._remainingNobles = drop 3 C.gameNobles
                        , G._remainingWilds = 5
                        , G._playerStates = [ P.PlayerState { P._cards = take 1 C.gameCards
                                                            , P._reservedCards = (take 1 . drop 1) C.gameCards
                                                            }
                                            ]
                        }

card1 = Card { _level = 1, _bonus = Diamond, _prestige = 0, _cost = gemArray [(Diamond, 0), (Sapphire, 1), (Emerald, 2), (Ruby, 1), (Onyx, 1)] }
card2 = Card { _level = 1, _bonus = Sapphire, _prestige = 0, _cost = gemArray [(Diamond, 1), (Sapphire, 0), (Emerald, 1), (Ruby, 1), (Onyx, 1)] }
card3 = Card { _level = 1, _bonus = Emerald, _prestige = 0, _cost = gemArray [(Diamond, 0), (Sapphire, 1), (Emerald, 0), (Ruby, 2), (Onyx, 2)] }

validateActionTests = testGroup "validateAction"
    [

    ]