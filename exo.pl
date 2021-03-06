reverse([],[]).
reverse([H|T],A):- reverse(T,B), append(B,[H],A).

sumList([],0).
sumList([H|T],M):- sumList(T,N), M is H+N.

first([X],X).
first([H|_],X):- X=H.

last([X],X).
last([_|T],X):-last(T,X).

join([],A,A).
join([H|T],B,[H|C]):- join(T,B,C).
