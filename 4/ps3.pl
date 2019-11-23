% practical session 4.3

combine3([], [], []).
combine3([X|XS], [Y|YS], [j(X, Y)|XY]) :-
  combine3(XS, YS, XY).


