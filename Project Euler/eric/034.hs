--I don't understand why the upper bound I set on this problem is correct.

import Data.Char

factorial n
 | n < 2     = 1
 | otherwise = product [2..n]

main = putStrLn . show $ sum [n | n <- [3..10^5], n == sum (map factorial (map digitToInt $ show n))]