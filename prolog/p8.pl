compress([X], [X]).
compress([A, B], [A, B]).
compress([A, B], X) :- A == B, X = A.
compress([A, B | T], X) :- A == B, compress([B | T], X).
compress([A, B | T], X) :- A \= B, compress([B | T], T1), append(A, T1, X).