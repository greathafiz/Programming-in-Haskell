-- (1) A function that maps an integer n to
--  all triples with components in [1..n] s.t.
--  x^2 + y^2 = z^2


pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]