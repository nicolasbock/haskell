fibonacci 1 = 1
fibonacci 2 = 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

evenfibsum max = sum . takeWhile (<= max) . filter even $ map fibonacci [1..]

main = putStrLn . show $ evenfibsum 4000000