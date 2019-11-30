% practical session 6.2

set([], R, R).
set([H|T], A, R) :-
    member(H, A),
    set(T, A, R).
set([H|T], A, R) :-
    not(member(H, A)),
    set(T, [H|A], R).

set(L, R) :-
  set(L, [], S),
  reverse(S, R).

