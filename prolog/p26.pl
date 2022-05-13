combination(0, _, []).
combination(K, L, [H | T]) :- K > 0, get_after_element(H, L, L1), K1 is K - 1, combination(K1, L1, T).

get_after_element(E, [E | S], S).
get_after_element(E, [_ | T], S) :- get_after_element(E, T, S).