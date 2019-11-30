% practical session 6.3

is_nonempty_list([_|_]).
is_empty_list([]).

flat_list(Acc, [], Acc).
flat_list(Acc, [H|T], List) :-
  flat_list(Acc, T, R),
  flat_list(R, H, List).
flat_list(Acc, X, [X|Acc]) :-
  not(is_empty_list(X)),
  not(is_nonempty_list(X)).

flat_list(List, Flat) :-
  flat_list([], List, Flat).

