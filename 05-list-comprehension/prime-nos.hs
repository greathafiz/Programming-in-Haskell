factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

-- A function to determine if a number is a prime number or not
prime :: Int -> Bool
prime n = factors n == [1,n]

-- primes print out the list of prime numbers between 1 and a given number n
primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]