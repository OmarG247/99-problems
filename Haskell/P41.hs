-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 41: Given a range of integers by its lower and upper limit, print 
--             a list of all even numbers and their Goldbach composition.
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

-- From P40
golbach :: Int -> (Int, Int)
golbach n
    | mod n 2 /= 0 = error "Must be an even number"
    | otherwise
        = head [(j, i) | i <- [n,(n-1)..2],
                         j <- [i,(i-1)..2],
                         isPrime i,
                         isPrime j,
                         i + j == n]

golbachList :: Int -> Int -> [(Int, Int)]
golbachList l u 
    = [golbach i | i <- [u,(u-2)..l]]

golbachList' :: Int -> Int -> Int -> [(Int, Int)]
golbachList' l u limit 
    = [(i, j) | (i, j) <- golbachList l u, i > limit, j > limit]