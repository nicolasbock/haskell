data Direction = LeftTurn | RightTurn | Straight
  deriving Show

data Point = Point
  {
    x :: Double,
    y :: Double
  }
  deriving (Eq, Show)

dot a b   = (x a)*(x b) + (y a)*(y b)
cross a b = (x a)*(y b) - (y a)*(x a)
minus a b = Point ((x a)-(x b)) ((y a)-(y b))

getDirection a b c
  | cross leg1 leg2 > 0 = LeftTurn
  | cross leg1 leg2 < 0 = RightTurn
  | otherwise           = Straight
  where
    leg1 = b `minus` a
    leg2 = c `minus` b

main = do
    putStrLn (show (getDirection a b c))
    putStrLn (show (getDirection c b a))
    putStrLn (show (getDirection a b d))
  where
    a = Point 0   0
    b = Point 0.5 1
    c = Point 1   0
    d = Point 1   2
