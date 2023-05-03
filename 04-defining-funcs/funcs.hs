import Language.Haskell.TH (safe, bang)
-- Conditional Expressions
abs :: Int -> Int
abs n = if n >= 0 then n else -n


signum :: Int -> Int
signum n = if n < 0 then -1 else
    if n == 0 then 0 else 1

-- Guarded Equations
-- Writing the same functions above using guards:

abs' n | n >= 0 = n
      | otherwise = -n

signum' :: (Ord a1, Num a1, Num a2) => a1 -> a2
signum' n | n < 0 = -1
          | n == 0 = 0
          | otherwise = 1

-- Pattern Matching
-- (&&) :: Bool -> Bool -> Bool
-- True && True = True
-- _ && _ = False


-- (3) Logical AND operator using conditionals

-- and :: Bool -> Bool -> Bool
-- and a b = if a == True && b == True then True
--             else if a == _ && b == _ then False

-- (4) Logical OR operator using conditionals
-- or' :: Bool -> Bool -> Bool
-- or' a b = if a == True then b else False