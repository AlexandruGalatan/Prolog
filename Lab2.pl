%Distance between two points
distance((X1, Y1), (X2, Y2), R):-
    R is sqrt((X1-X2)**2 + (Y1 - Y2)**2).

%Trace practice
f(a).
f(b).

g(a).
g(b).

h(b).

k(X) :- f(X), g(X), h(X).

%Fib seq
fib(0, 1).
fib(1, 1).
fib(N, R):-
    N1 is N-1,
	N2 is N-2,
    fib(N1, R1),
    fib(N2, R2),
    R is R1 + R2.

%Write square made out of char
line(1, C):-
    write(C), nl.
line(N, C):-
    N1 is N - 1,
    write(C),
    line(N1, C).

sq2(N,C,1):-
    line(N, C).
sq2(N,C,L):-
    L2 is L - 1,
    line(N,C),
    sq2(N,C,L2).

square(N, C):-
    sq2(N,C,N).

%Find element in list
element_of(X,[X| _]).
element_of(X, [_ |Tail]) :- 
    element_of(X,Tail).
