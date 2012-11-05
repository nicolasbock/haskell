import Data.Char

sumNums n = sum [m | m <- [2..n*9^n], m == sum (map (^n) (map digitToInt $ show m)) ]

main = putStrLn . show $ sumNums 5