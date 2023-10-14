% Función auxiliar para solicitar por la consola las dimensiones de la 
% matriz que se crea en el ejercicio 3. 

% 1. Solicite al usuario las dimensiones de las matrices en formato [filas cols], 
% (si se introduce un único número, la matriz será cuadrada):
function [matriz] = IntroducirMatriz(dimensiones)
    n = input('Introduce "r" para rellenar aleatoriamente o "n" para hacerlo a mano', 's');
    
    switch n
        case 'r'
            if size(dimensiones)==1  %Si solo hay un digito, la matriz es cuadrada
                A = rand(dimensiones);
            else 
                A = rand (dimensiones(1), dimensiones(2));
            end
        case 'n' 
            disp('Por favor, introduce los siguiente valores de la matriz:')
            for i=1:dimensiones(1)
                for j=1:dimensiones(2)
                     fprintf('Posición [%i, %i]: ', i, j);
                    A(i,j) = input('');
                end
            end
        otherwise
            disp('ERROR: INPUT NO VÁLIDA:  la matriz se rellena de forma aleatoria')
            A = rand(dimensiones);
    end
    matriz=A;
end
