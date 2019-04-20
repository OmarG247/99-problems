% Find last element in list
findL([H|[]], X) :- X is H.
findL([H|T], X) :- findL(T, X).