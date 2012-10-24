import Data.List

sundaram maxN = 2:(shiftElements (doubleElements ([1..(div (maxN-2) 2)] \\ getList (div (maxN-2) 2))))
  where
    getList maxNum        = [ i+j+2*i*j | i <- [ 1..(maxNum) ], j <- [ i..(maxNum) ], i+j+2*i*j <= (maxNum) ]
    doubleElements (n:ns) = ((2*n):(doubleElements ns))
    doubleElements []     = []
    shiftElements (n:ns)  = ((n+1):(shiftElements ns))
    shiftElements []      = []

sumSundaram maxN = sum ([ x | x <- (sundaram maxN), x < maxN ] )

eratosthenes maxN = 0
