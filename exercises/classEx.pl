%facts

enfermo_de(manuel,gripa).
tiene_sintomas(alicia,cansancio).
sintoma_de(fiebre,gripa).
sintoma_de(tos,gripa).
sintoma_de(cansancio, gripa).
elimina(vitaminas,cansancio).
elimina(aspirinas, fiebre).
elimina(jarabe,tos).

%1st task print all the symptoms of a illness in one line
imprimir_sintomas(X) :- 
    write('Síntomas de '), write(X), write(': '),
    findall(Y, sintoma_de(Y, X), L), write(L).

%2nd task TODO: finish task 2 (get the task to develop). 
valor(X,Y) : - tiene_sintomas(X,Y),sintoma_de(Y,X).

%3rd task Prescribes medication to cure a particular illness
recetar(X) :- 
    write('La medicina que debería tomar para acabar con la '), write(X), write(' es: '),
    findall(M, (elimina(M,Y),sintoma_de(Y, X)), L), write(L).