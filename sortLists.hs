import Data.List

sortLists lists = sortBy lengthCompare lists

lengthCompare as bs
  | (length as) < (length bs) = LT
  | (length as) > (length bs) = GT
  | otherwise                 = EQ
