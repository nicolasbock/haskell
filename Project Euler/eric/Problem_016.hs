digits n list
  | n==0 && list==[] = [0]
  | n==0             = list
  | otherwise        = digits (n`div`10) ((n`mod`10):list)

main = putStrLn (show (sum (digits (2^1000) [])))