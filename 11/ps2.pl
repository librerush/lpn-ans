% practical session 11.2

rm_from(_, [], []).
rm_from(Elem, [H|T], [H|L]) :-
  Elem \== H,
  rm_from(Elem, T, L),
  !.
rm_from(Elem, [_|T], L) :-
  rm_from(Elem, T, L).

subset_([], _).
subset_([L|Ls], S) :-
  member(L, S),
  rm_from(L, S, Sub),
  subset_(Ls, Sub).

powerset(List, P) :-
  findall(X, subset_(X, List), P).

