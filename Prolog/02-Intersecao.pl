%Le duas listas L1 e L2, retorna a lista L3 que é a
%interseção de L1 e L2.
intersecao([], _, []).

intersecao([H1|T1], L2, [H1|Res]) :-
    membro(H1, L2),
    intersecao(T1, L2, Res).

intersecao([_|T1], L2, Res) :-
    intersecao(T1, L2, Res).


%Consultas e respostas: ____________________________________________________%
%	intersecao([a,e,g,c,f],[b,e,h,j], W).
%	Resposta: W = [e]
%	
%	intersecao([2,5,6,7,8],[12,11,4,5,9,18,2], W).
%	Resposta: W = [2, 5]
%	
%	intersecao(['Wallace','Robert'],['Fernanda', 'Urias','Weverton', 'Wallace'], W).
%	Resposta: W = ['Wallace']
% __________________________________________________________________________%
