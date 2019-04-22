-------------------------------------------------------------------------------
-- Solved by OmarG247
-- Problem 10: Run-length encoding
--	Create a list of tuples (N, E) where N is the number of
--	consecutive duplicates of the element E in a given list
-------------------------------------------------------------------------------

runLen :: (Eq a) => [a] -> [(Int, a)]
runLen (a:b) 
    = runLen' (a:b) a 0
runLen [] 
    = []

runLen' :: (Eq a) => [a] -> a -> Int -> [(Int, a)]
runLen' (a:b) current count
    | a == current 
        = runLen' b current (count + 1)
    | otherwise 
        = (count, current) : (runLen' b a 1)
runLen' [] current count
    = [(count, current)]