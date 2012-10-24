import Data.List
import System.Environment
import System.Exit

main = getArgs >>= parse

parse ["-h"] = putStrLn "Usage: ...." >> (exitWith ExitSuccess)
parse []     = getContents
parse fs     = putStrLn ("Unknown arguments: " ++ (intercalate " " fs)) >> (exitWith (ExitFailure 1))
