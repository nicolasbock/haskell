problem_1 (x:xs)
  | mod x 3 == 0 = x + problem_1 xs
  | mod x 5 == 0 = x + problem_1 xs
  | otherwise    = 0 + problem_1 xs
problem_1 [] = 0

main = do
  putStrLn (show (problem_1 [1..999]))
