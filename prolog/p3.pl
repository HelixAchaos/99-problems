element_at(X, [X | _], 1).
element_at(X, [_ | T], I) :- P is I-1, element_at(X, T, P).