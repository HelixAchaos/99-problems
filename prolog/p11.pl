encode_modified(L, X) :- helper(L, X, 1).

helper([A], X, 1) :- X = [A], !.
helper([A], X, N) :- X = [[N, A]].
helper([A, B | T], X, N) :- A \= B, helper([A], Y, N), helper([B | T], Z, 1), append(Y, Z, X).
helper([A, A | T], X, N) :- M is N + 1, helper([A | T], X, M).