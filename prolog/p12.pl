decode_modified([], []).
decode_modified([[0, _] | T], X) :- decode_modified(T, X), !.
decode_modified([[N, E] | T], X) :- M is N - 1, decode_modified([[M, E] | T], Y), append([E], Y, X), !.
decode_modified([E | T], X) :- decode_modified(T, Y), append([E], Y, X).