listPalindrome xs
  | xs == []  = []
  | otherwise = xs ++ (reverseList xs)

reverseList (x:xs) = (reverseList xs) ++ [x]
reverseList []     = []
