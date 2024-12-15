%Atributos de objetos

hombre(Abraham).
hombre(Clancy).
hombre(Homero).
hombre(Bart).
hombre(Burns).
hombre(Skinner).
hombre(Milhouse).

mujer(Mona).
mujer(Jacqueline).
mujer(Paty).
mujer(Selma).
mujer(Marge).
mujer(Maggie).
mujer(Lisa).
mujer(Edna).

perro(Helper).

gato(Snowball).

alien(Kang).

%Relaciones entre objetos

matrimonio(Abraham, Mona).
matrimonio(Jacqueline, Clancy).
matrimonio(Homero, Marge).

% Semantica:  progenitura(hijo, progenitura).

progenitura(Homero, Abraham).
progenitura(Homero, Mona).
progenitura(Marge, Jacqueline).
progenitura(Marge, Clancy).
progenitura(Paty, Jacqueline).
progenitura(Paty, Clancy).
progenitura(Selma, Jacqueline).
progenitura(Selma, Clancy).
progenitura(Bart, Homero).
progenitura(Bart, Marge).
progenitura(Lisa, Homero).
progenitura(Lisa, Marge).
progenitura(Maggie, Kang).
progenitura(Maggie, Marge).

%===========================
%Seccion de REGLAS
%===========================

diferente(X,Y):- X \== Y.

% Semantica: esposa(la_esposa, el_esposo).
esposa(A,B):-mujer(A),( matrimonio(A,B) ; matrimonio(B,A) ).

% Semantica: esposo(el_esposo, la_esposa).
esposo(A,B):-hombre(A),( matrimonio(A,B) ; matrimonio(B,A) ).

% Semantica: hermanos(el_hermano, el_carnal).
hermanos(A,B):-progenitura(C,A),
    progenitura(C,B),
    diferente(A,B).

% Semantica: cunado(el_cunado, el_matrimonio).
cunado(A,B):-hombre(A),
    matrimonio(B,C),
    hermanos(A,C).

% Semantica: cunada(el_cunada, el_matrimonio).
cunada(A,B):-mujer(A),
    matrimonio(B,C),
    hermanos(A,C).

%Semantica: abuelo(el_abuelo, el_nieto/a).
abuelo(A,B):- hombre(A),
    progenitura(A,C),
    progenitura(C,B).

%Semantica: abuela(el_abuela, el_nieto/a).
abuela(A,B):- mujer(A),
    progenitura(A,C),
    progenitura(C,B).


