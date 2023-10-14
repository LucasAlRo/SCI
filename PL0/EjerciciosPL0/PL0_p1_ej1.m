%{ Ejercicio 1. Matrices y vectores.
% Realice un script de Matlab que permita desarrollar una serie de
% operaciones con una matriz:  }%

clear all
close all

% 1) Cree la siguiente matriz A y el vector v:
A = [1 2; 3 4; 5 6; 7 8];
v = [14;16;18;20];
disp('Matriz A:');
disp(A);
disp('Vector v:');
disp(v);

% 2) Obtenga y visualice una matriz B concatenando la matriz A y el vector
% v:
B = [A v];
disp('Matriz B:');
disp(B);

% 3) Obtenga y visualice un vector fila resultado de concatenar las 
% filas de la matriz B:
nFilas = size(B,1); %1 es el numero de filas y el 2 el de columnas
vFilas= [];
for i=1:nFilas
    fila=B(i,:);
    vFilas=[vFilas,fila];
end 
disp('Filas de B concatenadas:');
disp(vFilas);

% 4) Obtenga y visualice un vector columna resultado de concatenar 
% las columnas de la matriz B:
ncolumnas = size(B,2); %2 en lugar de 1 
vColumnas= [];
for i=1:ncolumnas
    columna=B(:,i);
    vColumnas=[vColumnas;columna];
end
disp('Columnas de B concatenadas=')
disp(vColumnas);