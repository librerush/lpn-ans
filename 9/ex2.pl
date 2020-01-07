% exercise 9.2

% There is no '.' operator in SWI-Prolog (8.1.15)
% Use '[|]' instead of '.' (SWI-Prolog)

% ?- .(a,.(b,.(c,[]))) = [a,b,c].
% true.
% ?- .(a,.(b,.(c,[]))) = [a,b|[c]].
% true.
% ?- .(.(a,[]),.(.(b,[]),.(.(c,[]),[]))) = X.
% X = .(.(a,[]),.(.(b,[]),.(.(c,[]),[]))). 
% ?- .(a,.(b,.(.(c,[]),[]))) = [a,b|[c]].
% false. 

