-------------------------------------------------------------------------------
-- Solved by OmarG247
-- Problem 12: Decode a run-length encoded list
-------------------------------------------------------------------------------

data Item a = Single a | Pair (Int, a) deriving Show

decode :: [Item a] -> [a]
decode (Pair (1, a) : b)
    = a : (decode b)
decode (Pair (num, a) : b)
    = a : (decode (Pair (num - 1, a) : b))
decode [(Pair (num, a))]
    = a : (decode [(Pair (num - 1, a))])
decode ((Single a) : b)
    = a : (decode b) 
decode [(Single a)]
    = [a]
decode []
    = []