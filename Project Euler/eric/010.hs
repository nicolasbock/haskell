--Not fast enough.

import Data.List

eratosthenes n = sort $ eratosthenes' [2..n] []
  where eratosthenes' [] list = list
        eratosthenes' (m:list1) list2 = eratosthenes' (removeMultiples m list1)  (m:list2)

removeMultiples n list = removeMultiples' n list []
  where removeMultiples' n [] list = sort list
        removeMultiples' n (m:list1) list2
         | m `mod` n == 0 = removeMultiples' n list1 list2
         | otherwise      = removeMultiples' n list1 (m:list2) 

main = putStrLn . show . sum $ eratosthenes 1999999