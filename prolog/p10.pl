% Pack consecutive duplicates of list elements into sublists.
% If a list contains repeated elements they should be placed in separate sublists.

% Example:
% ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]
% P10 (*) Run-length encoding of a list.
% Use the result of problem P09 to implement the so-called run-length encoding data compression method.
% Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.

% Example:
% ?- encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% X = [[4,a],[1,b],[2,c],[2,a],[1,d][4,e]]



:- include('p9.pl').
encode(L, X) :- pack(L, M), print(M), helper(M, X, 0).
helper([], [], 0).
helper([[A, A | B] | T], X, N)  :- Z = [A | B], print(Z), M is N + 1, helper([[A | B] | T], X, M), !.
helper([[A] | T], X, N) :- M is N + 1, helper(T, Y, 0), append([[M, A]], Y, X).


% encode_direct(L, X) :- helper(L, X, 1).

% helper([A], X, N) :- X = [[N, A]].
% helper([A, B | T], X, N) :- A \= B, helper([A], Y, N), helper([B | T], Z, 1), append(Y, Z, X).
% helper([A, A | T], X, N) :- M is N + 1, helper([A | T], X, M).