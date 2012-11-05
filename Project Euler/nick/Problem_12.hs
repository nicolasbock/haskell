allDivisors n = allDivisors' n [ 1..((div n 2)+1) ]
  where
    allDivisors' n (i:is)
      | mod n i == 0 = i:(allDivisors' n is)
      | otherwise    = allDivisors' n is
    allDivisors' n [] = [ n ]

testTriangle numDivisors = testTriangle' numDivisors [ 1.. ]
  where
    testTriangle' numDivisors (i:is)
      | nd > numDivisors = triangle
      | otherwise        = testTriangle' numDivisors is
      where
        triangle = sum [ 1..i ]
        nd = length (allDivisors triangle)

main = putStrLn (show (testTriangle 500))
