-- (1) Safetail: A function that behaves in the same way
-- as tail, except that safetail maps the empty list
-- to the emmpty list, whereas tail gives an error in this case

-- (a) using a conditional expression
safeTail :: [a] -> [a]
safeTail xs = if null xs then [] else reverse (take (length xs -1) (reverse xs))

-- (b) using guarded equations
safeTail' :: [a] -> [a]
safeTail' xs | null xs = []
             | otherwise = drop 1 xs

-- (c) using pattern matching
safeTail'' :: [a] -> [a]
safeTail'' [] = []
safeTail'' (_:xs) = xs