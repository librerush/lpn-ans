% practical session 4.2

combine2([], [], []).
combine2([X|XS], [Y|YS], [[X, Y]|XY]) :-
  combine2(XS, YS, XY).


