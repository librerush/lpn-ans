% exercise 1.4

killer(butch).

married(mia,marsellus).

dead(zed).

footmassage(Person, mia).
kills(marsellus, Person) :-
  footmassage(Person, mia).

good_dancer(Person).
loves(mia, Person) :-
  good_dancer(Person).

nutritious(X).
tasty(X).
eats(jules, X) :-
  nutritious(X);
  tasty(X).

