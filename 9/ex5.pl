% exercise 9.5

:- op(300, xfx, [are, is_a]).
:- op(300, fx, likes).
:- op(200, xfy, and).
:- op(100, fy, famous).

% ?- X is_a witch.
% is_a(X, witch).
% a wellformed term.

% ?- harry and ron and hermione are friends.
% are(and(harry, and(ron, hermione)), friends). 
% a wellformed term.

% is_a(harry, and(wizard, likes(quidditch))).
% an illformed term.

% ?- dumbledore is_a famous famous wizard.
% is_a(dubledore, famous(famous(wizard))).
% a wellformed term.

