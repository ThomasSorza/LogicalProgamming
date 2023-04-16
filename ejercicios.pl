enfermo_de(manuel,gripa).
tiene_sintomas(alicia,cansancio).
sintoma_de(fiebre,gripa).
sintoma_de(tos,gripa).
sintoma_de(cansancio, gripa).
elimina(vitaminas,cansancio).
elimina(aspirinas, fiebre).
elimina(jarabe,tos).
%primerPunto
mostrar_sintomas(X,Y) :- sintoma_de(Y, X), display(Y).
%segundoPunto
valor(X,Y) :- tiene_sintomas(X,Y),sintoma_de(Y,X).
%tercerPunto
enfermo(X,Y):-tiene_sintomas(X,Y),sintomas_de(Z,Y).
recetar(X,Y):-enfermo_de(Y,A), sintoma_de(Z,Y)
