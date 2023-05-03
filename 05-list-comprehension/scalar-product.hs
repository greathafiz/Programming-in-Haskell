-- xs :: [Integer]
-- xs = [1,2,3,4]

-- ys :: [Integer]
-- ys = [5,6,7,8]

-- SP = (x1*y1) + (x2*y2) + (x2*y2) + (x2*y2)
-- That is, SP = (1*5)+(2*6)+(3*7)+(4*8) == 70

scalarProduct :: Num a => [a] -> [a] -> a
scalarProduct xs ys = sum [(x*y) | (x,y) <- zip xs ys]

-- Alternatively: we could implement the scalar product
-- formula directly in Haskell as thus:

scalarProduct' :: Num a => [a] -> [a] -> a
scalarProduct' xs ys = sum [(xs !! i) * (ys !! i) | i <- [0..n-1]]
                        where
                            n = length xs -- we assume xs and ys have equal length