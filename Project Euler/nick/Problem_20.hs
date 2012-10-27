import SumDigits

factorial 1 = 1
factorial n = n*(factorial (n-1))

main = do
  putStrLn (show (sumDigits (factorial 10)))
  putStrLn (show (sumDigits (factorial 100)))
