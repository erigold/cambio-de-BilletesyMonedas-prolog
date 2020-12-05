%:-use_module(library(pce)).
%use_module(library(pce_style_item)).
inicio:-random(1,100,A),random(1,100,B),random(1,100,C),random(1,100,D),random(1,100,E),
        random(1,100,F),random(1,100,G),random(1,100,H),random(1,100,I),
         write('***Inicio*** \n'),
         write(' Billetes 500:'),write(A),
         write('\n Billetes 200:'),write(B),
         write('\n Billetes 100:'),write(C),
         write('\n Billetes 50:'),write(D),
         write('\n Billetes 20:'),write(E),
         write('\n Monedas 10:'),write(F),
         write('\n Monedas 5:'),write(G),
         write('\n Monedas 2:'),write(H),
         write('\n Monedas 1:'),write(I),
         write('\n Digite el gasto\n'), read(Gasto),
         writeln('***Ingreso de Billetes***'),
         ingresa(Gasto,A,B,C,D,E,F,G,H,I).

%ingresa billetes a caja
ingresa(Gasto,A,B,C,D,E,F,G,H,I):- A is A, B is B, C is C, D is D,E is E,F is F,G is G,H is H,I is I,
                         write('Billete 500'),read(Var1)
                        ,write('Billete 200'),read(Var2)
                        ,write('Billete 100'),read(Var3)
                        ,write('Billete 50'),read(Var4),
                         write('Billete 20'),read(Var5),
                         write('Moneda 10'),read(Var6),
                         write('Moneda 5'),read(Var7),
                         write('Moneda 2'),read(Var8),
                         write('Moneda 1'),read(Var9),
                         valida(Gasto,A,B,C,D,E,Var1,Var2,Var3,Var4,Var5
                         ,Var6,Var7,Var8,Var9,F,G,H,I).


%valida agrega el valor ingresado a los billetes
%valida = 500 ,A
valida(Gasto,A,B,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I):-
                                   F is F, G is G,H is H, I is I,
                                   Var1==0 ->
                                   valida2(Gasto,A,B,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I);

                                   Var1>=1 ->X is Var1+A,
                                   valida2(Gasto,X,B,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I).

%valida2=200,B
valida2(Gasto,X,B,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I):-
                                    F is F, G is G,H is H, I is I,
                                   Var2 == 0 ->
                                   valida3(Gasto,X,B,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I);

                                   Var2 >=1 ->Y is Var2+B,
                                   valida3(Gasto,X,Y,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I).
%valida3=100,C
valida3(Gasto,X,Y,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I):-
                                    F is F, G is G,H is H, I is I,
                                   Var3 == 0 ->
                                   valida4(Gasto,X,Y,C,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I);


                                   Var3 >=1 ->Z is Var3+C,
                                   valida4(Gasto,X,Y,Z,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I).
%valida4=50,D
valida4(Gasto,X,Y,Z,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I):-
                                    F is F, G is G,H is H, I is I,
                                   Var4 ==0 ->
                                   valida5(Gasto,X,Y,Z,D,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I);

                                   Var4 >=1 -> M is Var4+D,
                                   valida5(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I).
%valida5=20,E
valida5(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I):-
                                   Var5 == 0 ->
                                   valida6(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I);

                                   Var5 >=1 ->O is Var5+E,
                                   valida6(Gasto,X,Y,Z,M,O,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I).

%valida6=10,F
valida6(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I):-
                                   Var6 == 0 ->
                                   valida7(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I);

                                   Var6 >=1 -> P is Var6+F,
                                   valida7(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,G,H,I).

%valida7=5,G
valida7(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,G,H,I):-
                                   Var7 == 0 ->
                                   valida8(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,G,H,I);

                                   Var7 >=1 -> Q is Var7+G,
                                   valida8(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,H,I).
%valida=2,H
valida8(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,H,I):-
                                   Var8 == 0 ->
                                   valida9(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,H,I);

                                   Var8 >=1 -> R is Var8+H,
                                   valida9(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,R,I).
%valida=1,I
valida9(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,R,I):-
                                   Var9 == 0 ->
                                   suma(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,R,I);

                                   Var9 >=1 -> S is Var9+I,
                                   suma(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,R,S).

% valida10(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,R,I):-
%                                   Var9 == 0 ->
%                                   suma(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,R,I);
%

                                  % Var9 >=1 -> S is Var9+I,
                                  % suma(Gasto,X,Y,Z,M,E,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,P,Q,R,S).

