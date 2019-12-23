% practical session 8.2

lex(the, det(_)).
lex(a, det(singular)).
lex(men, n(plural)).
lex(man, n(singular)).
lex(woman, n(singular)).
lex(he, pro(subject)).
lex(she, pro(subject)).
lex(his, pro(object)).
lex(her, pro(object)).
lex(shoot, v(plural)).
lex(shoots, v(singular)).
lex(big, adj).
lex(fat, adj).
lex(under, preph([X, Y])) :-
  lex(X, det(A)),
  lex(Y, n(A)).
lex(shower, n(plural)).
lex(cow, n(plural)).

det(det(Word), Word, X) --> [Word], {lex(Word, det(X))}.
n(n(Word), Word, X) --> [Word], {lex(Word, n(X))}.
pro(pro(Word), X) --> [Word], {lex(Word, pro(X))}.
v(v(Word), X) --> [Word], {lex(Word, v(X))}.
adj(adj(Word)) --> [Word], {lex(Word, adj)}.
preph(preph(Word, X), X) --> [Word|X], {lex(Word, preph(X))}.

s(s(NP, VP)) --> np(NP, X, subject), vp(VP, X).

np(np(Det, N), X, _) --> det(Det, _, X), n(N, _, X).
np(np(Det, Adj, N, Preph), X, _) -->
  det(Det, _, X),
  adj(Adj),
  n(N, _, X),
  preph(Preph, [_, _]).
np(np(P), singular, Y) --> pro(P, Y).

vp(vp(V, NP), X) --> v(V, X), np(NP, _, object).
vp(vp(V), X) --> v(V, X).



