%definimos las relaciones de parentesco

padre(miguel, adela).
padre(cornelio, manuel).
padre(hernan, thomas).
padre(hernan, juan).
padre(hernan, sara).
padre(manuel, adriana).
padre(manuel, pedro).
padre(manuel, danilo).
padre(manuel, marcela).
madre(ana, adela).
madre(helena, manuel).
madre(adela, danilo).
madre(adela, marcela).
madre(adela, pedro).
madre(adela, adriana).
madre(adriana, thomas).
madre(adriana, juan).

%reglas de parentesco
abuelo(X, Y) :- 
    padre(X, Z), padre(Z, Y);
    padre(X, Z), madre(Z, Y).

es_hombre(X) :- padre(X, _).
es_mujer(X) :- madre(X, _).
%we can't determine gender if have no children

abuela(X, Y) :- 
    madre(X, Z), madre(Z, Y);
    madre(X, Z), padre(Z, Y).

bisabuelo(X, Y) :- 
    padre(X, Z), abuelo(Z, Y);
    padre(X, Z), abuela(Z, Y).

bisabuela(X, Y) :- 
    madre(X, Z), abuelo(Z, Y);
    madre(X, Z), abuela(Z, Y).

hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

hermanos(X, Y) :- 
    padre(Z, X), madre(R, X),
    padre(Z, Y), madre(R, Y),
    X \= Y.

hermanastros(X, Y) :-
    padre(Z, Y), padre(Z, X);
    madre(G, Y), madre(G, X).
%TODO: refactor hermanastros
