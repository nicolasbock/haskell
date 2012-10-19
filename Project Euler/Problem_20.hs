digits n list
  | n==0 && list==[] = [0]
  | n==0             = list
  | otherwise        = digits (n`div`10) ((n`mod`10):list)

factorial n
  | n == 0    = 1
  | otherwise = n * factorial (n-1)

main = do
  putStrLn (show (sum (digits (factorial 100) [])))