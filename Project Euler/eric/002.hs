fibonacci 1 = 1
fibonacci 2 = 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

fiblist max = takeWhile (< max) (map fibonacci [1..])

sumEven [] = 0
sumEven (n:list)
 | list == [] = 0
 | even n     = n + sumEven list
 | odd  n     =     sumEven list

main = putStrLn . show . sumEven $ fiblist 4000000