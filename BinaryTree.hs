data BinaryTree a = Node a (BinaryTree a) (BinaryTree a)
                  | Empty
                  deriving (Show)

fromList (x:xs) = Node x (fromList left) (fromList right)
                  where
                    temp  = splitAt (div (length xs) 2) xs
                    left  = fst temp
                    right = snd temp
fromList [] = Empty
