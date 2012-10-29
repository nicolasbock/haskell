import Data.List

matching n = matching' n []
  where matching' n answerList
         | length answerList == 1                = answerList !! 0
         | sort (show n) == sort (show (2*n)) &&
           sort (show n) == sort (show (3*n)) &&
           sort (show n) == sort (show (4*n)) &&
           sort (show n) == sort (show (5*n)) &&
           sort (show n) == sort (show (6*n))    = matching' 1 (n:answerList)
         | otherwise                             = matching' (n+1) answerList

main = putStrLn . show $ matching 1