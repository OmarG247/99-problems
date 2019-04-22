-- !Rotate a list N indexes to the left
rotate :: [a] -> Int -> [a]
rotate (h:t) rotations 
    | rotations == 0
        = (h:t)
    | rotations < 0
        = (rotate (tail(t) ++ (init(h:t))) (rotations + 1))
    | rotations > 0 
        = (rotate (t ++ [h]) (rotations - 1))

-- TODO Negative number is broken (turning right)