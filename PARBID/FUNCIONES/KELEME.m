% Matriz de rigidez de un elemento finito
function [MTX] = KELEME(TIPR,XYE,CAE)
  % Entrada:
  % TIPR:   código del tipo de problema
  % XYE():  coordenadas de los nudos del elemento
  % CAE():  propiedades de la categoría del elemento
  %       
  % Salida:
  % MTX():  matriz de rigidez del elemento

  TIPE = CAE(5); % código del tipo de elemento

  switch TIPE
    case 101 % armaduras planas
      [MTX] = KARMA(TIPR,XYE,CAE);
    otherwise
      % pendiente
  end
 
end

% ------------------------------------------------------------------------
% Matriz de rigidez del elemento armadura plana
function [MTX] = KARMA(TIPR,XYE,CAE)
  % Entrada:
  % TIPR:   tipo de problema
  % XYE():  coordenadas de los nudos del elemento 
  % CAE():  propiedades de la categoría del elemento
  %       
  % Salida:
  % MTX():  matriz de rigidez del elemento
  
  TIPE = 101;                 % código del tipo de elemento
  EYOU = CAE(1);              % módulo de elasticidad del elemento
  AREA = CAE(4);              % área de la sección transversal del elemento
  
  [LONE,TRA] = PBTRAN(XYE);   % longitud y matriz de transformación del elem
  
  % matriz de rigidez en sistema local de coordenadas
  MTL = (EYOU*AREA/LONE)*[ 1  -1 ;
                          -1   1 ];
  % matriz de rigidez en sistema global de coordenadas
  MTX = TRA' * MTL * TRA;
  
end
