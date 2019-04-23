-------------------------------------------------------------------------------
-- Solved by dellisd
-- Problem 36: Calculate Euler's totient function phi(m) (improved)
-------------------------------------------------------------------------------

primeFactorsMult :: Int -> [(Int, Int)]
primeFactorsMult n
    = primeFactorsMult' n (2, 0) []

primeFactorsMult' :: Int -> (Int, Int) -> [(Int, Int)] -> [(Int, Int)]
primeFactorsMult' 1 (factor, mult) found 
    | mult > 0 
        = (found ++ [(factor, mult)])
    | otherwise 
        = found

primeFactorsMult' n (factor, mult) found
    | (mod n factor) == 0 
        = primeFactorsMult' (n `div` factor) (factor, mult + 1) found
    | mult > 0 
        = primeFactorsMult' n (factor + 1, 0) (found ++ [(factor, mult)])
    | otherwise 
        = primeFactorsMult' n (factor + 1, 0) found

totient :: Int -> Int
totient m = product [(p - 1) * p ^ (m - 1) | (p, m) <- primeFactorsMult m]
