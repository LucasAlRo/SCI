%{
Ejercicio 1. Perceptrón
Se desea clasificar un conjunto de datos pertenecientes a cuatro clases 
diferentes. Los datos y las clasesa las que pertenecen con los que se 
muestra a continuación:

  x1       x0   Clase
 0.1      1.2     2
 0.7      1.8     2
 0.8      1.6     2
 0.8      0.6     0
 1.0      0.8     0
 0.3      0.5     3
 0.0      0.2     3
-0.3      0.8     3
-0.5     -1.5     1
-1.5     -1.3     1

Se desea diseñar un clasificador neuronal mediante un perceptrón simple 
que clasifique estos datos. Diseñe el clasificador, visualice los 
parámetros de la red y dibuje los datos junto con las superficies que
los separan.
%}

clear all;close all;

%% Se declaran las matrices P y T con los valores:

P = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5; 
     1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3];
T = [1 1 1 0 0 1 1 1 0 0;
     0 0 0 0 0 1 1 1 1 1];

% Se crea una red perceptron con estos valores y se entrena

net = newp(P, T);
net = train(net, P, T);

Y = sim(net, P);

% ¿Consigue la red separar los datos?, 
% ¿cuántas neuronas tiene la capa de salida?, ¿por qué?

figure('Name','Perceptron 1','NumberTitle','off')
plotpv(P, T);
plotpc(net.iw{1, 1}, net.b{1});
title('Clasificador neuronal');
xlabel('x_1');
ylabel('x_0');


%¿Qué ocurre si se incorpora al conjunto un nuevo dato: [0.0 -1.5] 
% de la clase 3?

%% Se incorpora el nuevo dato
P2 = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5 0.0; 
     1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3 -1.5];
T2 = [1 1 1 0 0 1 1 1 0 0 1;
     0 0 0 0 0 1 1 1 1 1 1];

net2 = newp(P2, T2);
net2 = train(net2, P2, T2);

Y2 = sim(net2, P2);

figure('Name','Perceptron 2','NumberTitle','off')
plotpv(P2, T2);
plotpc(net2.iw{1, 1}, net2.b{1});
title('Clasificador neuronal');
xlabel('x_1');
ylabel('x_0');
