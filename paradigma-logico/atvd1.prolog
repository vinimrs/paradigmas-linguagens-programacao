%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Q1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Predicado para duplicar uma lista
duplica([], []).  % Caso base: lista vazia, retorna lista vazia
duplica([X | Resto], [X, X | RestoLista]) :-
    duplica(Resto, RestoLista).

?- duplica([1, 2, 3], L).

% Caso base
[]: Representa uma lista vazia em Prolog.
:-: Lê-se como "se".
Portanto, a linha diz: "Se a lista de entrada for vazia, a lista duplicada também é vazia."

% Caso recursivo
[X | Resto]: Representa uma lista não vazia em Prolog, onde X é o primeiro elemento e Resto é o restante da lista.
[X, X | RestoLista]: Representa a lista duplicada, onde X é duplicado e RestoLista é o restante da lista duplicada.
:-: Lê-se como "se".
duplica(Resto, RestoLista): Chamada recursiva do próprio predicado com os argumentos Resto e RestoLista.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Q2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Predicado para inverter uma lista
inverter_lista([], []).  % Caso base: lista vazia, retorna lista vazia
inverter_lista([X | Resto], ListaInvertida) :-
    inverter_lista(Resto, RestoInvertido),
    append(RestoInvertido, [X], ListaInvertida).

% Exemplo de uso:
% ?- inverter_lista([1, 2, 3], ListaInvertida).
% ListaInvertida = [3, 2, 1].

% Caso recursivo 
inverter_lista([X | Resto], ListaInvertida): Se a lista de entrada não for vazia, o predicado é chamado recursivamente para 
                                                inverter o restante da lista (Resto) e obter RestoInvertido.
append(RestoInvertido, [X], ListaInvertida): O resultado é obtido ao concatenar RestoInvertido (lista invertida do restante) 
                                                com uma lista contendo apenas o elemento X, resultando na ListaInvertida.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Q3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Caso base: achatando uma lista vazia resulta em uma lista vazia
achatamento([], []).

% Caso em que o elemento é uma lista, achata recursivamente a lista e concatena com o restante
achatamento([H|T], Resultado) :-
    is_list(H),
    achatamento(H, Achatado),
    achatamento(T, Restante),
    append(Achatado, Restante, Resultado).

% Caso em que o elemento não é uma lista, apenas mantém o elemento e achata o restante
achatamento([H|T], [H|Restante]) :-
    \+ is_list(H),
    achatamento(T, Restante).

% Predicado principal para achatar a lista
achatalista(Lista, Resultado) :-
    achatamento(Lista, Resultado).
