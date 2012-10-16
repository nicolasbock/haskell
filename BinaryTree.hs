data BinaryTree a = Node a (BinaryTree a) (BinaryTree a)
                  | Empty
                  deriving (Show)

-- Convert list into balanced but unsorted binary tree.
fromList (x:xs) = Node x (fromList left) (fromList right)
                  where
                    temp  = splitAt (div (length xs) 2) xs
                    left  = fst temp
                    right = snd temp
fromList [] = Empty

-- Get the height of a tree.
getHeight (Node a left right) = 1 + (max (getHeight left) (getHeight right))
getHeight Empty               = 0
