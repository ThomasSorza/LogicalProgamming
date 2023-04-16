% definimos las relaciones de parentesco
% parte de mama
padre(miguel, adela).
padre(cornelio, manuel).
madre(ana, adela).
madre(helena, manuel).
%bisabuelos
padre(manuel, adriana).
padre(manuel, pedro).
padre(manuel, danilo).
padre(manuel, marcela).
madre(adela, adriana).
%abuelos
padre(hernan, thomas).
madre(adriana, thomas).
padre(hernan, juan).
madre(adriana, juan).
abuelo(X, Y) :- padre(X, Z), padre(Z, Y); padre(X, Z), madre(Z, Y).
abuela(X, Y) :- madre(X, Z), madre(Z, Y); madre(X, Z), padre(Z, Y).
bisabuelo(X, Y) :- padre(X, Z), abuelo(Z, Y); padre(X, Z), abuela(Z, Y).
bisabuela(X, Y) :- madre(X, Z), abuelo(Z, Y); madre(X, Z), abuela(Z, Y).
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).
hermanos(X, Y) :- padre(X, Y).
%completar funcion de hermanos (si no preguntarle al profe)	
