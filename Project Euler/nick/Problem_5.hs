import PrimeFactors

findFactors (n:ns) fs = findFactors ns (addFactors (allPrimeFactors n) (sort fs))
  where
    addFactors (n:ns) (f:fs)
      | n == f = addFactors ns fs
    addFactors [] fs = fs
findFactors [] fs = fs

main = putStrLn (show (findFactors [ 1 .. 20 ] []))
