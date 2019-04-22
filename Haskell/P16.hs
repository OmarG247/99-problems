-- Drop every nth element 
dropN :: [a] -> Int -> [a]
dropN [] num
    = []
dropN (a:b) num
    = dropN' (a:b) num 1

dropN' :: [a] -> Int -> Int -> [a]
dropN' (a:b) num count
    | count == num
        = dropN' b num 1
    | otherwise 
        = a : (dropN' b num (count + 1))
dropN' []
    = []