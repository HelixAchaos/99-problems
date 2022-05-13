my_flatten([E], X) :- my_flatten(E, X), !.
my_flatten([H | T], X) :- print(T), my_flatten(H, H1), my_flatten(T, T1), append(H1, T1, X), !.
my_flatten(A, X) :- \+ is_list(A), X = [A].