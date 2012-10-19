-- Prime factorization.
getFactor i = getFactor' i 2
getFactor' i factor
  | mod i factor == 0 = factor:(getFactor' (removeFactor i factor) (factor+1))
  | i < factor        = []
  | otherwise         = getFactor' i (factor+1)

removeFactor i factor
  | mod i factor == 0 = removeFactor (div i factor) factor
  | otherwise         = i

main = do
  putStrLn (show (reverse (getFactor 13195)))
  putStrLn (show (reverse (getFactor 600851475143)))
