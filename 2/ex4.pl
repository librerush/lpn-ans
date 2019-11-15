% exercise 2.4

word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

crossword(V1, V2, V3, H1, H2, H3) :-
  word(V1, V1L1, V1L2, V1L3, V1L4, V1L5, V1L6, V1L7),
  word(V2, V2L1, V2L2, V2L3, V2L4, V2L5, V2L6, V2L7),
  word(V3, V3L1, V3L2, V3L3, V3L4, V3L5, V3L6, V3L7),
  word(H1, H1L1, V1L2, H1L3, V2L2, H1L5, V3L2, H1L7),
  word(H2, H2L1, V1L4, H2L3, V2L4, H2L5, V3L4, H2L7),
  word(H3, H3L1, V1L6, H3L3, V2L6, H3L5, V3L6, H3L7).

