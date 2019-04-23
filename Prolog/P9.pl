%-----------------------------------------------------------------------------
% Solved by Walsker
% Problem 9: Put together consecutive duplicates into lists
%-----------------------------------------------------------------------------

% Packs a given value's duplicates into a list as long as they're consecutive
packFirst(A, [H|T], X) :- 
  A == H, packFirst(A, T, [Y|Z]), append([A], Y, B), X = [B|Z];
  X = [[A]|[H|T]]. 

% Solution
pack([H|[]], [[H]]).
pack([H|T], X) :- packFirst(H, T, [A|B]), pack(B, Y), X = [A|Y].