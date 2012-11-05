import Data.List

sumPowers = foldl (\acc n -> acc + n^n) 0 

main = putStrLn . reverse . take 10 . reverse . show $ sumPowers [1..1000]
 