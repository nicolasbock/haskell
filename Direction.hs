data Direction = LeftTurn | RightTurn | Straight | UTurn
  deriving Show

data Point = Point
  {
    x :: Double,
    y :: Double
  }
  deriving (Eq, Show)

dot a b   = (x a)*(x b) + (y a)*(y b)
cross a b = (x a)*(y b) - (y a)*(x b)
minus a b = Point ((x a) - (x b)) ((y a) - (y b))

getDirection a b c
  | cross leg1 leg2 > 0 = LeftTurn
  | cross leg1 leg2 < 0 = RightTurn
  | dot a b > 0         = Straight
  | otherwise           = UTurn
  where
    leg1 = b `minus` a
    leg2 = c `minus` b

getDirectionList (a:b:c:as) = [ getDirection a b c ] : (getDirectionList (b:c:as))
getDirectionList (a:b:[])   = []

a = Point  0  0
b = Point  1  1
c = Point  0  2
d = Point (-1)  1

main = do
    putStrLn (show (getDirection a b c))
    putStrLn (show (getDirection c b a))
    putStrLn (show (getDirection a b d))
    putStrLn (show (getDirectionList [ a, b, c, d, a, d, c, b, a ]))
