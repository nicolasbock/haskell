listPalindrome xs
  | xs == []  = []
  | otherwise = xs:(reverseList xs)

reverseList xs = reverser xs []

reverser (x:xs) ys = reverser xs (ys ++ x)
reverser [] ys     = ys
