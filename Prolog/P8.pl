%-----------------------------------------------------------------------------
% Solved by Walsker
% Problem 8: Delete consecutive duplicates of elements in a list
%-----------------------------------------------------------------------------

% Removes the given value from the front of list until there is one left
remove(_, [], []).
remove(A, [B|C], X) :- A == B, remove(A, C, X); X = [B|C].

% Solution
compress([], []).
compress([A|B], X) :- remove(A, B, Y), compress(Y, Z), X = [A|Z].