import PrimeFactors
import Data.List

getPrimeNumbers max = getPrimeNumbers' (2:[ 3, 5 .. ]) max []
  where
    getPrimeNumbers' (i:is) max ps
      | length ps >= max = ps
      | isPrime i        = getPrimeNumbers' is max (i:ps)
      | otherwise        = getPrimeNumbers' is max ps

main = do
  putStrLn ((show     6) ++ ": " ++ (show (last (sort (getPrimeNumbers     6)))))
  putStrLn ((show   101) ++ ": " ++ (show (last (sort (getPrimeNumbers   101)))))
  putStrLn ((show  1001) ++ ": " ++ (show (last (sort (getPrimeNumbers  1001)))))
  putStrLn ((show 10001) ++ ": " ++ (show (last (sort (getPrimeNumbers 10001)))))
