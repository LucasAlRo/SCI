%{
Ejercicio 2. Aproximación de funciones
Una de las aplicaciones inmediatas de las redes neuronales es la 
aproximación de funciones. Paraello, Matlab dispone de una red optimizada, 
fitnet, con la que se trabajará en este ejercicio. El objetivo en este 
caso es aproximar la función f = sinc(t) tal y como se muestra a continuación:
%}

clear all; close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% APROXIMACIÓN DE FUNCIONES 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% DEFINICIÓN DE LOS VECTORES DE ENTRADA-SALIDA 
% ============================================
t = -3:.1:3; % eje de tiempo
F = sinc(t)+.001*randn(size(t)); % función que se desea aproximar

figure('Name','Función a aproximar','NumberTitle','off') %Titulo de la ventana
plot(t,F,'+');
title('Vectores de entrenamiento');
xlabel('Vector de entrada P');
ylabel('Vector Target T');

% Estudie los efectos sobre la solución final de modificar el método de 
% entrenamiento (consulte la ayuda de Matlab y pruebe 4 métodos diferentes) 
% y el número de neuronas de la capa oculta.

%{
Métodos de entrenamiento utilizados:

-trainRP: Resilient Backpropagation (el predeterminado)
-trainLM: Levenberg-Marquardt
-trainBFG: BFGS  Quasi-Newton
-trainGD: Gradient Descent
%}

%% TRAINRP
% ==================
hiddenLayerSize = 25; % número de neuronas en la capa oculta

netRP = fitnet(hiddenLayerSize,'trainrp');

%Dividir los datos
netRP.divideParam.trainRatio = 70/100;
netRP.divideParam.valRatio = 15/100;
netRP.divideParam.testRatio = 15/100;
netRP = train(netRP,t,F);
YRP=netRP(t);

figure('Name','TRAINRP','NumberTitle','off') %Titulo de la ventana
plot(t,F,'+'); hold on;
plot(t,YRP,'-r'); hold off;
title('Resilient Backpropagation');
subtitle('Vectores de entrenamiento'); 
xlabel('Vector de entrada P'); 
ylabel('Vector Target T');

%% TRAINLM
% ==================
hiddenLayerSize = 1; % número de neuronas en la capa oculta

netLM = fitnet(hiddenLayerSize,'trainlm');

%Dividir los datos
netLM.divideParam.trainRatio = 70/100;
netLM.divideParam.valRatio = 15/100;
netLM.divideParam.testRatio = 15/100;
netLM = train(netLM,t,F);
YLM=netLM(t);

figure('Name','TRAINLM','NumberTitle','off') %Titulo de la ventana
plot(t,F,'+'); hold on;
plot(t,YLM,'-r'); hold off;
title('Levenberg-Marquardt');
subtitle('Vectores de entrenamiento'); 
xlabel('Vector de entrada P'); 
ylabel('Vector Target T');

%% TRAINBFG
% ==================
hiddenLayerSize = 1; % número de neuronas en la capa oculta

netBFG = fitnet(hiddenLayerSize,'trainbfg');

%Dividir los datos
netBFG.divideParam.trainRatio = 70/100;
netBFG.divideParam.valRatio = 15/100;
netBFG.divideParam.testRatio = 15/100;
netBFG = train(netBFG,t,F);
YBFG=netBFG(t);

figure('Name','TRAINBFG','NumberTitle','off') %Titulo de la ventana
plot(t,F,'+'); hold on;
plot(t,YBFG,'-r'); hold off;
title('BFGS  Quasi-Newton');
subtitle('Vectores de entrenamiento'); 
xlabel('Vector de entrada P'); 
ylabel('Vector Target T');

%% TRAINGD
% ==================
hiddenLayerSize = 1; % número de neuronas en la capa oculta

netGD = fitnet(hiddenLayerSize,'traingd');

%Dividir los datos
netGD.divideParam.trainRatio = 70/100;
netGD.divideParam.valRatio = 15/100;
netGD.divideParam.testRatio = 15/100;
netGD = train(netGD,t,F);
YGD=netGD(t);

figure('Name','TRAINGD','NumberTitle','off') %Titulo de la ventana
plot(t,F,'+'); hold on;
plot(t,YGD,'-r'); hold off;
title('Gradient Descent');
subtitle('Vectores de entrenamiento');  
xlabel('Vector de entrada P'); 
ylabel('Vector Target T');