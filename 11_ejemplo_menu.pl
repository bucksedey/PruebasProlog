%===========================
% Identificaci�n
%===========================
% Descripci�n: 
% Autor: 
% Fecha: 
%===========================


main:-menu, nl, writeln('Gracias por utilizar Prolog').


menu:-repeat,
      nl,write('Menu'),
      nl,write('1 Convertir de D�lares a Pesos'),
      nl,write('2 Convertir de Pesos a d�lares'),
      nl,write('3 Salir'),
      nl,write('Indique su opcion:'),
      read(Opcion),
      ((Opcion=1, doOpcion1,fail);
       (Opcion=2, doOpcion2,fail);
       (Opcion=3, !)).


doOpcion1:-nl,writeln('Ha elegido convertir de d�lares a pesos').

doOpcion2:-nl,writeln('Ha elegido convertir de pesos a d�lares').


