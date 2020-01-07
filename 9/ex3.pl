% exercise 9.3

complexterm(X) :-
  nonvar(X),
  functor(X, _, A),
  A > 0.

termtype(Term, Type) :-
  atom(Term),
  Type = atom;
  number(Term),
  Type = number;
  atomic(Term),
  Type = constant;
  var(Term),
  Type = variable;
  not(complexterm(Term)),
  Type = simple_term.
termtype(Term, Type) :-
  complexterm(Term),
  Type = complex_term.
termtype(_, Type) :-
  Type = term.


