my_last(X, [X]).
my_last(X, [_ | B]) :- my_last(X, B).