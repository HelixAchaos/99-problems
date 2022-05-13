dupli([], []).
dupli([A | T], [A, A | X]) :- dupli(T, X).