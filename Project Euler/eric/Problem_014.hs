--This is correct but entirely too slow.

collatz n 
 | n == 1 = [1]
 | even n = n:(collatz (n `div` 2))
 | odd n  = n:(collatz (3*n+1)) 

maxLength n = maxLength' [2..n] (2,2)

maxLength' (n:list) (number, collatzLength)
 | list == []                = number
 | newLength > collatzLength = maxLength' list (n, newLength)
 | otherwise                 = maxLength' list (number, collatzLength)  
 where newLength = length (collatz n)

main = putStrLn (show (maxLength 999999 ))