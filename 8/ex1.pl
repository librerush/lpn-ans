% exercise 8.1

s(X) --> np(X), vp(X).
np(X) --> det(X), n(X).
vp(X) --> v(X), np(_).
vp(X) --> v(X).

det(plural) --> [the].
det(singular) --> [the].
det(singular) --> [a].
n(plural) --> [men].
n(singular) --> [woman].
n(singular) --> [man].
v(plural) --> [shoot].
v(singular) --> [shoots].


