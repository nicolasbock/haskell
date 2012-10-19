import Data.List

digits n list
  | n==0 && list==[] = [0]
  | n==0             = list
  | otherwise        = digits (n`div`10) ((n`mod`10):list)

matching n answer
  | length answer ==1                                = answer
  | sort (digits n []) == sort (digits (2*n) []) &&
    sort (digits n []) == sort (digits (3*n) []) &&
    sort (digits n []) == sort (digits (4*n) []) &&
    sort (digits n []) == sort (digits (5*n) []) &&
    sort (digits n []) == sort (digits (6*n) [])     = matching (n+1) (n:answer)
  | otherwise                                        = matching (n+1) answer

main = do
  putStrLn (show (matching 1 []))