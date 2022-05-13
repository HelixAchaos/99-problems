pack([], []).
pack([X], [[X]]).
pack([A, B | T], [[A] | T1]) :- A \= B, pack([B | T], T1).
pack([A, A | T], X) :- pack([A | T], [A1 | T1]), X = [[A | A1] | T1].