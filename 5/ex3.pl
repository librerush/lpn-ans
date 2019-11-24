% exercise 5.3

addone([], []).
addone([H|T], [HP|List]) :-
  HP is H + 1,
  addone(T, List).

