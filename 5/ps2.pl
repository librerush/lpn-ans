% practical session 5.2

scalarMult(_, [], []).
scalarMult(K, [H|T], [R|Rs]) :-
  R is K * H,
  scalarMult(K, T, Rs).


