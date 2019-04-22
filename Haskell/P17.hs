-- Split list into two parts given length of first 

splitL :: [a] -> Int -> [[a]]
splitL (a:b) lim 
    = splitL' (a:b) lim []
splitL [] _
    = []

splitL' :: [a] -> Int -> [a] -> [[a]]
splitL' (a:b) lim temp
    | lim == 0 
        = temp : [a:b]
    | otherwise 
        = splitL' b (lim - 1) (temp ++ [a])
splitL' [] _ temp 
    = [temp]