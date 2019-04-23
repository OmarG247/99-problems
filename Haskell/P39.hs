-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 39: Given a range of integers by its lower and upper limit, 
--             construct a list of all prime numbers in that range.
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

primesR :: Int -> Int -> [Int]
primesR l u 
    = filter isPrime [l..u]
