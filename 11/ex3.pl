% exercise 11.3

:- dynamic sigmares/2.

sigma(N, Sum) :-
  sigmares(N, Sum),
  !.
sigma(N, Sum) :-
  N >= 2,
  Prev is N - 1,
  sigmares(Prev, Prev_sum),
  Sum is Prev_sum + N,
  assert((sigmares(N, Sum))),
  !.
sigma(N, Sum) :-
  N > 0,
  Sum is ((N + 1) * N) / 2,
  assert((sigmares(N, Sum))).

