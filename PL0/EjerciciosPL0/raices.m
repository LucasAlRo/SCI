% Función auxiliar para obtener las raices de un polinomio y clasificarlas
% en complejas. 
function [solucion, reales, complejas] = raices(poli)
    reales=[]; complejas=[];
    solucion = roots(poli);
    for i=1:size(solucion)
        if isreal(solucion(i))
            reales=[reales;solucion(i)];
        else
            complejas=[complejas;solucion(i)];
        end
    end
end