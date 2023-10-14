%{
 Ejercicio 4. Tiempo de cómputo y representación gráfica
 Realice un script en Matlab que permita obtener y representar el tiempo 
 consumido para el cálculo del rango y el determinante de una matriz en 
 función de su tamaño (entre 1x1 y 25x25).  
• La matriz se rellenará con valores aleatorios.
• El tiempo necesario para cada operación debe obtenerse por separado.
• Los tiempos de procesamiento para el cálculo del rango y del determinante
 se representarán en la misma gráfica, utilizando para ello diferentes colores.
• Deben añadirse etiquetas a los ejes, y una leyenda indicando qué representa cada línea. 
%}

clear all
close all

n=250;

tiempoDeterminante=[];
tiempoRango=[];

for i=1:n
    A = rand(i);
    tic;
    det(A);
    tocDeterminante = toc;
    tiempoDeterminante = [tiempoDeterminante tocDeterminante];
    
    tic;
    rank(A);
    tocRango = toc;
    tiempoRango = [tiempoRango tocRango];
end    

%% Plotting
figure('Name','Comparando tiempos','NumberTitle','off') %Titulo de la ventana
plot(1:n, tiempoDeterminante,'g--x', 1:n, tiempoRango, 'b--o');
title('Comparación de tiempos según el tamaño de una matriz');
xlabel('Dimensiones de la matriz cuadrada');
ylabel('Tiempo estimado de operación  (segundos)');
legend('Determinante', 'Rango');
