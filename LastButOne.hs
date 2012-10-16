lastButOne :: [a] -> a

-- This function is not correctly dealing with lists that are shorter than 2
-- elements.
lastButOne list
  | length list <= 2 = head list
  | otherwise        = lastButOne (tail list)
