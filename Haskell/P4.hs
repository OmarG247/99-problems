-- Find length of list
myLen :: [a] -> Int
myLen (h:t)
    = myLen t + 1
myLen _
    = 0