% Ejercicio 3. Matrices y vectores.
% Programe un script en Matlab que permita realizar una serie de 
% operaciones con dos matrices (A y B)  que se introducirán por teclado:

clear all
close all

% 1. Solicite al usuario las dimensiones de las matrices en formato [filas cols], 
% (si se introduce un único número, la matriz será cuadrada):

% IntroducirMatriz.m

%2. Genere dos matrices (A y B) de las dimensiones elegidas. 
% Para rellenar las matrices, escriba una función en Matlab 
% (en un fichero diferente) que reciba como parámetro las dimensiones 
% deseadas [filas cols], y devuelva la matriz rellena. 

n = input ('Indique el tamaño de la matriz A: ');
[A] = IntroducirMatriz(n);

m = input ('Indique el tamaño de la matriz B: ');
[B] = IntroducirMatriz(m);

% 4. Calcule y muestre por pantalla: 
% a) Las matrices generadas A y B
disp('Matriz A:')
disp(A);
disp('Matriz B:')
disp(B);

%b) La transpuesta e inversa de cada una de las matrices
disp('TRANSPUESTAS DE LAS MATRICES:')
disp('Transpuesta de A: ');
disp(A');
disp('Transpuesta de B: ');
disp(B');

disp('INVERSAS DE LAS MATRICES:')
dimensionesA = size(A);
if dimensionesA(1)==dimensionesA(2)
    disp('Inversa de A: ');
    disp(inv(A));
else
    disp('La matriz A no es cuadrada, por lo que no tiene inversa')
end

dimensionesB = size(B);
if dimensionesB(1)==dimensionesB(2)
    disp('Inversa de B: ');
    disp(inv(B));
else
    disp('La matriz B no es cuadrada, por lo que no tiene inversa')
end

% c) El valor del determinante y el rango de cada una de las matrices
disp('RANGOS DE LAS MATRICES:')
disp('Rango de A: ');
disp(rank(A));
disp('Rango de B: ');
disp(rank(B));

disp('DETERMINANTES DE LAS MATRICES: ')

if dimensionesA(1)==dimensionesA(2)
    disp('Determinante de A: ');
    disp(det(A));
else
    disp('La matriz A no es cuadrada, por lo que no tiene determinante');
end

if dimensionesB(1)==dimensionesB(2)
    disp('Determinante de B: ');
    disp(det(B));
else
    disp('La matriz A no es cuadrada, por lo que no tiene determinante');
end

% d) El producto de A y B (matricial y elemento a elemento)
disp('PRODUCTO MATRICIAL:');
if dimensionesA(2)==dimensionesB(1)
    disp(A*B);
else
    disp('¡Las dimensiones de las matrices impiden el producto matricial!');
end    

disp('PRODUCTO ELEMENTO A ELEMENTO:');
if dimensionesA(2)==dimensionesB(1)
    disp(A.*B);
else
    disp('¡Las dimensiones de las matrices impiden el producto matricial!');
end    

% e) Un vector fila obtenido concatenando la primera fila de cada una de las matrices
vFila = [A(1,:) B(1,:)];
disp('PRIMERAS FILAS CONCATENADAS:');
disp(vFila);

% f) Un vector columna obtenido concatenando la primera columna de cada una de las matrices
vColumna = [A(:,1);B(:,1)];
disp('PRIMERAS COLUMNAS CONCATENADAS:');
disp(vColumna);