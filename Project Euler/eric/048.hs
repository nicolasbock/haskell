import Data.List
import Data.Char

sumPowers list = sumPowers' list 0
  where sumPowers' [] answer       = answer
        sumPowers' (n:list) answer = n^n + sumPowers' list answer

main = putStrLn . reverse . take 10 . reverse . show $ sumPowers [1..1000]
 