-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 34: Calculate Euler's totient function phi(m)
-------------------------------------------------------------------------------
gcd' :: Int -> Int -> Int

gcd' a b
    | r == 0 = b
    | otherwise = gcd' b r
    where r = mod a b

coprime a b = (gcd' a b) == 1

totient :: Int -> Int
totient 1 = 1
totient m
    = length (totient' m [] 1)

totient' :: Int -> [Int] -> Int -> [Int]

totient' m results i
    | i == m = results
    | coprime m i = i : later
    | otherwise = later
    where later = totient' m results (i + 1)
