isDivisible n (f:fs)
  | mod n f == 0 = True && (isDivisible n fs)
  | otherwise    = False
isDivisible n [] = True

findDivisible (f:fs)
  | isDivisible f [ 1.. 20 ] = f
  | otherwise                = findDivisible fs

main = putStrLn (show (findDivisible [ 1 .. ]))
