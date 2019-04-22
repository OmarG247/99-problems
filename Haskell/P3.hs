-------------------------------------------------------------------------------
-- Solved by OmarG247
-- Problem 3: Find the k'th element in a list
-------------------------------------------------------------------------------

findK :: [a] -> Int -> a
findK (a:b) num
    = findK' (a:b) num 0
findK [] num
    = error "Empty list"

findK' :: [a] -> Int -> Int -> a
findK' (h:t) num counter
    | counter == num
        = h
    | otherwise 
        = findK' t num (counter + 1)
findK' [] num counter 
    = error "List is not long enough"