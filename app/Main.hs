module Main where

main :: IO ()
main = print $ euler1 1000


euler1 :: Int -> Int
euler1 x = sum filterednumbers
  where
    numberslist = [1 .. (x - 1)]
    numbersfilter n 
      = rem n 3 == 0 || rem n 5 == 0
    filterednumbers = filter numbersfilter numberslist
    
