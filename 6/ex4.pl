% exercise 6.4

accRev([H|T], A, R) :-
  accRev(T, [H|A], R).
accRev([], A, A). 

rev(L, R) :-
  accRev(L, [], R).

last(L, X) :-
  rev(L, [X|_]).

