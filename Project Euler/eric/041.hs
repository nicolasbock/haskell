--This is vastly too slow.

import Data.List
import Data.Char

isPandigital n
 | length digits > 9                     = False
 | digits == take (length digits) [1..9] = True
 | otherwise                             = False
  where digits = sort $ map digitToInt (show n)

isPrime n
 | n == 1    = False
 | n == 2    = True
 | otherwise = isPrime' n 2
  where isPrime' m k
         | k^2 > m        = True
         | m `mod` k == 0 = False
         | otherwise      = isPrime' m (k+1) 

main = putStrLn . show $ take 1 [n | n <- [987654321,987654320..2], isPandigital n && isPrime n]
