-------------------------------------------------------------------------------
-- Solved by Walsker
-- Problem 7: Flatten a nested list structure
-------------------------------------------------------------------------------

data NestedList x = Elem x | List [NestedList x]

flatten :: NestedList x -> [x]
flatten (Elem x) = [x]
flatten (List (h:t)) = (flatten h) ++ (flatten (List t))
flatten (List []) = []