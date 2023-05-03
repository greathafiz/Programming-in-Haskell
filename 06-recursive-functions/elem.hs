-- 4 `elem`  [1,2,3] will return False

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y:ys)
    | x == y = True
    | otherwise = elem' x ys