fibonacci 1 = 1
fibonacci 2 = 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

fiblist max list
 | list /= [] && list !! 0 >= max = list
 | otherwise                      = fiblist max ((fibonacci ((length list)+1)):list)

sumEven [] = 0
sumEven (n:list)
 | list == [] = 0
 | even n     = n + sumEven list
 | odd  n     =     sumEven list

main = putStrLn (show (sumEven (fiblist 4000000 [])))