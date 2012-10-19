digits n list
  | n==0 && list==[] = [0]
  | n==0             = list
  | otherwise        = digits (n`div`10) ((n`mod`10):list)

palinList = [x*y | x <- [100..999], y <- [100..x], digits (x*y) [] == reverse (digits (x*y) []) ]

main = do
  putStrLn (show (maximum palinList))
