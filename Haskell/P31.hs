-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 31: Determine whether a given integer number is prime
-------------------------------------------------------------------------------

isPrime :: Int -> Bool

isPrime n
    = isPrime' n 2 (sqrt (fromIntegral n))

isPrime' :: Int -> Int -> Float -> Bool

isPrime' n i sq 
    | fromIntegral i > sq = True
    | (mod n i) == 0 = False
    | otherwise = isPrime' n (i + 1) sq