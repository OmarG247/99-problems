-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 40: Goldbach's conjecture.
-------------------------------------------------------------------------------

-- From P31
isPrime :: Int -> Bool
isPrime n
    = isPrime' n 2 (sqrt (fromIntegral n))

isPrime' :: Int -> Int -> Float -> Bool
isPrime' n i sq 
    | fromIntegral i > sq = True
    | (mod n i) == 0 = False
    | otherwise = isPrime' n (i + 1) sq

golbach :: Int -> (Int, Int)

golbach n
    | mod n 2 /= 0 = error "Must be an even number"
    | otherwise
        = head [(j, i) | i <- [n,(n-1)..2],
                         j <- [i,(i-1)..2],
                         isPrime i,
                         isPrime j,
                         i + j == n]