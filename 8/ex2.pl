% exercise 8.2

kanga(V,R,Q) --> roo(V, R), jumps(Q, Q), {marsupial(V, R, Q)}.

% ?- listing(kanga).
kanga(V, R, Q, A, B) :-
  roo(V, R, A, C),
  jumps(Q, Q, C, D),
  marsupial(V, R, Q),
  B=D.
 


