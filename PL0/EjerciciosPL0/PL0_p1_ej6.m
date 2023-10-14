%{
Ejercicio 6. Sistemas lineales
Dados los siguientes sistemas lineales de 10 ecuaciones con 4 incógnitas

1. Exprese el sistema de forma matricial en Matlab. Para ello, cree 
las matrices A y B.
%}

clear all
close all

%% Expresion del sistema
% -------------------------PRIMER SISTEMA:----------------
A = [0 2 10 7; 2 7 7 1; 1 9 0 5; 4 0 0 6; 2 8 4 1; 10 5 0 3; 2 6 4 0; 
    1 1 9 3; 6 4 8 2; 0 3 0 9];

% Terminos independientes
ATi = [90; 59; 15; 10; 80; 17; 93; 51; 41; 76];

% ------------------------SEGUNDO SISTEMA:----------------
B = [0.110 0 1 0; 0 3.260 0 1; 0.425 0 1 0; 0 3.574 0 1; 0.739 0 1 0; 
    0 3.888 0 1; 1.054 0 1 0; 0 4.202 0 1; 1.368 0 1 0; 0 4.516 0 1];

% Terminos independientes
BTi = [317; 237; 319; 239; 321; 241; 323; 243; 325; 245];

%% Operaciones con el sistema
% 2. Escriba un script en que permita:
% a) Obtener el número de condición de la matriz A respecto a la inversión
nCondicion = cond(A);
disp('Número de condición de la matriz A:');
disp(nCondicion);

% b) Resolver el sistema de ecuaciones para obtener la matriz x = [x1, x2, x3, x4]’.
SolucionesA = linsolve(A,ATi);
SolucionesB = linsolve(B,BTi);

% c) Añadir ruido a la matriz b, sumándole un vector aleatorio de media 0 
% y desviación 1, y resuelva el sistema de ecuaciones resultante.
% (Distribucion normal estandar)
media = 0; desv = 1;
vRuido = desv.*randn(1,10) + media;

BTiR = [];

for i=1:10
    BTiR(i) = BTi(i)+vRuido(i);
end

SolucionesBRuido = linsolve(B,BTiR');

%% Mostrar todo

% d) Mostrar el resultado (con y sin ruido añadido) por pantalla. 
fprintf('SOLUCIONES A: [X1:%i, X2:%i, X3:%i, X4:%i]\n', SolucionesA(1), ...
    SolucionesA(2), SolucionesA(3), SolucionesA(4));

fprintf('SOLUCIONES B: [X1:%i, X2:%i, X3:%i, X4:%i]\n', SolucionesB(1), ...
    SolucionesB(2), SolucionesB(3), SolucionesB(4));

fprintf('SOLUCIONES B CON RUIDO: [X1:%i, X2:%i, X3:%i, X4:%i]\n', ...
    SolucionesBRuido(1), SolucionesBRuido(2), SolucionesBRuido(3), ...
    SolucionesBRuido(4));

fprintf('COMPARACION DE VALORES: [ΔX1:%i, ΔX2:%i, ΔX3:%i, ΔX4:%i]\n', ...
    SolucionesB(1)-SolucionesBRuido(1), SolucionesB(2)-SolucionesBRuido(2), ...
    SolucionesB(3)-SolucionesBRuido(3), SolucionesB(4)-SolucionesBRuido(4));