%Suma todas las denominaciones ingresadas y las agrega a una sola
suma(Gasto,X,Y,Z,M,O,Var1,Var2,Var3,Var4,Var5,Var6,Var7,Var8,Var9,F,G,H,I):- Z is Z, M is M,
                                    F is F, G is G,H is H, I is I,
                             Pago is Var1*500+Var2*200+Var3*100+Var4*50+Var5*20+Var6*10+Var7*5+Var8*2+Var9*1,
                                   write('Pago:'),writeln(Pago),
                                   writeln('***Billetes caja***'),
                                   write('+500:'),writeln(X),
                                   write('+200:'),writeln(Y),
                                   write('+100:'),writeln(Z),
                                   write('+50:'),writeln(M),
                                   write('+20:'),writeln(O),
                                   write('+10:'),writeln(F),
                                   write('+5:'),writeln(G),
                                   write('+2:'),writeln(H),
                                   write('+1:'),writeln(I),
                                   verifica(Gasto,Pago,X,Y,Z,M,O,F,G,H,I).

%verifica que el pago sea suficiente para cubrir el gasto
verifica(Gasto,Pago,A,B,C,D,E,F,G,H,I):-  Pago >= Gasto ->
           opera(Gasto,Pago,A,B,C,D,E,F,G,H,I).

%realiza el calculo del cambio
opera(Gasto,Pago,A,B,C,D,E,F,G,H,I):-X is Pago-Gasto ->
                        A is A, B is B,writeln('***Cambio***'),
                         operador(X,A,B,C,D,E,F,G,H,I).
%devuelve el cambio
operador(X,A,B,C,D,E,F,G,H,I):- A is A,B is B,C is C,D is D,E is E,F is F, G is G,
                                   H is H,I is I,
                   X==0 ->write('End'),true;
                  %repeat,(X==0 ->write('end') ; X > 0 -> (
                  X >= 500 -> prueba(X,A,B,C,D,E,F,G,H,I);
                  X >= 200 -> prueba2(X,A,B,C,D,E,F,G,H,I);
                  X >=100 ->prueba3(X,A,B,C,D,E,F,G,H,I);
                  X >=50 ->prueba4(X,A,B,C,D,E,F,G,H,I);
                  X >=20 ->prueba5(X,A,B,C,D,E,F,G,H,I);
                  X >=10 ->prueba6(X,A,B,C,D,E,F,G,H,I);
                  X >=5 ->prueba7(X,A,B,C,D,E,F,G,H,I);
                  X >=2 ->prueba8(X,A,B,C,D,E,F,G,H,I);
                  X >=1 ->prueba9(X,A,B,C,D,E,F,G,H,I).

prueba(X,A,B,C,D,E,F,G,H,I):- Y is X-500 -> Y is Y,Z is A-1,
writeln('Cambio:500'),write('-500:'),writeln(Z),operador(Y,Z,B,C,D,E,F,G,H,I).

prueba2(X,A,B,C,D,E,F,G,H,I):- Y is X-200, Y is Y, Z is B-1,
writeln('Cambio:200'),write('-200:'),writeln(Z),operador(Y,A,Z,C,D,E,F,G,H,I).

prueba3(X,A,B,C,D,E,F,G,H,I):- Y is X-100, Y is Y, Z is C-1,
writeln('Cambio:100'),write('-100:'),writeln(Z),operador(Y,A,B,Z,D,E,F,G,H,I).

prueba4(X,A,B,C,D,E,F,G,H,I):- Y is X-50, Y is Y, Z is D-1,
writeln('Cambio:50'),write('-50:'),writeln(Z), operador(Y,A,B,C,Z,E,F,G,H,I).

prueba5(X,A,B,C,D,E,F,G,H,I):- Y is X-20, Y is Y, Z is E-1,
writeln('Cambio:20'),write('-20:'),writeln(Z),operador(Y,A,B,C,D,Z,F,G,H,I).

prueba6(X,A,B,C,D,E,F,G,H,I):- Y is X-10, Y is Y, Z is F-1,
writeln('Cambio:10'),write('-10:'),writeln(Z),operador(Y,A,B,C,D,E,Z,G,H,I).

prueba7(X,A,B,C,D,E,F,G,H,I):- Y is X-5, Y is Y, Z is G-1,
writeln('Cambio:5'),write('-5:'),writeln(Z),operador(Y,A,B,C,D,E,F,Z,H,I).

prueba8(X,A,B,C,D,E,F,G,H,I):- Y is X-2, Y is Y, Z is H-1,
writeln('Cambio:2'),write('-2:'),writeln(Z),operador(Y,A,B,C,D,E,F,G,Z,I).

prueba9(X,A,B,C,D,E,F,G,H,I):- Y is X-1, Y is Y, Z is I-1,
writeln('Cambio:1'),write('-1:'),writeln(Z),operador(Y,A,B,C,D,E,F,G,H,Z).


list_sum([],0).

list_sum([Head|Tail], TotalSum):-
list_sum(Tail, Sum1),
TotalSum is Head+Sum1.








