sumOfSquares (n:ns) = n^2 + sumOfSquares ns
sumOfSquares []     = 0

squareOfSum ns = (sum ns)^2

main = putStrLn (show ((squareOfSum [1..100])-(sumOfSquares [1..100])))
