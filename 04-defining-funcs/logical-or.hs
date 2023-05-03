-- (2) Pattern Matching for the logical OR operator
-- The first two functions are commented to avoid
--  multiple declarations error

-- (||) :: Bool -> Bool -> Bool
-- False || False = False
-- False || True = True
-- True || False = True
-- True || True = True

-- Alternatively, we could have:
-- (||) :: Bool -> Bool -> Bool
-- False || False = False
-- _ || _ = True

-- Alternatively, we could also have:

(||) :: Bool -> Bool -> Bool
False || b = b
True || _ = True