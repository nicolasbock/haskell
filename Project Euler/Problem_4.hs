getProducts (i:is) = (getProducts2 i [ i .. 99 ]) ++ (getProducts is)
  where
    getProducts2 i (j:js)
      | isPalindrome (i, j) = (i, j):(getProducts2 i js)
      | otherwise           = getProducts2 i js
    getProducts2 _ [] = []
getProducts [] = []

convertToString i
  | i > 0     = (convertToString (div i 10)) ++ (show (mod i 10))
  | otherwise = []

isPalindrome i
  | (show (tupleProduct i)) == reverse (show (tupleProduct i)) = True
  | otherwise                                                  = False

maxProduct (i:is) = max (tupleProduct i) currentMax
  where currentMax = tupleProduct (maxProduct is)
maxProduct [] = (0, (0, 0))

tupleProduct (i, j) = i*j

--main = putStrLn (getProducts [ 10 .. 99 ])
