-- repli with given numnber
repli :: [a] -> Int -> [a]
repli (a:b) num
    = generate a num ++ (repli b num)
repli [] num
    = []

generate :: a -> Int -> [a] 
generate item num 
    | num == 0 
        = []
    | otherwise 
        = item : (generate item (num - 1))
