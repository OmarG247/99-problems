-- !Remove nth element from list
removeN :: [a] -> Int -> (a, [a])
removeN list index 
    = (list !! (index - 1), (listRem list index))

listRem :: [a] -> Int -> [a]
listRem (a:b) index 
    | index > 1
        = a : (listRem b (index - 1))
    | index == 1
        = b