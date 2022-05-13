:- include('p23.pl').

rnd_permu(L, P) :- length(L, N), rnd_select(L, N, P).