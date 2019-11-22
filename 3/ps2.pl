% practical session 3.2

byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

path(A, B) :-
  byCar(A, B);
  byTrain(A, B);
  byPlane(A, B).

travel(A, B) :-
  path(A, B).
travel(A, B) :-
  path(A, Z),
  travel(Z, B).
  

