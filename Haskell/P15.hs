-------------------------------------------------------------------------------
-- Solved by OmarG247
-- Problem 15: Replicate the elements of a list given the number of times
-------------------------------------------------------------------------------

repli :: [a] -> Int -> [a]
repli (a:b) num
    = generate a num ++ (repli b num)
repli [] num
    = []

generate :: a -> Int -> [a] 
generate item num 
    | num == 0 
        = []
    | otherwise 
        = item : (generate item (num - 1))
