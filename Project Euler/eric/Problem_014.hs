import Data.List

collatz n 
 | n == 1    = [1]
 | otherwise = n:(collatz m)
 where m = (if odd n then 3*n+1 else n `div` 2) 

lengths max = [length (collatz n) | n <- [1..max] ]

maxLength max = maximum (lengths max)

locations max = [i+1 | i <- [0..max-1], (lengths max) !! i == maxLength max]

main = putStrLn (show (locations 999999))