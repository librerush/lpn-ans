% exercise 1.5

wizard(ron).
hasWand(harry).
quidditchPlayer(harry).
wizard(X) :- hasBroom(X), hasWand(X).
hasBroom(X) :- quidditchPlayer(X).

% wizard(ron). => true.
% witch(ron).  => undefined procedure
% wizard(hermione). => false.
% witch(hermione).  => undefined procedure
% wizard(harry).    => true.
% wizard(Y).   => Y = ron ; Y = harry.
% witch(Y).    => undefined procedure

