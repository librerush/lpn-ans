% exercise 3.4

greater_than(succ(X), 0).
greater_than(succ(X), X).
greater_than(succ(X), succ(Y)) :-
  greater_than(X, Y).
    

