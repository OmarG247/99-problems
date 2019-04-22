-- Duplicate elements of a list
duplicate :: [a] -> [a]
duplicate (a:b)
    = a : (a : (duplicate b))
duplicate (a : [])
    = a : [a]
duplicate []
    = []