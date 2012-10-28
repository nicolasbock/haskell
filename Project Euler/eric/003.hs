--This is clear and correct but it will never finish running.

factors n
 | n <= 0    = error("Not a counting number")
 | n == 1    = [1]
 | n == 2    = [1, 2]
 | otherwise = [1] ++ [m | m <- [2..n-1], n `mod` m == 0] ++ [n]

isPrime m 
 | m == 1             = False
 | factors m == [1,m] = True 
 | otherwise          = False

primeFactors n = [m | m <- factors n, isPrime m]

main = putStrLn (show (maximum (primeFactors 600851475143)))