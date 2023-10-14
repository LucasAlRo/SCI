% Ejercicio 1. Transformadas de señales. 

clear all
close all

% 1. Obtenga la transformada z de la siguiente función: f(k)= 2+5k+k^2
% Represente gráficamente las señales original y transformada.

syms k; % Necesario  para operar con k y otras variables
fk = 2 + 5*k + k^2;

disp('Transformada Z de la función 1:');
Fz = ztrans(fk)

txt = {'f(k):  '+string(fk),'F(z): '+string(Fz)}

figure('Name','Transformadas Z','NumberTitle','off','Position',[100 -100 800 1000]);
subplot(4,1,1);
plot(0:10, subs(fk, k, 0:10), 0:10, subs(Fz, Fz, 0:10));
legend('f(k)','F(z)');
title('Señales original y transformada de la función 1:');
subtitle(txt);
ylabel('Valor obtenido');


% 2. Obtenga la transformada z de la siguiente función: f(k)=sen(k)*e^-ak
% Represente gráficamente, de nuevo, la señales original y transformada. 

syms k2;
fk2 = sin(k2) * exp(-5*k2);

disp('Transformada Z de la función 2:');
Fz2 = ztrans(fk2)

txt2 = {'f(k):  '+string(fk2),'F(z): '+string(Fz2)}

subplot(4,1,2);
plot(0:10, subs(fk2, k2, 0:10), 0:10, subs(Fz2, Fz2, 0:10));
legend('f(k)','F(z)');
title('Señales original y transformada de la función 2:');
subtitle(txt2);
ylabel('Valor obtenido');

% 3. Dada la siguiente función de transferencia discreta:
% T(z) = 0.4*z^2/(z^3 - z^2 + 0.1z + 0.02)
num = [0.4,0,0];
den = [1,-1,0.1,0.02];

% • Obtenga y represente la respuesta al impulso del sistema.
sys = tf(num,den,0.1); % 10 milisegundos de tiempo de muestreo
subplot(4,1,3);
impulse(sys);
title('Respuesta del sistema al impulso: ');
subtitle('0.4*z^2/(z^3 - z^2 + 0.1z + 0.02)');
legend('T(z)');
ylabel('Valor obtenido');

% • Obtenga y represente la respuesta del sistema ante una entrada escalón.
subplot(4,1,4);
step(sys);
title('Respuesta del sistema al escalón:');
subtitle('0.4*z^2/(z^3 - z^2 + 0.1z + 0.02)');
legend('T(z)');
ylabel('Valor obtenido');

