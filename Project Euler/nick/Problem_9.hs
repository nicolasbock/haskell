triplet sum = [ a*b*(sum-a-b) | b <- [ 2..(sum-3) ], a <- [ 1..(b-1) ], a^2+b^2 == (sum-a-b)^2, sum > 3 ]

main = putStrLn (show (triplet sum))
  where sum = 1000
