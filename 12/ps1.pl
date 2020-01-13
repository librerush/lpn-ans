% practical session 12.1

:- module('12/ps1', [test/2, test_read/2]).

:- use_module('8/ps2', [s/3]). 
:- use_module('9/ps1', [pptree/2]).


test(InFile, OutFile) :-
  test_read(InFile, Sentences),
  open(OutFile, write, Stream),
  test_each_sentence(Sentences, Stream),
  close(Stream).


test_each_sentence([end_of_file], _) :- !.
test_each_sentence([H|T], Stream) :-
  H \== end_of_file,
  writeln(Stream, H),
  findall(Parsed, s(Parsed, H, []), List),
  (  List == []
  -> writeln(Stream, 'false.')
  ;  List = [FirstMatch|_],
     pptree(FirstMatch, Stream),
     nl(Stream),
     test_each_sentence(T, Stream)
  ).

read_all_terms(Stream, [Term|List]) :-
  read(Stream, Term),
  (  Term == end_of_file
  -> List = [],
     !
  ;  read_all_terms(Stream, List)
  ).


test_read(InFile, List) :-
  open(InFile, read, Stream),
  read_all_terms(Stream, List),
  close(Stream).


