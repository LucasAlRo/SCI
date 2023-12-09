clear all; clc;
%Tiempo de muestreo
Ts=100e-3
% Referencia x-y de posicion
refx=5;
refy=5;
obsx=2.5;
obsy=2.5;
% Ejecutar Simulacion
sim('PL2_P2_PositionControl.slx')
% Mostrar
x=salida_x.signals.values;
y=salida_y.signals.values;
figure;
hold on; 
tray_original=plot(x,y);
tray_obs=plot(obsx,obsy, 'x');
grid on;
hold off;
legend([tray_original tray_obs], {'Trayectoria', 'Obstaculo'});
title('Trayectoria del robot');
