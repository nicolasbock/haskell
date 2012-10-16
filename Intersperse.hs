intersperse separator (list:lists)
  | null lists = list
  | otherwise  = list ++ [ separator ] ++ (intersperse separator lists)
intersperse _ [] = []
