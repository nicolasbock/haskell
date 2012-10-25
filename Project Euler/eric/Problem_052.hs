import Data.List

matching n answer
  | length answer ==1                      = answer
  | sort (show n) == sort (show (2*n)) &&
    sort (show n) == sort (show (3*n)) &&
    sort (show n) == sort (show (4*n)) &&
    sort (show n) == sort (show (5*n)) &&
    sort (show n) == sort (show (6*n))     = matching 1 (n:answer)
  | otherwise                              = matching (n+1) answer

main = do
  putStrLn (show (matching 1 []))