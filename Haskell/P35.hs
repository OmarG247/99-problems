-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 35: Determine the prime factors of a given positive integer
-------------------------------------------------------------------------------

primeFactors :: Int -> [Int]
primeFactors n
    = primeFactors' n 2 []

primeFactors' :: Int -> Int -> [Int] -> [Int]
primeFactors' 1 _ found = found

primeFactors' n factor found
    | (mod n factor) == 0 = primeFactors' (n `div` factor) factor (found ++ [factor])
    | otherwise = primeFactors' n (factor + 1) found
