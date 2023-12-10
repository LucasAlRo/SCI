clc; clear all;
% Referencia x-y de posicion
Ts = 100e-3;

x_0 = 0.02;
y_0 = 0;
th_0 = 0;

% Ejecutar Simulacion
sim('PL2_P1_PositionControlTG.slx');

% Para mostrar
trayectoria_x = salida_xref.signals.values';
trayectoria_y = salida_yref.signals.values';

x = salida_x.signals.values';
y = salida_y.signals.values';

% Pintamos ambas trayectorias en un figure
figure(1);
hold on;
tray_original = plot(trayectoria_x, trayectoria_y);
tray_robot = plot(x, y);
hold off;
grid on;
legend([tray_original tray_robot], {'Trayectoria generada', 'Trayectoria robot'});
title('Comparación');