--This is correct but entirely too slow.

import Data.List

collatz n 
 | n == 1 = [1]
 | n even = n:(collatz (n `div` 2))
 | n odd  = n:(collatz (3*n+1)) 

lengths max = [length (collatz n) | n <- [1..max] ]

maxLength max = maximum (lengths max)

locations max = [i+1 | i <- [0..max-1], (lengths max) !! i == maxLength max]

main = putStrLn (show (locations 999999))