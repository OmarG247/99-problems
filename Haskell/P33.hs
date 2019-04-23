-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 33: Determine whether two positive integer numbers are coprime
-------------------------------------------------------------------------------
gcd' :: Int -> Int -> Int

gcd' a b
    | r == 0 = b
    | otherwise = gcd' b r
    where r = mod a b

coprime :: Int -> Int -> Bool
coprime a b = (gcd' a b) == 1