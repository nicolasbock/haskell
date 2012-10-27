import Data.List

compareDigits i j
  | (sort (show i)) == (sort (show j)) = True
  | otherwise                          = False

findX = findX' [1..]
  where
    findX' (n:ns)
      | compareDigits n (2*n)
          && compareDigits n (3*n)
          && compareDigits n (4*n)
          && compareDigits n (5*n)
          && compareDigits n (6*n) = n
      | otherwise             = findX' ns

main = putStrLn (show findX)
