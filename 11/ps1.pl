% practical session 11.1


rm_from(_, [], []).
rm_from(Elem, [H|T], [H|L]) :-
  Elem \== H,
  rm_from(Elem, T, L),
  !.
rm_from(Elem, [_|T], L) :-
  rm_from(Elem, T, L).

subset([], _).
subset([L|Ls], S) :-
  member(L, S),
  rm_from(L, S, Sub),
  subset(Ls, Sub).


