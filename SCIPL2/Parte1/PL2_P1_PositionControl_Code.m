%Tiempo de muestreo
Ts=100e-3
% Referencia x-y de posicion
refx=-13;
refy=-13;
% Ejecutar Simulacion
sim('PL2_P1_PositionControl.slx')
% Mostrar
x=salida_x.signals.values;
y=salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on;