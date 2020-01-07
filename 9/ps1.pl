% practical session 9.1

/* partial solution */

closeterm([], S) :-
  S.
closeterm(_, _).


pplist_helper([], _).
pplist_helper([H|T], Tab) :-
  functor(H, _, A),
  A < 2,
  tab(Tab),
  write(H),
  closeterm(T, write(')')),
  nl,
  pplist_helper(T, Tab).
pplist_helper([H|T], Tab) :-
  functor(H, _, A),
  A >= 2,
  New_tab is Tab + 2,
  H =.. NewList,
  tab(Tab),
  pplist(NewList, New_tab),
  pplist_helper(T, Tab).


pplist([], _) :-
  write('end').
pplist([H|T], Tab) :-
  functor(H, _, 0),
  write(H),
  write('('),
  nl,
  pplist_helper(T, Tab).


pptree(Term) :-
  Term =.. List,
  pplist(List, 2).



