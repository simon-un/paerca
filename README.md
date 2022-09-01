# PAERCA

Programa de análisis de estructuras reticulares a código abierto

Este programa se escribió para utilizar principalmente como una herramienta didáctica en los cursos básicos de análisis estructural. Está escrito cuidando la compatibilidad entre Octave y Matlab, para facilidad de los usuarios. También debería poderse ejecutar sin inconvenientes independientemente del sistema operatico (Windows, Linux, MacOS).

## Utilización en Octave o Matlab

```
% Uso: 
%      PAERCA ADAT TLEC 
%      PAERCA("ADAT", "TLEC")
%
% Uso desde consola (terminal):
%      octave --eval 'PAERCA ADAT TLEC'
%      octave --eval 'PAERCA("ADAT", "TLEC")'
%
% ADAT: nombre del archivo de entrada de datos sin extensión
% TLEC: identificador de la opción de lectura de datos. Este es un parámetro
%       que por defecto es igual a 0.
```

## Herramientas necesarias

[GNU-Octave](https://octave.org/) o [MatLab](https://www.mathworks.com/products/matlab.html) para la ejecución del programa.

## Herramientas de apoyo

[gmsh](http://gmsh.info/) para la generación de mallas y visualización de resultados.

## Autores

Dorian L. Linero S., Martín Estrada M. & Maritzabel Molina H.

Universidad Nacional de Colombia

Facultad de Ingeniería

## Licencia

MIT
