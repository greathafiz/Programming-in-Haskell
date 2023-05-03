import Data.Text.Lazy.Read (double)

inRange min max x =
  x >= min && x <= max

-- inRange 4 5 3

doubleMe x = x + x

-- doubleUs x y = x * 2 + y * 2

doubleUs x y = doubleMe x + doubleMe y

-- Lists, List Comprehension
-- f x y = if x < 10 then x else y

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- Explicit Type Declaration on Functions:

removeNonUppercase :: String -> String -- Explicit Type Declaration
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]


-- factorial :: Integer -> Integer
factorial n = product [1..n]

-- Calculate area of a triangle
areaOfTriangle :: Double -> Double -> Double
areaOfTriangle base height = if base <= height then product [0.5, base, height] else error "height must be > base"

-- Finding right angle triangles in which:
-- 1. the length of the 3 sides are all integers
-- 2. the length of each side is less than or equal to 10
rightTriangles :: [(Integer, Integer, Integer)]
rightTriangles = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]

-- Pythagoras theorem function
pythagoras :: Double -> Double -> Double
pythagoras base height = if base <= height then sqrt (sum [base^2, height^2]) else 0