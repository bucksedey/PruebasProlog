%Autor:
%Fecha:
%Introduccion a Prolog

%Hechos

humano(socrates).
humano(platon).
humano(aristoteles).

% discipulo(discipulo, maestro).

discipulo(socrates,platon).
discipulo(platon,aristoteles).

%Reglas

mortal(X):-humano(X).

%Consultar   ?- es_mortal(socrates).
