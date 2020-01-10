% practical session 10.2

unifiable([], _, []).
unifiable([H1|List1], Term, [H1|List2]) :-
  \+ (\+ H1 = Term),
  !,
  unifiable(List1, Term, List2).
unifiable([_|List1], Term, List2) :-
  unifiable(List1, Term, List2).

