module Main where

-- import System.Random

-- [year, starved, population, growth, acres, yield, ratsAte, store]

inputed :: [Integer]
inputed = [ 20, -5, 2000, 1015]

city :: [Integer]
city = [ 0, 0, 95, 5, 1000, 3, 200, 3000]

-- rando :: IO Int
-- rando = getStdRandom (randomR (1, 10))

turn' :: Num t => t -> t -> t -> t -> [t]
turn' a b c d = [x, c, d]
  where x = a + b


-- promptLine :: String -> IO String
-- promptLine prompt = do
--     putStr prompt
--     getLine

main :: IO ()
main = do
  print $ turn' 1 2 3 4
  print city
  let foo = inputed!!3
  print foo




  -- putStrLn "HAMURABI"
  -- putStrLn "CREATIVE COMPUTING MORRISTOWN, NEW JERSEY"
  -- putStrLn " "
  -- putStrLn "TRY YOUR HAND AT GOVERNING ANCIENT SUMERIA"
  -- putStrLn "FOR A TEN-YEAR TERM OF OFFICE."
  -- line <- getLine
  -- putStrLn ("FOR A " ++ line ++ " TERM")
  -- print (turn' 1 2)



  -- D1=0   -- people died total ???
  -- P1=0   -- percent of population starved per year on avg
  -- Z=0    -- year
  -- P=95   -- population
  -- S=2800 -- bushels in store
  -- H=3000 --
  -- E=H-S  -- rats ate
  -- Y=3    -- bushels per acre
  -- A=H/Y  -- acres
  -- I=5    -- population growth
  -- Q=1
  -- D=0    -- starved per year
  -- C=0    -- a random number ???
  -- L=A/P  -- acres per person

-- How many acres do you wish to buy or sell?
-- How many bushels do you wish to feed your people?
-- How many acres do you wish to plant with seed?

-- Hammurabi: I beg to report to you,
-- In Year 3, 4 people starved.
-- 4 people came to the city.
-- The city population is now 108.
-- The city now owns 840 acres.
-- You harvested 5 bushels per acre.
-- Rats ate 0 bushels.
-- You now have 4592 bushels in store.
-- 4592 bushels remaining
-- Land is trading at 21 bushels per acre.

-- [year, starved, population, growth, acres, yield, ratsAte, store]

-- buy sell feed seed
