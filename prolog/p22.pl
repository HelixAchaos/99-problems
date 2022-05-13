range(B, B, [B]).
range(A, B, L) :- B > A, C is A + 1, range(C, B, M), append([A], M, L).