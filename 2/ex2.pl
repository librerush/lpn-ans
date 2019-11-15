% exercise 2.2

house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
magic(X) :- house_elf(X).
magic(X) :- wizard(X).
magic(X) :- witch(X).

% ?- magic(house_elf).
% ERROR: Undefined procedure: wizard/1 

% ?- wizard(harry).
% ERROR: Undefined procedure: wizard/1

% ?- magic(wizard).
% ERROR: Undefined procedure: wizard/1

% ?- magic('McGonagall').
% ERROR: Undefined procedure: wizard/1

% ?- magic(Hermione).
% Hermione = dobby ;
% ERROR: Undefined procedure: wizard/1

