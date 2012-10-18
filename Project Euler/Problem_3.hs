-- Prime factorization.
getFactor i factor fs
  | mod i factor == 0 = getFactor (removeFactor i factor) (factor+1) (factor:fs)
  | i < factor        = fs
  | otherwise         = getFactor i (factor+1) fs

removeFactor i factor
  | mod i factor == 0 = removeFactor (div i factor) factor
  | otherwise         = i

main = do
  putStrLn (show (reverse (getFactor 13195 2 [])))
  putStrLn (show (reverse (getFactor 600851475143 2 [])))
