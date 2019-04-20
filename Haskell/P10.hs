-- Put together consecutive duplicates into lists
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