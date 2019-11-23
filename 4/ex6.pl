% exercise 4.6


twice([], []).
twice([X|XS], [X, X|YS]) :-
  twice(XS, YS).
  


