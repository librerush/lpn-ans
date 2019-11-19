% exercise 3.2

directlyln(katarina,olga).
directlyln(olga,natasha).
directlyln(natasha,irina).

in(X,Y) :- directlyln(X,Y).
in(X,Y) :-
  directlyln(X,Z),
  in(Z,Y).


