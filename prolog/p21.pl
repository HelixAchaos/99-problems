insert_at(E, L, 1, [E | L]). 
insert_at(E, [H | T], I, X) :- J is I - 1, insert_at(E, T, J, Y), append([H], Y, X).