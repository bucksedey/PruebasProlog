% Ciclo principal

main:-repeat,
      pinta_menu,
      read(Opcion),
      ( (Opcion=1,doImc,fail);
      (Opcion=2,!)).

% Muestra el menu

pinta_menu:-nl,nl,
      writeln('===================================='),
      writeln('          DRA. ALEXIA SIRI'),
      writeln('      <<  Bariatra Experta  >>'),
      writeln('===================================='),
      nl,writeln('       MENU PRINCIPAL'),
      nl,write('1 Calcular indice de masa corporal'),
      nl,write('2 Salir'),
      nl,write('================================='),
      nl,write('Indica tu opcion:').

% Regla para calcular IMC

doImc:-nl, write('================================='),nl,
       write('Elegiste: Calculo del Indice de Masa Corporal\n'),nl,
       write('Indique su peso en Kilogramos:'),read(Peso),
       write('Indique su estatura en Metros:'),read(Estatura),Estatura > 0,
       write('Indique su genero (1/Male, 2/Female):'),read(Sexo),
       IND is Peso/(Estatura*Estatura),
       nl,format('Su indice de masa corporal es: ~g',IND),
       nl, write('Diagnostico y conducta a seguir: '),
        (   (Sexo=1,IND<17,write('Desnutricion: Pronto! Acude a un medico!'));
	    (Sexo=1,IND>=18,IND=<20,write('Bajo Peso: Alimentate mejor\n'));
	    (Sexo=1,IND>=21,IND=<25,write('NORMAL: ¡Felicidades!\n'));
	    (Sexo=1,IND>=26,IND=<30,write('Sobrepeso: Dieta, ejercicio y medicinas\n'));
	    (Sexo=1,IND>=31,IND=<35,write('Obesidad: Medicinas, globo o cirugia\n'));
	    (Sexo=1,IND>=36,IND=<40,write('Obesidad marcada: Cirugia Bariatrica\n'));
	    (Sexo=1,IND>40,write('Obesidad Morbida: URGENTE CIRUGIA\n'));
		
		(Sexo=2,IND<16,write('Desnutricion: Pronto! Acude a un medico!'));
	    (Sexo=2,IND>=17,IND=<20,write('Bajo Peso: Alimentate mejor\n'));
	    (Sexo=2,IND>=21,IND=<24,write('NORMAL: ¡Felicidades!\n'));
	    (Sexo=2,IND>=25,IND=<29,write('Sobrepeso: Dieta, ejercicio y medicinas\n'));
	    (Sexo=2,IND>=30,IND=<34,write('Obesidad: Medicinas, globo o cirugia\n'));
	    (Sexo=2,IND>=35,IND=<39,write('Obesidad marcada: Cirugia Bariatrica\n'));
	    (Sexo=2,IND>=40,write('Obesidad Morbida: URGENTE CIRUGIA\n')) ).
