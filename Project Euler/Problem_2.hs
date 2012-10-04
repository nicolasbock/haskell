fibonaci 1 = 1
fibonaci 2 = 2
fibonaci n
  | n < 1     = error "illegal value for n"
  | otherwise = (fibonaci (n-1)) + (fibonaci (n-2))

problem_2 max = 
