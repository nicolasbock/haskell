fibonaci 1 = 1
fibonaci 2 = 2
fibonaci n
  | n < 1     = error "illegal value for n"
  | otherwise = (fibonaci (n-1)) + (fibonaci (n-2))

doSum (fib_2, fib_1) max = do
    let fib = fib_2 + fib_1
    let a = if even fib then fib else 0
    let b = doSum (fib_1, fib) max
    if fib <= max then a+b else 0

main = putStrLn (show (doSum (1, 2) 4000000))
