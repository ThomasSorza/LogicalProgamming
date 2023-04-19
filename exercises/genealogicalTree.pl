%definimos las relaciones de parentesco

padre(miguel, adela).
padre(cornelio, manuel).
padre(francisco, dora).
padre(hernan, thomas).
padre(hernan, juan).
padre(hernan, sara).
padre(manuel, adriana).
padre(manuel, pedro).
padre(manuel, danilo).
padre(manuel, marcela).
padre(luis,hernan).
padre(arturo,luis).
madre(alis,luis).
madre(ana, adela).
madre(pola, dora).
madre(dora,hernan).
madre(helena, manuel).
madre(adela, danilo).
madre(adela, marcela).
madre(adela, pedro).
madre(adela, adriana).
madre(adriana, thomas).
madre(adriana, juan).

%reglas de parentesco
abuelo(X, Y) :- 
    (padre(X, Z), padre(Z, Y));
    (padre(X, Z), madre(Z, Y)).

es_hombre(X) :- padre(X, _).
es_mujer(X) :- madre(X, _).
%we can't determine gender if have no children

abuela(X, Y) :- 
    (madre(X, Z), madre(Z, Y));
    (madre(X, Z), padre(Z, Y)).

bisabuelo(X, Y) :- 
    (padre(X, Z), abuelo(Z, Y));
    (padre(X, Z), abuela(Z, Y)).

bisabuela(X, Y) :- 
    (madre(X, Z), abuelo(Z, Y));
    (madre(X, Z), abuela(Z, Y)).

hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

hermanos(X, Y) :- 
    padre(Z, X), madre(R, X),
    padre(Z, Y), madre(R, Y),
    X \= Y.

%reglas usadas para determinar si son hermanastros

comparten_madre(X, Y) :-
    madre(M, X),madre(M,Y).

comparten_padre(X, Y) :-
    padre(M, X),padre(M,Y).

hermanastros(X, Y) :- ((comparten_madre(X, Y), not(comparten_padre(X, Y))); (not(comparten_madre(X, Y)), comparten_padre(X, Y))).
