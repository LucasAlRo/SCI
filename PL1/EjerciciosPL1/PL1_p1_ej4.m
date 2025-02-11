%{
Ejercicio 4. Clasificación.
La clasificación de patrones es una de las aplicaciones que dieron origen 
a las redes neuronales artificiales. Como en el caso anterior, la toolbox 
de redes neuronales de Matlab dispone de una red optimizada para la 
clasificación, patternnet, que analizaremos en este ejemplo.
%}

close all; clear all;

%% Simpleclass
[inputsSC,targetsSC] = simpleclass_dataset;
% Creción de una red neuronal para el reconocimiento de patrones
hiddenLayerSizeSC = 10;
netSC = patternnet(hiddenLayerSizeSC);
netSC.trainFcn = 'trainrp';

% División del conjunto de datos para entrenamiento, validación y test
netSC.divideParam.trainRatio = 70/100;
netSC.divideParam.valRatio = 15/100;
netSC.divideParam.testRatio = 15/100;

% Entrenamiento de la red
[netSC,trSC] = train(netSC,inputsSC,targetsSC);

% Prueba
outputsSC = netSC(inputsSC);
errorsSC = gsubtract(targetsSC,outputsSC);
performanceSC = perform(netSC,targetsSC,outputsSC);

% Visualización
view(netSC)

%Pruebe este mismo script con el conjunto de datos cancer_dataset, y 
% evalúe sus resultados. Estudie de nuevo la mejora que supone utilizar 
% distintos métodos de entrenamiento y una división diferente de los 
% datos (entrenamiento, validación y test).

%% Cancer
[inputsC,targetsC] = cancer_dataset;
% Creción de una red neuronal para el reconocimiento de patrones
hiddenLayerSizeC = 10;
netC = patternnet(hiddenLayerSizeC);
netC.trainFcn = 'trainrp';

% División del conjunto de datos para entrenamiento, validación y test
netC.divideParam.trainRatio = 70/100;
netC.divideParam.valRatio = 15/100;
netC.divideParam.testRatio = 15/100;

% Entrenamiento de la red
[netC,trC] = train(netC,inputsC,targetsC);

% Prueba
outputsC = netC(inputsC);
errorsC = gsubtract(targetsC,outputsC);
performanceC = perform(netC,targetsC,outputsC);

% Visualización
view(netC)
