collatz n
  | n == 1    = [1]
  | even n    = n:(collatz (n `div` 2))
  | otherwise = n:(collatz (3*n+1))

findLongest nMax = findLongest' [ 2..nMax ] ( 1, 1 )
  where
    findLongest' (n:ns) longest@( nStart, seqLength )
      | newLength > seqLength = findLongest' ns ( n, newLength )
      | otherwise             = findLongest' ns longest
      where
        newLength = length (collatz n)
    findLongest' [] longest = longest

main = putStrLn ("n = " ++ show (fst (findLongest nMax)) ++ " with length of " ++ show (snd (findLongest nMax)))
  where nMax = 1000000-1
