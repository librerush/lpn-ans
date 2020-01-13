% practical session 9.1

/* partial solution */

:- module('9/ps1', [pptree/2]).

closeterm([], S) :-
  S.
closeterm(_, _).


pplist_helper([], _, _).
pplist_helper([H|T], Tab, Stream) :-
  functor(H, _, A),
  A < 2,
  tab(Stream, Tab),
  write(Stream, H),
  closeterm(T, write(Stream, ')')),
  nl(Stream),
  !,
  pplist_helper(T, Tab, Stream).
pplist_helper([H|T], Tab, Stream) :-
  functor(H, _, A),
  A >= 2,
  New_tab is Tab + 2,
  H =.. NewList,
  tab(Stream, Tab),
  pplist(NewList, New_tab, Stream),
  pplist_helper(T, Tab, Stream).


pplist([], _, Stream) :-
  write(Stream, 'end').
pplist([H|T], Tab, Stream) :-
  functor(H, _, 0),
  write(Stream, H),
  write(Stream, '('),
  nl(Stream),
  pplist_helper(T, Tab, Stream).


pptree(Term, Stream) :-
  Term =.. List,
  pplist(List, 2, Stream).



