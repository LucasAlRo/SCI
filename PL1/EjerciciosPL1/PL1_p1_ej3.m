%{
Ejercicio 3. Aproximación de funciones (II)
En este ejercicio, se estudiarán en detalle las herramientas que 
facilita Matlab para el diseño y pruebade redes neuronales ejecutando 
el siguiente código de ejemplo:
%}
clear all; close all;

%% Simplefit
% Carga de datos de ejemplo disponibles en la toolbox
[inputsSF,targetsSF] = simplefit_dataset;
% Creación de la red
hiddenLayerSizeSF = 10;
netSF = fitnet(hiddenLayerSizeSF);
% División del conjunto de datos para entrenamiento, validación y test
netSF.divideParam.trainRatio = 75/100;
netSF.divideParam.valRatio = 15/100;
netSF.divideParam.testRatio = 15/100;
% Entrenamiento de la red
[netSF,trSF] = train(netSF,inputsSF,targetsSF);
% Prueba
outputsSF = netSF(inputsSF);
errorsSF = gsubtract(outputsSF,targetsSF);
performanceSF = perform(netSF,targetsSF,outputsSF)
% Visualización de la red
view(netSF)

%% Bodyfat
% Carga de datos de ejemplo disponibles en la toolbox
[inputsBF,targetsBF] = bodyfat_dataset;
% Creación de la red
hiddenLayerSizeBF = 20;
netBF = fitnet(hiddenLayerSizeBF, 'trainbfg');
% División del conjunto de datos para entrenamiento, validación y test
netBF.divideParam.trainRatio = 60/100;
netBF.divideParam.valRatio = 20/100;
netBF.divideParam.testRatio = 20/100;
% Entrenamiento de la red
[netBF,trBF] = train(netBF,inputsBF,targetsBF);
% Prueba
outputsBF = netBF(inputsBF)
errorsBF = gsubtract(outputsBF,targetsBF)
performanceBF = perform(netBF,targetsBF,outputsBF)
% Visualización de la red
view(netBF)

