-------------------------------------------------------------------------------
-- Solved by OmarG247
-- Problem 8: Delete consecutive duplicates of elements in a list
-------------------------------------------------------------------------------

clean :: (Eq a) => [a] -> [a]
clean (a:b)
    = a : (clean' b a)
clean [] 
    = []

clean' :: (Eq a) => [a] -> a -> [a]
clean' (a:b) current
    | a /= current
        = a : (clean' b a)
    | otherwise 
        = clean' b current
clean' [] current
    = []