prod sum = [a*b*(sum-a-b) | b<-[1..998], a<-[1..b], 2*a*b - 2*(a+b)*sum + sum^2 == 0]

main = do
  putStrLn (show (prod 1000))
