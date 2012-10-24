import Data.List

getList maxNum = [ i+j+2*i*j | i <- [ 1..(maxNum) ], j <- [ i..(maxNum) ], i+j+2*i*j <= (maxNum) ]

doubleElements (n:ns) = ((2*n):(doubleElements ns))
doubleElements []     = []

shiftElements (n:ns) = ((n+1):(shiftElements ns))
shiftElements []     = []

sundaram ns = 2:(shiftElements (doubleElements (ns \\ getList (maximum ns))))

main = putStrLn ( show (sum ([ x | x <- (sundaram [ 1..(div maxN 2) ]), x < maxN ] )))
  where maxN = 100000
