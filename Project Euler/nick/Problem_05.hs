import PrimeFactors
import Data.List

findFactors (n:ns) fs = findFactors ns (addFactors (allPrimeFactors n) fs)
  where
    addFactors ns fs = (ns \\ fs) ++ fs
findFactors [] fs = fs

main = putStrLn ((show (sort factorList)) ++ ": " ++ (show (product factorList)))
  where
    factorList = findFactors [ 1 .. 20 ] []
