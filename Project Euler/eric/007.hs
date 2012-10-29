--This is clear and correct but will never finish running.

factors n
 | n <= 0    = error "Not a counting number" 
 | n == 1    = [1]
 | n == 2    = [1, 2]
 | otherwise = [1] ++ [m | m <- [2..n-1], n `mod` m == 0] ++ [n]

isPrime m 
 | m == 1             = False
 | factors m == [1,m] = True 
 | otherwise          = False

primeList = [n | n <- [1..], isPrime n]

main = putStrLn . show . last $ take 10001 primeList