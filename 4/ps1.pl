% practical session 4.1

combine1([], [], []).
combine1([X|XS], [Y|YS], [X, Y|XY]) :-
  combine1(XS, YS, XY).


