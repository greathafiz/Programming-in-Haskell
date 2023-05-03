-- "merge" is a function that merges 2
--  separate lists of integers to give a sorted list

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y = x : merge xs (y:ys)
    | otherwise = y : merge(x:xs) ys