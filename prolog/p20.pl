remove_at(H, [H | T], 1, T).
remove_at(X, [H | T], K, R) :- J is K - 1, remove_at(X, T, J, R1), append([H], R1, R).