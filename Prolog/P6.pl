%-----------------------------------------------------------------------------
% Solved by Walsker
% Problem 6: Find out whether a list is a palindrome
%-----------------------------------------------------------------------------

evenTest([A|B], C) :- [A|B] == C; append([A], C, D), evenTest(B, D).
oddTest([A|B], C) :- length([A|B], X), length(C, Y), 1 is X-Y, B == C; append([A], C, D), oddTest(B, D).

isPalindrome(A) :- length(A, X), (0 is mod(X, 2), evenTest(A, []); 1 is mod(X, 2), oddTest(A, [])).