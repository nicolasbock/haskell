module SumDigits where

sumDigits n = sumDigits' (show n)
  where
    sumDigits' (n:ns) = (read [n])+(sumDigits' ns)
    sumDigits' []     = 0
