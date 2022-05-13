my_length(0, []).
my_length(L, [_ | T]) :- my_length(P, T), L is P+1.