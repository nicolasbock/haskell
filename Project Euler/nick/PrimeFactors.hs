module PrimeFactors where

-- Prime factorization.
primeFactors i = getFactor i 2
  where
    getFactor i factor
      | mod i factor == 0 = factor:(getFactor (removeFactor i factor) (factor+1))
      | i < factor        = []
      | otherwise         = getFactor i (factor+1)
    removeFactor i factor
      | mod i factor == 0 = removeFactor (div i factor) factor
      | otherwise         = i

allPrimeFactors i = allPrimeFactors' i 2
  where
    allPrimeFactors' i factor
      | mod i factor == 0 = factor:(allPrimeFactors' (div i factor) factor)
      | i < factor        = []
      | otherwise         = allPrimeFactors' i (factor+1)
