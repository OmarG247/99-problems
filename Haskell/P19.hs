-------------------------------------------------------------------------------
-- Solved by OmarG247
-- Problem 19: Rotate a list n elements to the left
-------------------------------------------------------------------------------

rotate :: [a] -> Int -> [a]
rotate (h:t) rotations 
    | rotations == 0
        = (h:t)
    | rotations < 0
        = (rotate (last(t) : (h:init(t))) (rotations + 1))
    | rotations > 0 
        = (rotate (t ++ [h]) (rotations - 1))