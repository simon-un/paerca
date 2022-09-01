% Matriz B de un elemento estructural
function [MTX] = BELEME(XYE,XYP,TIPE)
  % Entrada:
  % XYE():  tabla de coordenadas globales de los nudos del elemento.
  % XYP():  tabla de coordenadas naturales del punto donde se evalúa B
  %         elemento.
  % TIPE:   código del tipo del elemento
  %       
  % Salida:
  % MTX():  matriz B del elemento

  switch TIPE
    case 102 % elemento barra de armadura
      [MTX] = BARMAD(XYE);
    otherwise
      % pendiente
  end
 
end

% ------------------------------------------------------------------------
% matriz B de un elemento armadura plana
function [MTX] = BARMAD(XYE)
  % entrada: LONE:  longitud del elemento
  % salida:  MTX():  matriz B del elemento finito
  [LONE,TRA] = PBTRAN(XYE);
  MTX = (1/LONE)*[ -1 1 ];
end

