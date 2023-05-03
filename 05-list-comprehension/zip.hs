-- Using zip to pair elements in a list
pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)


-- positions returns the indices of where a given number occurs in a list

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x',i) <- zip xs [0..], x == x']