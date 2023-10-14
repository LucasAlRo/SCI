%{
Ejercicio 5. Representación gráfica en 3D
Realice un script en Matlab que dibuje sobre el área −5 ≤ x, y ≤ 5 la 
superficie, la superficie en forma de malla y el contorno de la función: 

z=y*sin(pi*x/10)+5*cos((x^2+y^2)/8)+cos(x+y)*cos(3x-y)

En la misma figura dibuje en la parte superior y centrada la gráfica de 
la superficie, en la parte inferior izquierda la gráfica de la superficie 
en forma de malla y en la parte inferior derecha la gráfica del contorno. 
Además, añada la barra de color al contorno. Deben añadirse etiquetas a 
los ejes, y un título a cada gráfica.
%}

clear all
close all

% Crear rejilla uniforme de 20 valores x,y entre 5 y -5
vector_x=linspace(-5,5,20);
vector_y=linspace(-5,5,20);

[X,Y]=meshgrid(vector_x,vector_y);

% .* significa cada elemento de la matriz 
Z = Y.*sin(pi*X/10)+5*cos((X.^2+Y.^2)/8)+cos(X+Y).*cos(3*X-Y);

%% Plotting
figure('Name','Diagramas de superficie, malla y contorno','NumberTitle','off');

% Superficie
subplot(2,2,[1,2])
surf(X,Y,Z);
colorbar         % Aporta visibilidad a los plots
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Diagrama de superfricie');

% Malla
subplot(2,2,3)
mesh(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Diagrama de malla');

% Contorno
subplot(2,2,4)
contourf(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Diagrama de contorno');
