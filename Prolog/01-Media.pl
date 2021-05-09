%Ele ler três valores, responde na tela qual é o maior entre eles e
%fornece a média aritmética também na tela.


maior(X,Y,M):- X > Y, M = X | M = Y.
maior(X,Y,Z,MM):- maior(X,Y,M), M > Z, MM = M | MM = Z.
media(X,Y,Z,M):- M is (X + Y + Z) / 3.

entrada1 :-
nl,
    write('Insira o valor de X: '),nl,
    read(X),
    write('Insira o valor de Y: '),nl,
    read(Y),
    write('Insira o valor de Z: '),nl,
    read(Z),
    media(X,Y,Z,M),
    maior(X,Y,Z,MM),
    write('Maior: '), write(MM),nl,
    write('Média: '), write(M).
