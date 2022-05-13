my_reverse([], []).
my_reverse(L, [H | T]) :- my_reverse(L1, T), append(L1, [H], L).