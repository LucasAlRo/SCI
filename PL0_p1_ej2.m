% Ejercicio  2. Matrices y vectores. 
% Realice un script de Matlab que permita desarrollar una 
% serie de operaciones con una matriz:

clear all
close all

%  1. El script ha de generar una matriz, cuadrada y aleatoria de tamaño 
% indicado por el usuario. En la línea de comandos se ha de visualizar el 
% mensaje: "Indique el tamaño de la matriz":

n=input('Indique el tamaño de la matriz: ');
A=rand(n);

% 2. A partir de la matriz construida, el script deberá calcular y presentar por pantalla los siguientes datos:
% a) Matriz generada:
disp('Matriz aleatoria A:')
disp(A);

% b) Una segunda matriz formada por las columnas impares de la matriz
% inicial:
B=A(:,1:2:n);
disp('Matriz de columnas impares B: ')
disp(B);

% c) El valor de los elementos de la diagonal de la matriz generada:
C=diag(A);
disp('C: Valores de la diagonal de la matriz A: ')
disp(C);

% d) Valor máximo, mínimo, medio y varianza de cada fila. Estos valores se han de representar
% gráficamente, indicando en el eje de abscisas el número de fila:

%Max, min, media y varianza de cada fila
vector_max=[];
vector_min=[];
vector_mean=[];
vector_var=[];
for i=1:n
    fila=A(i,:);
    maximo=max(fila);
    minimo=min(fila);
    media=mean(fila);
    varianza=var(fila);
    vector_max=[vector_max,maximo];
    vector_min=[vector_min,minimo];
    vector_mean=[vector_mean,media];
    vector_var=[vector_var,varianza];
end

%% Mostrar plots por cada valor
%{
figure('Name','Valor  máximo de cada fila','NumberTitle','off') %Titulo de la ventana
plot(vector_max,'ro')
xlabel('Número de la fila')
ylabel('Máximo')

figure('Name','Valor mínimo de cada fila','NumberTitle','off')
plot(vector_min,'b*')
xlabel('Número de la fila')
ylabel('Mínimo')

figure('Name','Valor medio de cada fila','NumberTitle','off')
plot(vector_mean,'g+')
xlabel('Número de la fila')
ylabel('Media')

figure('Name','Varianza de cada fila','NumberTitle','off')
plot(vector_var,'m*')
xlabel('Número de la fila')
ylabel('Varianza')
%}

%% Mostrar un único plot general
figure('Name','Todos los valores a la vez','NumberTitle','off')
plot(vector_max,'ro')
hold on;
plot(vector_min,'b*')
plot(vector_mean,'g+')
plot(vector_var,'m*')
hold off;
xlabel('Número de la fila')
ylabel('Valores')
title("Max, Min, Mean, Var")
legend({'Maximo','Minimo','Media','Varianza'})
curtick = get(gca, 'xTick');
xticks(unique(round(curtick)));