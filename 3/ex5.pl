% exercise 3.5

swap(leaf(X), leaf(X)).
swap(tree(leaf(X),leaf(Y)), tree(leaf(Y),leaf(X))).
swap(tree(L1, R1), tree(R2, L2)) :-
  swap(L1, L2),
  swap(R1, R2).

