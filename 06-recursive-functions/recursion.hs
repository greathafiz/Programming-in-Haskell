-- Defining Factorial function in terms of other function: "product"
fac:: Int -> Int
fac n = product [1..n]

-- Defining Factorial function in terms of itself:
fac' :: Int -> Int
fac' 0 = 1
fac' n = n * fac (n-1)

-- Using guards:
fac'' :: Int -> Int
fac'' n | n == 0 = 1
        |otherwise = n * fac (n-1)

-- Aside num types, recursion also works on other types like list:

product':: Num a => [a] -> a
product' [] = 1
product' (n:ns) = n * product ns

length':: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs -- '_' could be replaced with x... it doesn't matter