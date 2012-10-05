fibonaci 1 = 1
fibonaci 2 = 2
fibonaci n
  | n < 1     = error "illegal value for n"
  | otherwise = (fibonaci (n-1)) + (fibonaci (n-2))

doSum (fib_2, fib_1) (x:xs) = do
    let fib = fib_2 + fib_1
    let a   = if even fib then fib else 0
    a + doSum (fib_1, fib) xs
doSum (fib_2, fib_1) [] = 0

findSum max
  | max > 4   = doSum (1, 2) [2, 4 .. max]
  | otherwise = error "max is too small"
