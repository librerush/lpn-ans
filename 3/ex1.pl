% exercise 3.1

child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descend(X,Y) :- child(X,Y).
descend(X,Y) :- descend(X,Z),
  descend(Z,Y).

% this leads to non-terminating behaviour

