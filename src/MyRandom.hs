module MyRandom where

-- import Control.Monad.State
-- import System.Random
-- import Control.Applicative
--
-- type R a = State StdGen a
--
-- runRandom :: R a -> Int -> a
-- runRandom action seed = evalState action $ mkStdGen seed
--
-- rand :: R Double
-- rand = do
--   gen <- get
--   let (r, gen') = random gen
--   put gen'
--   return r

-- MonadicRandomGenerator.hs (Learn You a Haskell for Great Good!)

import System.Random
import Control.Monad.State

randomSt :: (RandomGen g, Random a) => State g a
-- The following line was wrong in the book:
-- randomSt = State random
randomSt = do
 gen <- get
 let (value,nextGen) = random gen
 put nextGen
 return value

randomSt1 = (runState randomSt (mkStdGen 1)) :: (Int,StdGen)
randomSt2 = (runState randomSt (mkStdGen 2)) :: (Float,StdGen)

threeCoins :: State StdGen (Bool,Bool,Bool)
threeCoins = do
 a <- randomSt
 b <- randomSt
 c <- randomSt
 return (a,b,c)

threeCoins1 = runState threeCoins (mkStdGen 33)
threeCoins2 = runState threeCoins (mkStdGen 2)

-- rollDie and rollNDice are not explained in the book LYAHFGG.
-- But these functions are interesting and complementary:

rollDie :: State StdGen Int
rollDie = do
 generator <- get
 let (value, newGenerator) = randomR (1,10) generator
 put newGenerator
 return value

rollDie1 = runState rollDie (mkStdGen 1)
rollDie2 = runState rollDie (mkStdGen 2)

rollNDice :: Int -> State StdGen [Int]
rollNDice 0 = do
 return []
rollNDice n = do
 value <- rollDie
 list <- rollNDice (n-1)
 return (value:list)

rollNDice1 = runState (rollNDice 10) (mkStdGen 1)
rollNDice2 = runState (rollNDice 20) (mkStdGen 2)
