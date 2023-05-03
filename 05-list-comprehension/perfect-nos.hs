-- "perfects" is a function that returns
--  the list of all perfect numbers up to a given limit, n
--  and a number is perfect if it equals the sum of all its factors,
--  excluding the number itself so to determine if a number is perfect,
--  the functio makes use of an helper function, "factors"

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (init (factors x)) == x]