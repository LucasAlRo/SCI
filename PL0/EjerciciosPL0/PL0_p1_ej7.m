%{
Ejercicio 7. Polinomios
Realice una función de Matlab que permita obtener las raíces de un 
producto de polinomios y las clasifique en reales y complejas. Para ello 
ha de realizar los siguientes pasos:
%}

clear all
close all

% 1. Las entradas y salidas de la función son las que se especifican, 
% según la siguiente sintaxis:
% [solución, reales, complejas]=raices(poli_1, poli_2)
% a) Recoge los arrays con los que se crean los polinomios.
poli1 = input ('Introduzca el Polinomio 1: ');
poli2 = input ('Introduzca el Polinomio 2: ');

% b) Solicita si la solución se aplica a uno de los polinomios o al 
% producto: poli_1, poli_2, prod_poli
disp('¿Para qué polinomio desea encontrar solución? ');
opcion   = input ('¿p1, p2, o prod? ', 's');

% c) Devuelve las raíces del polinomio indicado y su clasificación 
% (nº raíces reales y nº raíces complejas).
switch opcion
    case "p1"
        [solucion, reales, complejas] = raices(poli1); 
    case "p2"
        [solucion, reales, complejas] = raices(poli2);
    case "prod"
        [solucion, reales, complejas] = raices(conv(poli1,poli2));
end  

%%
disp('Raices del polinomio seleccionado: ')
disp(solucion);

disp('Número de raices reales del polinomio seleccionado: ')
disp(size(reales,1));
disp('Raices reales del polinomio seleccionado: ')
disp(reales);

disp('Número de raices complejas del polinomio seleccionado: ')
disp(size(complejas,1));
disp('Raices complejas del polinomio seleccionado: ')
disp(complejas);

% d) Representa en el plano complejo la ubicación de las raíces obtenidas. 
figure('Name','Raices del polinomio seleccionado','NumberTitle','off') %Titulo de la ventana
plot(1:size(reales),real(reales),'gx', 1:size(complejas), imag(complejas), 'bo');
title('Raices del polinomio');
legend('Reales', 'Imaginarias');
