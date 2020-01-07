% practical session 9.2

not_(_).
and_(_, _).
or_(_, _).
implies_(_, _).

:- op(200, fx, not_).
:- op(300, yfx, and_).
:- op(400, yfx, or_).
:- op(500, xfx, implies_).

