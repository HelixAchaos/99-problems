slice(L, I, K, X) :- slice(L, I, 1, K, X).
% J is the index of the head.
slice([H | _], _, J, J, [H]). 
slice([_ | T], I, J, K, X) :- J < I, Z is J + 1, slice(T, I, Z, K, X), !.
slice([H | T], I, J, K, [H | X]) :- Z is J + 1, slice(T, I, Z, K, X).