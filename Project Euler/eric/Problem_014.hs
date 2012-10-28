--This is correct but entirely too slow.

collatz n 
 | n == 1 = [1]
 | even n = n:(collatz (n `div` 2))
 | odd n  = n:(collatz (3*n+1)) 

maxLength n = maxLength' [3..n] (2,2)

maxLength' (n:list) (number, collatzLength)
 | list == [] = if test then n else number
 | otherwise  = if test
                then maxLength' list (n, newLength)
                else maxLength' list (number, collatzLength)  
 where newLength = length (collatz n)
       test      = newLength > collatzLength

main = putStrLn (show (maxLength 999999 ))