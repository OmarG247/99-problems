-- Check if list is a palindrome 
getLen :: [a] -> Int
getLen (h:t)
    = getLen t + 1
getLen []
    = 0

isPali :: (Eq a) => [a] -> Bool 
isPali (h:t)
    = isPali' (h:t) 0 (getLen (h:t) - 1)
isPali [] 
    = True

isPali' :: (Eq a) => [a] -> Int -> Int -> Bool
isPali' list start end  
    | (list !! start) == (list !! end) && (start + 1) == end && (end - 1) == start
        = True 
    | start == end 
        = True
    | (list !! start) == (list !! end) 
        = isPali' list (start + 1) (end - 1)
    | otherwise 
        = False