:- include('p20.pl').

rnd_select(_, 0, []).
rnd_select(A, N, X) :- length(A, L), L >= N, L1 is L + 1, random(1, L1, I), remove_at(E, A, I, A1), N1 is N - 1, rnd_select(A1, N1, Y), append([E], Y, X).