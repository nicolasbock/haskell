import Data.List

getProducts (i:is) = (getProducts2 i [ i .. 999 ]) ++ (getProducts is)
  where
    getProducts2 i (j:js)
      | isPalindrome (i, j) = (i, j):(getProducts2 i js)
      | otherwise           = getProducts2 i js
    getProducts2 _ [] = []
getProducts [] = []

isPalindrome i
  | (show (tupleProduct i)) == reverse (show (tupleProduct i)) = True
  | otherwise                                                  = False

tupleProduct i = (fst i)*(snd i)

comparePalindrome i j
  | (tupleProduct i) > (tupleProduct j) = GT
  | (tupleProduct i) < (tupleProduct j) = LT
  | otherwise                           = EQ

maxPalindrome = maximumBy comparePalindrome (getProducts [ 100 .. 999 ])

main = putStrLn ((show maxPalindrome) ++ ": " ++ (show (tupleProduct maxPalindrome)))
