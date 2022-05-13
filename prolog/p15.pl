dupli([], _, []).
dupli([A | T], N, X) :- multiply([A], N, Y), dupli(T, N, Z), append(Y, Z, X).

multiply([_], 0, []).
multiply([A], N, X) :- M is N - 1, multiply([A], M, Y), append([A], Y, X).