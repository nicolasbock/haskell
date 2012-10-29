fibList max startList
 | nextFib > max = startList
 | otherwise     = fibList max (nextFib:startList)
 where nextFib = sum $ take 2 startList

evenFibsum max = sum. filter even $ fibList max [2, 1]

main = putStrLn . show $ evenFibsum 4000000