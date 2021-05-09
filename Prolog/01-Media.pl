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
    
%Consultas e respostas: ____________________________________________________%
%Consulta 01
%nsira o valor de X:
%4
%Insira o valor de Y:
%2
%Insira o valor de Z:
%5
%Maior: 5
%Média: 3.6666666666666665
%
%Consulta 02
%Insira o valor de X:
%10
%Insira o valor de Y:
%2
%Insira o valor de Z:
%11
%
%Resposta 02:
%Maior: 11
%Média: 7.666666666666667
%
%Consulta 03
%nsira o valor de X:
%10
%Insira o valor de Y:
%1000
%Insira o valor de Z:
%100
%
%Resposta: 03
%Maior: 1000
%Média: 370
% __________________________________________________________________________%
