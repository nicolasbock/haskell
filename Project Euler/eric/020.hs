import Data.Char

main = putStrLn . show . sum . map digitToInt $ show (product [2..100])
