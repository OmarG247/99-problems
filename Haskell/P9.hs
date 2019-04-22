-------------------------------------------------------------------------------
-- Solved by OmarG247
-- Problem 9: Put together consecutive duplicates into lists
-------------------------------------------------------------------------------

pack :: (Eq a) => [a] -> [[a]]
pack (a:b) 
    = pack' (a:b) a []
pack [] 
    = []

pack' :: (Eq a) => [a] -> a -> [a] -> [[a]]
pack' (a:b) current temp
    | a == current 
        = pack' b current (a : temp)
    | otherwise 
        = temp : (pack' b a (a:[]))
pack' [] _ temp
    = [temp]