% exercise 6.5

swapfl([X|XS], [Y|YS]) :-
  append(L, [X|[]], YS),
  append(L, [Y|[]], XS).


