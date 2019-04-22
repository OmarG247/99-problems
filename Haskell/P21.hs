-------------------------------------------------------------------------------
-- Solved by Walsker
-- Problem 21: Insert an element at a given position into a list
-------------------------------------------------------------------------------

insertAt :: Eq x => [x] -> x -> Int -> [x]
insertAt list newItem index = insertAt' list newItem index 0

insertAt' :: Eq x => [x] -> x -> Int -> Int -> [x]
insertAt' (h:t) newItem index count
  | (index == count) = [newItem, h] ++ t
  | (t == []) = error "Index out of bounds."
  | otherwise = h : (insertAt' t newItem index (count+1))