-- halve is a function that splits a list of even length into 2
-- and gives an error when the list is of odd length

halve :: [a] -> ([a], [a])
halve [] = ([], [])
halve xs
    | odd (length xs) = error "List must be of even length"
    | otherwise = (take halfLength xs, drop halfLength xs)
        where
            halfLength = listLength `div` 2
            listLength = length xs