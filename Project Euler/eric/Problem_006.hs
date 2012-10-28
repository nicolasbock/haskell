difference max = sum [2*a*b | a <- [1..max], b <- [1..a-1]]

main = putStrLn (show (difference 100))