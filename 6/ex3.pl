% exercise 6.3

toptail([_|T], OutList) :-
  append(OutList, [_], T).


