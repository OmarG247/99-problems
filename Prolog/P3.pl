%-----------------------------------------------------------------------------
% Solved by Walsker
% Problem 3: Find the k'th element of a list
%-----------------------------------------------------------------------------

elementAt(A, [A|_], I) :- I == 0.
elementAt(X, [_|B], I) :- J is I-1, elementAt(X, B, J).