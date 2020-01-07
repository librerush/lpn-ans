% exercise 9.4

is_list([]).
is_list([_|_]).

groundterm_rec(Term) :-
  nonvar(Term),
  not(is_list(Term)),
  functor(Term, _, Arity),
  Arity > 0,
  Term =.. [_|Args],
  groundterm_rec(Args).
groundterm_rec(Term) :-
  atomic(Term).
groundterm_rec([]).
groundterm_rec([H|T]) :-
  nonvar(H),
  groundterm_rec(H),
  groundterm_rec(T).

groundterm(Term) :-
  nonvar(Term),
  groundterm_rec(Term).


