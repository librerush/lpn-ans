% exercise 11.2

q(blob, blug).
q(blob, blag).
q(blob, blig).
q(blaf, blag).
q(dang, dong).
q(dang, blug).
q(flab, blob).

% ?- findall(X, q(blob, X), List).
% List = [blug, blag, blig].

% ?- findall(X, q(X, blug), List).
% List = [blob, dnag].

% ?- findall(X, q(X, Y), List).
% List = [blob, blob, blob, blaf, dang, dang, flab].

% ?- bagof(X, q(X, Y), List).
% Y = blug, List = [blob, dang] ;
% Y = blag, List = [blob, blaf] ;
% Y = blig, List = [blob] ;
% Y = dong, List = [dang] ;
% Y = blob, List = [flab] ;

% ?- setof(X, Y ^ q(X, Y), List).
% List = [blaf, blob, dang, flab].
