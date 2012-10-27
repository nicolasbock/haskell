leastCommonMultiple :: (Integral a) => [a] -> a
leastCommonMultiple list
 | length list == 0 = error ("Empty list")
 | length list == 1 = list !! 0
 | otherwise        = leastCommonMultiple ( (lcm (list!!0) (list!!1)) : drop 2 list )

main = putStrLn (show (leastCommonMultiple [1..20]))