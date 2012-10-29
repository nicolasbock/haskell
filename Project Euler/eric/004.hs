palinList = [x*y | x <- [100..999], y <- [100..x], show (x*y) == reverse (show (x*y)) ]

main = putStrLn . show $ maximum palinList
