-- Write the quadratic eqn

add :: (Int, Int) -> Int
add (x,y) = x+y

add' :: Int -> (Int -> Int)
add' x y = x+y

zeroto :: Int -> [Int]
zeroto n = [0..n]

mult :: Int -> Int -> Int -> Int -- could also be written as Int -> (Int -> (Int -> Int))
mult x y z = x*y*z


-- Exercises
-- (1)

list' :: [Char]
list' = ['a','b','c']

tuple' :: (Char, Char, Char)
tuple' = ('a', 'b', 'c')

listOfTuples :: [(Bool, Char)]
listOfTuples = [(False, '0'), (True, '1')]

pairOfList :: ([Bool], [Char])
pairOfList = ([False, True], ['0', '1'])

listOfFunctions :: [[a] -> [a]]
listOfFunctions = [tail, init, reverse]

-- (2)

second :: [a] -> a
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

pair :: a -> b -> (a,b)
pair x y = (x,y)

double :: Num a => a -> a
double x = x*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

-- twice :: 
twice f x = f (f x)