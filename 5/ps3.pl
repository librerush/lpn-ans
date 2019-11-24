% practical session 5.3

dot([], [], 0).
dot([X|Xs], [Y|Ys], R) :-
  dot(Xs, Ys, Z),
  R is Z + X * Y.


