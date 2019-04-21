-- Length Encoding revisited
data Item a = Single a | Pair (Int, a) deriving Show

encode :: (Eq a) => [a] -> [Item a]
encode (a:b) 
    = encode' (a:b) a 0
encode [] 
    = []

encode' :: (Eq a) => [a] -> a -> Int -> [Item a]
encode' (a:b) current count
    | a == current 
        = encode' b current (count + 1)
    | a /= current && count == 1 
        = Single current : (encode' b a 1)
    | otherwise 
        = Pair (count, current) : (encode' b a 1)
encode' [] current count
    | count == 1
        = [Single current] 
    | otherwise 
        = [Pair (count, current)]

