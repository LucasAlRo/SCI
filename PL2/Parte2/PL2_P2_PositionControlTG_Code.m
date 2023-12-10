clc; clear all;
% Inicializamos las variables necesarias para el sistema
Ts = 100e-3;
x_0 = 0.02;
y_0 = 0;
th_0 = 0;
obsx=2;
obsy=1;
% Hacemos la simulacion
sim('PL2_P2_PositionControlTG.slx');
% Recogemos los datos de trayectoria que envia el modelo desde simulink
trayectoria_x = salida_xref.signals.values';
trayectoria_y = salida_yref.signals.values';
x = salida_x.signals.values';
y = salida_y.signals.values';
% Pintamos ambas trayectorias en un figure
figure(1);
hold on;
tray_original = plot(trayectoria_x, trayectoria_y);
tray_obstaculo=plot(obsx,obsy,'x');
tray_robot = plot(x, y);
hold off;
grid on;
legend([tray_original tray_obstaculo tray_robot], {'Trayectoria generada', 'Obstaculo', 'Trayectoria robot'});
title('Comparación de trayectorias');