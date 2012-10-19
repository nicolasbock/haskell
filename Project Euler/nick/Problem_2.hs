-- Recursively get the Fibonaci series. For testing. This implementation is
-- pretty slow for n > 20 due to really inefficient recursion.
fibonaci 1 = 1
fibonaci 2 = 2
fibonaci n
  | n < 1     = error "illegal value for n"
  | otherwise = (fibonaci (n-1)) + (fibonaci (n-2))

-- Get the Fibonaci series as a list.
fibonaci2 (x:xs) = (fibonaci x):(fibonaci2 xs)
fibonaci2 []     = []

-- Reduce a list to a list of even members.
getEven (x:xs) = if even x then x:(getEven xs) else (getEven xs)
getEven []     = []

-- Sum up all even Fibonaci terms up to max. Note that since we start with the
-- tuple (1, 2) we will miss 2 and have to add it back in later.
doSum (fib_2, fib_1) max = if fib <= max then a+b else 0
  where
    fib = fib_2 + fib_1
    a   = if even fib then fib else 0
    b   = doSum (fib_1, fib) max

main = putStrLn (show (2 + doSum (1, 2) 4000000))
