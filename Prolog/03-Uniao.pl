%Duas listas L1 e L2, retorna a lista L3 que é a
%união de L1 e L2. (Sem elementos repetidos)

membro(X,[X|_]).
membro(X,[_|Y]):- membro(X,Y).
uniao([],[],[]).
uniao(Lista1,[],Lista1).
uniao(Lista1, [Cabeca2|Calda2], [Cabeca2|Saida]):-
    \+(membro(Cabeca2,Lista1)), uniao(Lista1,Calda2,Saida).
uniao(Lista1, [Cabeca2|Calda2], Saida):-
    membro(Cabeca2,Lista1), uniao(Lista1,Calda2,Saida).
    
    
%Consultas e respostas: ____________________________________________________%
%	uniao([a,e,g,c,f],[b,e,h,j], W).
%	Resposta: W = [b, h, j, a, e, g, c, f]
%	
%	uniao([2,5,6,7,8],[12,11,4,5,9,18,2], W).
%	Resposta: W = [12, 11, 4, 9, 18, 2, 5, 6, 7, 8]
%	
%	uniao(['Wallace','Robert'],['Fernanda', 'Urias','Weverton', 'Wallace'], W).
%	Resposta: W = ['Fernanda', 'Urias', 'Weverton', 'Wallace', 'Robert']
% __________________________________________________________________________%
