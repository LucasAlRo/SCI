%{
Ejercicio 2. Aproximación de funciones
Una de las aplicaciones inmediatas de las redes neuronales es la 
aproximación de funciones. Paraello, Matlab dispone de una red optimizada, 
fitnet, con la que se trabajará en este ejercicio. El objetivo en este 
caso es aproximar la función f = sinc(t) tal y como se muestra a continuación:
%}

clear all; close all;

% Estudie los efectos sobre la solución final de modificar el método de 
% entrenamiento (consulte la ayuda de Matlab y pruebe 4 métodos diferentes) 
% y el número de neuronas de la capa oculta.