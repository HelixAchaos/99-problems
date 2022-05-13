:- include('p17.pl').
rotate(A, K, X) :- length(A, L), I is mod(K, L), split(A, I, H, T), append(T, H, X).