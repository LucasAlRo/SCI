close all;
clear all;

Ts=100e-3;

% Mostrar
x=salida_x.signals.values;
y=salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on; 

% Generar N posiciones aleatorias, simular y guardar en variables
N=30
E_d_vec=[];
E_theta_vec=[];
V_vec=[];
W_vec=[];
for i=1:N
refx=10*rand-5;
refy=10*rand-5;
sim('PositionControl.slx')
E_d_vec=[E_d_vec;E_d.signals.values];
E_theta_vec=[E_theta_vec;E_theta.signals.values];
V_vec=[V_vec; V.signals.values];
W_vec=[W_vec; W.signals.values];
end
inputs=[E_d_vec'; E_theta_vec'];
outputs=[V_vec'; W_vec'];

hiddenLayerSize = 12;
net = fitnet(hiddenLayerSize);
net.divideParam.trainRatio = 80/100;
net.divideParam.valRatio = 10/100;
net.divideParam.testRatio = 10/100;
net.trainParam.epochs = 100000;
net = train(net, inputs, outputs);

refx=rand;
refy=rand;

% Creación de la gráfica
figure(1);
title ("Comparación Caja Negra y Red Neuronal");
hold on;
grid on;

% Simulación caja negra
sim('PL1_P2_PositionControl.slx');
plot(salida_x.signals.values, salida_y.data.signals.values);

% Simulación red neuronal
sim('PL1_P2_PositionControlNet.slx');
plot(salida_x_redN.signals.values, salida_y_redN.signals.values);
legend('Caja Negra','Red Neuronal');

figure(2);
plot(E_theta);