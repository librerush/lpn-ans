% exercise 1.3

woman(vincent).
woman(mia).
man(jules).
person(X) :- man(X); woman(X).
loves(X,Y) :- father(X,Y).
father(Y,Z) :- man(Y), son(Z,Y).
father(Y,Z) :- man(Y), daughter(Z,Y).

% 3 facts
% 7 clauses
% 4 rules
% 7 predicates

