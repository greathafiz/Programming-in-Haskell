insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys)
    | x <= y = x : y : ys
    | otherwise = y : insert x ys

-- insert' :: Int -> [Int] -> [Int]
-- insert' x [] = [x]
-- insert' x (y:ys) = if x <= y then
--                     x : y : ys
--                         else
--                             y : insert' x ys