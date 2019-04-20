-- Reverse a given list 
reverseL :: [a] -> [a]
reverseL (a:b)
    = reverseL b ++ [a]
reverseL [] 
    = []