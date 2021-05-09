 %Dado um número natural N ≥ 0, retornará o
%N-ésimo elemento da sequência de Fibonacci.


fibonacci(1,M):- M = 1.
fibonacci(2,M):- M = 1.
fibonacci(N, MM):- N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, M1), 
    fibonacci(N2, M2), 
    MM is M1 + M2.

entrada2 :-
nl,
    write('Insira o valor de N da Sequencia de Fibonacci: '),nl,
    read(N),
    fibonacci(N, MM),nl,
    write('Valor do termo de posição N = '), write(N),
    write(' é: '), write(MM).
    
    entrada2 :-
nl,
    write('Insira o valor de N da Sequencia de Fibonacci: '),nl,
    read(N),
    fibonacci(N, MM),nl,
    write('Valor do termo de posição N = '), write(N),
    write(' é: '), write(MM).

%Consultas e respostas: ____________________________________________________%
%Consulta 01
%Insira o valor de N da Sequencia de Fibonacci:
%10
%Resposta 01
%Valor do termo de posição N = 10 é: 55
%
%%Consulta 02
%Insira o valor de N da Sequencia de Fibonacci:
%5
%Resposta 02
%Valor do termo de posição N = 5 é: 5
%
%Consulta 03
%Insira o valor de N da Sequencia de Fibonacci:
%1
%Resposta 03
%Valor do termo de posição N = 1 é: 1
% __________________________________________________________________________%
