double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]


-- Implementing the last function
last' :: [a] -> a
last' xs = xs !! (length xs - 1)

last'' :: [a] -> a
last'' xs = head (reverse xs)


-- Implementing the init function
init' :: [a] -> [a]
init' xs = take (length xs - 1) xs

init'' :: [a] -> [a]
init'' xs = reverse (drop 1 (reverse xs))

init''' :: [a] -> [a]
init''' xs = reverse (tail (reverse xs))