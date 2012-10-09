mergeLists (x:xs) (y:ys)
  | x <= y    = x:(mergeLists xs (y:ys))
  | otherwise = y:(mergeLists (x:xs) ys)
mergeLists [] ys = ys
mergeLists xs [] = xs

--sortList (x:xs) =

--sortLists (x:xs) =
