:- include('p22.pl').
:- include('p23.pl').

lotto(N, M, L) :- range(1, M, R), rnd_select(R, N, L).