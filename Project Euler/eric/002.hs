fibList max
 | max <= 0  = error "No Fibonacci sequence"
 | max == 1  = [1]
 | max == 2  = [2, 1]
 | otherwise = fibList' max [2, 1]
 where fibList' max list
        | nextFib > max = list
        | otherwise     = fibList' max (nextFib:list)
        where nextFib = sum $ take 2 list

evenFibsum max = sum. filter even $ fibList max

main = putStrLn . show $ evenFibsum 4000000