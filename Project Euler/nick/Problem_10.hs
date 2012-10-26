import PrimeFactors
import Data.List
import Debug.Trace

-- Sieve of Sundaram.
sundaram n = 2:(shiftElements (doubleElements ([1..(div (n-2) 2)] \\ getList (div (n-2) 2))))
  where
    getList maxNum        = [ i+j+2*i*j | i <- [ 1..(maxNum) ], j <- [ i..(maxNum) ], i+j+2*i*j <= (maxNum) ]
    doubleElements (n:ns) = ((2*n):(doubleElements ns))
    doubleElements []     = []
    shiftElements (n:ns)  = ((n+1):(shiftElements ns))
    shiftElements []      = []

sumSundaram n = sum ([ x | x <- (sundaram n), x < n ] )

-- Sieve of Eratosthenes.
eratosthenes n = sort (eratosthenes' [] [ 2..n ])
  where
    --eratosthenes' ps ns | trace ("eratosthenes' " ++ show ps ++ " " ++ show ns) False = undefined
    eratosthenes' ps (n:ns) = eratosthenes' (n:ps) (removeComposite n ns)
    eratosthenes' ps []     = ps
    removeComposite c ns = removeComposite' c ns []
    removeComposite' c (n:ns) ps
      | mod n c == 0 = removeComposite' c ns ps
      | otherwise    = removeComposite' c ns (n:ps)
    removeComposite' c [] ps = sort ps

main = do
  putStrLn (show (sum (eratosthenes 160000)))
