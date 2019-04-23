% -----------------------------------------------------------------------------
% Solved by Walsker
% Problem 7: Flatten a nested list structure
% -----------------------------------------------------------------------------

flatten([], []).
flatten([A|[]], B) :-
	is_list(A), flatten(A, B);
	B = [A].
flatten([A|B], X) :- 
	is_list(A), flatten(A, Y), flatten(B, Z), append(Y, Z, X);
	flatten(B, Y), X = [A|Y], !.