-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 32: Determine the greatest common divisor of two positive integer 
--             numbers
-------------------------------------------------------------------------------
gcd' :: Int -> Int -> Int

gcd' a b
    | r == 0 = b
    | otherwise = gcd' b r
    where r = mod a b