import Data.Char

main = putStrLn . show $ maximum [sum $ map digitToInt (show (a^b)) | a <- [1..99], b <- [1..99]]