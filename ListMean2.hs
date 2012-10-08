listMean xs 
  | xs == []  = 0
  | otherwise = (sum xs) / (fromIntegral (length xs))
