split(L, 0, [], L).
split([H | T], N, [H | A], B) :- O is N - 1, split(T, O, A, B).