primeFactors n 
 | n <= 1    = []
 | n <= 3    = [(n,1)]
 | otherwise = allPrimeFactors 2 n
  where allPrimeFactors k n
         | k > n          = []
         | n `mod` k == 0 = (k, snd $ remove k n):(allPrimeFactors (k+1) (fst $ remove k n))
         | otherwise      = allPrimeFactors (k+1) n
        remove k n = remove' k n 0
          where remove' k n m
                 | n `mod` k /= 0 = (n, m)
                 | otherwise      = remove' k (n `div` k) (m+1) 

main = putStrLn . show . fst . last $ primeFactors 600851475143
