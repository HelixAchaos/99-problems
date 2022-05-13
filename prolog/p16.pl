drop(L, N, X) :- drop(L, 1, N, X).

drop([], _, _, []).
drop([_ | T], I, N, X) :- I == N, drop(T, 1, N, X), !.
drop([H | T], I, N, X) :- J is I + 1, drop(T, J, N, Y), append([H], Y, X).