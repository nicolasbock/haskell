prod sum = [a*b*(sum-a-b) | b<-[1..sum-2], a<-[1..b], a^2 + b^2 == (sum-a-b)^2]

main = putStrLn (show (prod 1000 !! 0))
