fibList maxDigits = fibList' maxDigits [1..] []
  where fibList' max [] list = length list
        fibList' max (n:list1) list2
         | n <= 2                  = fibList' max list1 (1:list2)
         | length (show fib) > max = n
         | otherwise               = fibList' max list1 (fib:list2)
          where fib = sum $ take 2 list2

main = putStrLn . show $ fibList 999