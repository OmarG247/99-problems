-- Find second last element in a list
secondLast :: [a] -> a
secondLast (a:b:[]) 
    = a
secondLast (a:b) 
    = secondLast b
secondLast []
    = error "List provided is empty"