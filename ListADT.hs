data List a = Cons a (List a)
              | Nil
              deriving (Show)

-- Convert from List to our own List type.
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

-- Back convert from our own List type to List.
toList (Cons a as) = a:(toList as)
toList Nil         = []
