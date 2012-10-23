import System ( getArgs )
import System.Console.GetOpt

main = do
  args <- getArgs
  let ( flags, nonOpts, msgs ) = getOpt RequireOrder options args
  print $ length flags

options = []
