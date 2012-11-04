isPrime m
 | m < 1     = error "Prime test positive integers only"
 | m == 1    = False
 | m == 2    = True
 | otherwise = isPrime' m 2
  where isPrime' m k
         | k^2 > m        = True
         | m `mod` k == 0 = False
         | otherwise      = isPrime' m (k+1) 

primeList = [n | n <- [1..], isPrime n]

main = putStrLn . show . last $ take 10001 primeList