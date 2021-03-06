module Main where

import MyRandom

-- [year, starved, population, growth, acres, yield, ratsAte, store]

inputed :: [Integer]
inputed = [ 20, -5, 2000, 1015]

city :: [Integer]
city = [ 0, 0, 95, 5, 1000, 3, 200, 3000]

report :: (Num a, Show a) => [a] -> IO ()
report stats = do
  putStrLn $ "Hammurabi: I beg to report to you," ++ "\n" ++ "In Year " ++ show (stats!!0) ++ ", " ++ show (stats!!1) ++ " people starved." ++ "\n" ++ show (stats!!3) ++ " people came to the city. The city population is now " ++ show (stats!!2 + stats!!3) ++ "." ++ "\n" ++ "The city now owns " ++ show (stats!!4) ++ " acres. You harvested " ++ show (stats!!5) ++ " bushels per acre." ++ "\n" ++ "Rats ate " ++ show (stats!!6) ++ " bushels. You now have " ++ show (stats!!7 - stats!!6) ++ " bushels in store." ++ "\n"

-- turn' :: Num t => t -> t -> t -> t -> [t]
-- turn' a b c d = [x, c, d]
--   where x = a + b

main :: IO ()
main = do
  putStrLn "HAMURABI"
  putStrLn "********"
  report city
  putStrLn "********"
  putStrLn $ "Hammurabi, land is trading at " ++ show (city!!5) ++ " bushels per acre."
  putStrLn "Hammurabi, How many bushels will you trade?"
  trade <- getLine
  putStrLn "Hammurabi, how much will you feed your people?"
  feed <- getLine
  putStrLn "Hammurabi, how many acres will you seed?"
  seed <- getLine
  print $ [trade, feed, seed]








  -- print $ "Hammurabi: I beg to report to you,"
  -- print $ "In Year " ++ show (city!!0) ++ ", " ++ show (city!!1) ++ " people starved."
  -- print $ show (city!!3) ++ " people came to the city. The city population is now " ++ show (city!!2 + city!!3) ++ "."
  -- print $ "The city now owns " ++ show (city!!4) ++ " acres. You harvested " ++ show (city!!5) ++ " bushels per acre."
  -- print $ "Rats ate " ++ show (city!!6) ++ " bushels. You now have " ++ show (city!!7) ++ " bushels in store."

  -- You now have 4592 bushels in store.
  -- 4592 bushels remaining
  -- Land is trading at 21 bushels per acre.

  -- line <- getLine
  -- let foo  = read line
  -- let bar = city!!3
  -- let foobar = show (foo + bar)
  -- putStrLn ("FOR A " ++ foobar ++ " TERM")

  -- "Hammurabi: I beg to report to you,"
  -- "In Year " ++ show city!!0 ++ ", " ++ city!!0 ++ " people starved."
  -- 4 people came to the city.
  -- The city population is now 108.
  -- The city now owns 840 acres.
  -- You harvested 5 bushels per acre.
  -- Rats ate 0 bushels.
  -- You now have 4592 bushels in store.
  -- 4592 bushels remaining
  -- Land is trading at 21 bushels per acre.





  -- putStrLn "HAMURABI"
  -- putStrLn "CREATIVE COMPUTING MORRISTOWN, NEW JERSEY"
  -- putStrLn " "
  -- putStrLn "TRY YOUR HAND AT GOVERNING ANCIENT SUMERIA"
  -- putStrLn "FOR A TEN-YEAR TERM OF OFFICE."
  -- line <- getLine
  -- putStrLn ("FOR A " ++ line ++ " TERM")
  -- print (turn' 1 2)



      -- putStrLn "HAMURABI"
      -- putStrLn " "
      -- let (n,_) = rollDie2
      -- print n
      -- print rollDie1
      -- print rollDie2

  -- gen <- getStdGen
  -- let (n, _) = randomR(1, 10) gen :: (Int, StdGen)
  -- let (g, _) = randomR(11, 20) gen :: (Int, StdGen)
  -- print n
  -- print g


  -- print $ turn' 1 2 3 4
  -- print city
  -- let foo = inputed!!3
  -- print foo




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
