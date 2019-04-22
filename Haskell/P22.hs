-------------------------------------------------------------------------------
-- Solved by Walsker
-- Problem 22: Create a list containing all integers within a given range
-------------------------------------------------------------------------------

range :: Int -> Int -> [Int]
range start end
  | (start <= end) = start:(range (start+1) end)
  | otherwise = []