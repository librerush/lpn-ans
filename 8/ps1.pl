% practical session 8.1

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

det(det(Word), X) --> [Word], {lex(Word, det(X))}.
n(n(Word), X) --> [Word], {lex(Word, n(X))}.
pro(pro(Word), X) --> [Word], {lex(Word, pro(X))}.
v(v(Word), X) --> [Word], {lex(Word, v(X))}.

s(s(NP, VP)) --> np(NP, X, subject), vp(VP, X).

np(np(DET, N), X, _) --> det(DET, X), n(N, X).
np(np(P), singular, Y) --> pro(P, Y).

vp(vp(V, NP), X) --> v(V, X), np(NP, _, object).
vp(vp(V), X) --> v(V, X).



