% Problem 1
findL([H|[]], X) :- X is H.
findL([H|T], X) :- findL(T, X).