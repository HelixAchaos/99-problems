my_but_last(X, [X, _]).
my_but_last(X, [_ | B]) :- my_but_last(X, B).