% leer archivo de datos .msh en GMSH
%---------------------------------------------------------------------
function [NNUD,NELE,NNUE,NGAU,NDIM,NCAT,TIPR,ENNU,IMPR,...
                XYZ,ELE,CAT,UCO,FUN,FDI,SUP] = LEGMSH(ADAD)
% notas importantes acerca de la generación de la malla en GMSH
% 1. Las condiciones de borde dadas por los desplazamientos conocidos
%    se definen como entidades físicas asociadas a puntos o líneas 
%    cuyo nombre utiliza el siguiente formato:
%    DISP UX=<valor ux> UY=<valor uy>
%    donde <valor ux> es el valor de la componente de desplazamiento en x,
%    donde <valor uy> es el valor de la componente de desplazamiento en y.
%    Si solo se conoce la componente de desplazamiento en x, el formato es:
%    DISP UX=<valor ux>
%    Si solo se conoce la componente de desplazamiento en y, el formato es:
%    DISP UY=<valor uy>
%
% 2. Las condiciones de borde dadas por fuerzas puntuales conocidas
%    se definen como entidades físicas asociadas a puntos o líneas
%    cuyo nombre utiliza el siguiente formato:
%    LOAD FX=<valor fx> FY=<valor fy>
%    donde <valor fx> es el valor de la componente de fuerza puntual en x,
%    donde <valor fy> es el valor de la componente de fuerza puntual en y.
%
% 3. Las condiciones de borde dadas por presiones conocidas (fuerza/área)
%    se definen como entidades físicas asociadas a líneas 
%    cuyo nombre utiliza los siguientes formatos.
%    3.1. En sistema coord. global:
%    PRES WX=<valor wx> WY=<valor wy>
%    donde <valor wx> es el valor de la componente de presión uniforme en x,
%    donde <valor wy> es el valor de la componente de presión uniforme en y.
%    3.2. En sistema coord. local:
%    PRES WN=<valor wn> WT=<valor wt>
%    donde <valor wn> es el valor de la presión uniforme normal a la línea
%    en dirección y-local,
%    donde <valor wt> es el valor de la presión uniforme tangente a la línea
%    en dirección x-local.
%    El eje x-local está definido en la dirección de la línea desde el punto 
%    inicial al final. El eje y-local sigue la regla de la mano derecha,
%    considerando a z-local saliendo de la pantalla.
%    3.3. Con presión hidráulica:
%    PRES GAWA=<gawa> HEWA=<hewa>
%    donde <gawa> es el peso específico del agua,
%    donde <hewa> es el nivel del agua con respecto al origen coord global.
%    El eje x-local está definido en la dirección de la línea desde el punto 
%    inicial al final. El eje y-local sigue la regla de la mano derecha,
%    considerando a z-local saliendo de la pantalla. El sentido de la presión
%    hidráulica está definido por el sentido del eje y-local de la línea.
%    Si la presión hidráulica tiene sentido contrario a y-local se asigna un 
%    signo negativo (-) al parámetro <gawa>.
%
% 4. Si varias líneas o puntos definen la misma condición de borde se produce
%    un error en el programa.
%
% 5. Las fuerzas distribuidas sobre líneas se sobrescriben cuando se definen
%    más de una vez. Las fuerzas puntuales sobre puntos se sobrescriben cuando 
%    se definen más de una vez. 

% 6. Las categorías (material y constantes reales) se definen como entidades 
%    físicas asociadas a superficies cuyo nombre utiliza el siguiente formato:
%    CATE EYOU=<eyou> POIS=<pois> GAMM=<gamm> TESP=<tesp> TIPR=<tipr>
%    donde <eyou> es el módulo de Young, <pois> es la relación de Poisson,
%    <gamm> es el peso específico (si se omite el parámetro GAMM=0),
%    <tesp> es el espesor, <tipr> es el tipo de problema (si se omite el 
%    parámetro <tipr>=20), <tipr>=20 si es condición plana de esfuerzos y 
%    <tipr>=21 si es condición plana de deformaciones.
%    
% 7. El archivo se la malla se debe guardar desde el menú File>Export>Save as... 
%    desplegar y escoger tipo de archivo: Mesh - Gmsh MSH (*.msh), despues en 
%    la ventana MSH Option, escoger en format: Version 2 ASCII. Finalmente
%    escribir el nombre del archivo con extensión .msh.
%
% 8. GMSH genera elementos finitos tipo punto (código 15) y 
%    elementos tipo barra (código 1) sobre las condiciones de borde tipo
%    desplazamientos, cargas puntuales y cargas distribuidas. Estos elementos
%    son eliminados en esta subrutina. Por lo tanto, la numeración de
%    los elementos de superficie (triangulares y cuadrilaterales) se modificará
%    de forma secuencial empezando en 1.
%
% 9. Esta subrutina modifica la numeración de las entidades físicas asociadas 
%    a las propiedades de material y constantes reales sobre los elementos
%    finitos de superficie (triangulares y cuadrilaterales) de forma secuencial
%    empezando en 1.
%---------------------------------------------------------------------
%               
% entrada: ADAD: nombre del archivo de datos sin extensión
%
% salida   NNUD: número de nudos
%          NELE: número de elementos
%          NNUE: número máximo de nudos por elemento
%          NGAU: número máximo de puntos de Gauss en un elemento
%          NDIM: número de dimensiones del problema
%          NCAT: número de categorias de los elementos
%          TIPR: código de tipo de problema: 11: barras 3D
%          ENNU: tipo de evaluación de esfuerzos/deformaciones en el elemento
%          IMPR: tipo de impresión de los resultados
%
%          XYZ: tabla de coordenadas de los nudos
%               [ XNUD YNUD ZNUD]
%          ELE: tabla de categoría y conectividades de los elementos
%               [ ICAT NUDI NUDJ NAUX ]
%          CAT: tabla de categorias de los elementos
%               [ EYOU POIS AREA INEY INEZ JTOR ]
%          UCO: tabla de desplazamientos conocidos
%               [ INUD DCUX DCUY VAUX VAUY ]: formato A (GiD) o
%               [ INUD IDES VALD ]: formato B (GMSH)
%          FUN: tabla de fuerzas aplicadas en los nudos de la malla
%               [ INUD FUNX FUNY FUNZ ]
%          FDI: tabla de fuerzas uniformes distribuidas que se aplican 
%               en las caras de los elementos.
%               [ IELE NUDI NUDJ PREX PREY GLOC ]
%          SUP: tabla auxilar de identificador de la línea asociada
%               al elemento finito (barra)  
  
  % valores por defecto de los parámetros generales para GMSH
  NDIM = 3;    % dimensiones del problema
  ENNU = 1;    % tipo de eval de esf/defor en el elemento =1: eval en los nudos
  IMPR = 5;    % tipo de impresión de los resultados =5: en GMSH.
  TIPR = 11;   % tipo de problema: 11: barras tridimensionales
  NNUE = 2;    % no se utiliza
  NGAU = 1;    % no se utiliza
  ERRF = 0;    % control de error en el contenido del archivo .msh
  
  % lectura del archivo .msh
  GMSH = strcat(ADAD,'.msh'); % nombre archivo GMSH de datos
  FLID = fopen(GMSH); % abrir archivo .msh
  
  if FLID==-1
    fprintf('\n');
    error('PEFICA. El archivo %s.msh no existe',ADAD);
  end
  
  % leer línea de datos en el archivo
  TLINE = fgetl(FLID);
  while ischar(TLINE)
    % bloque de formato
    if (strcmp(TLINE,'$MeshFormat')==1)
      ERRF = 1; % si existe esta línea en el archivo .msh
      TLINE = fgetl(FLID);
      VERSI=str2num(TLINE);
      if (VERSI(1,1)>2.2)
        fprintf('\n');
        error('Version mayor a 2.2 del archivo .msh de GMHS');
      end
    end % endif
    
    % bloque de entidades físicas
    if (strcmp(TLINE,'$PhysicalNames')==1)
      TLINE = fgetl(FLID); % leer siguiente línea
      NFIS=str2num(TLINE);
      NFIS=int16(NFIS);   % número de entidades físicas
      % inicialización
      ICOBO=0; ICATE=0;
      FCOBO=zeros(1,8); FCATE=zeros(1,11);
      for IFIS=1:NFIS
        TLINE = fgetl(FLID); % leer siguiente línea
        TFIS=strsplit(TLINE); % divide línea en palabras
        NCOM=size(TFIS,2); % retorna número de palabras
        NCOM=NCOM-3; % número de componentes en la línea
        TEMP=char(TFIS{3}); % palabra clave etiqueta ent física
        
        % entidad física tipo desplazamiento
        if (strcmp(TEMP(1:5),'"DISP')==1)
          ICOBO=ICOBO+1; % contador de entidades físicas de condic de borde
          FCOBO(ICOBO,1)=str2num(TFIS{2}); % id entidad física
          FCOBO(ICOBO,2)=10;  % tipo de condición de borde
                              % 10=tipo desplazamiento
          for ICOM=1:NCOM
            TEMR=strsplit(TFIS{3+ICOM},{'=','"'});
            % desplazamiento conocido en x
            if (strcmp(TEMR{1},'UX')==1)
              FCOBO(ICOBO,3)=1; % indicador desplazamiento en x
              FCOBO(ICOBO,4)=str2num(TEMR{2}); % valor despl en x
            end % endif
            % desplazamiento conocido en y
            if (strcmp(TEMR{1},'UY')==1)
              FCOBO(ICOBO,5)=2; % indicador desplazamiento en y
              FCOBO(ICOBO,6)=str2num(TEMR{2}); % valor despl en y
            end % endif
            % desplazamiento conocido en z
            if (strcmp(TEMR{1},'UZ')==1)
              FCOBO(ICOBO,7)=3; % indicador desplazamiento en z
              FCOBO(ICOBO,8)=str2num(TEMR{2}); % valor despl en z
            end % endif
          end %endfor
          
        end %endif
        
        % entidad física tipo carga puntual
        if (strcmp(TEMP(1:5),'"LOAD')==1)
          ICOBO=ICOBO+1; % contador de entidades físicas de condic de borde
          FCOBO(ICOBO,1)=str2num(TFIS{2}); % id entidad física
          FCOBO(ICOBO,2)=20;  % tipo de condición de borde
                              % 20=tipo carga puntual
          for ICOM=1:NCOM
            TEMR=strsplit(TFIS{3+ICOM},{'=','"'});
            % carga conocida en x
            if (strcmp(TEMR{1},'FX')==1)
              FCOBO(ICOBO,3)=1; % indicador carga en x
              FCOBO(ICOBO,4)=str2num(TEMR{2}); % valor carga en x
            end % endif
            % carga conocida en y
            if (strcmp(TEMR{1},'FY')==1)
              FCOBO(ICOBO,5)=2; % indicador carga en y
              FCOBO(ICOBO,6)=str2num(TEMR{2}); % valor carga en y
            end % endif
            % carga conocida en z
            if (strcmp(TEMR{1},'FZ')==1)
              FCOBO(ICOBO,7)=3; % indicador carga en z
              FCOBO(ICOBO,8)=str2num(TEMR{2}); % valor carga en z
            end % endif
          end %endfor
          
        end %endif

        % entidad física tipo carga distribuida o presión
        if (strcmp(TEMP(1:5),'"PRES')==1)
          ICOBO=ICOBO+1; % contador de entidades físicas de condic de borde
          FCOBO(ICOBO,1)=str2num(TFIS{2}); % id entidad física
          FCOBO(ICOBO,2)=30;  % tipo de condición de borde
                              % 30=tipo carga distribuida
          SUMG=0;SUML=0;SUMW=0;
          for ICOM=1:NCOM
            TEMR=strsplit(TFIS{3+ICOM},{'=','"'});
            % carga conocida en x
            if (strcmp(TEMR{1},'WX')==1)
              FCOBO(ICOBO,3)=str2num(TEMR{2}); % valor
              FCOBO(ICOBO,5)=0; % sist coord global
              SUMG=1;
            end % endif
            % carga conocida en y
            if (strcmp(TEMR{1},'WY')==1)
              FCOBO(ICOBO,4)=str2num(TEMR{2}); % valor
              FCOBO(ICOBO,5)=0; % sist coord global
              SUMG=1;
            end % endif
            % carga conocida tangencial al lado
            if (strcmp(TEMR{1},'WT')==1)
              FCOBO(ICOBO,3)=str2num(TEMR{2}); % valor
              FCOBO(ICOBO,5)=1; % sist coord local
              SUML=1;
            end % endif
            % carga conocida normal al lado
            if (strcmp(TEMR{1},'WN')==1)
              FCOBO(ICOBO,4)=str2num(TEMR{2}); % valor
              FCOBO(ICOBO,5)=1; % sist coord local
              SUML=1;
            end % endif
            % peso especifíco del agua
            if (strcmp(TEMR{1},'GAWA')==1)
              FCOBO(ICOBO,3)=str2num(TEMR{2}); % valor
              FCOBO(ICOBO,5)=2; % presión hidráulica
              SUMW=1;
            end % endif
            % nivel del agua
            if (strcmp(TEMR{1},'HEWA')==1)
              FCOBO(ICOBO,4)=str2num(TEMR{2}); % valor
              FCOBO(ICOBO,5)=2; % presión hidráulica
              SUMW=1;
            end % endif
            
          end %endfor
          % control de errores
          SUMT=SUMG+SUML+SUMW;
          if (SUMT>1)
            fprintf('\n');
            error('Cargas distribuidas en sistemas coordenados diferentes')
          end %endif
        end %endif
        
       % entidad física tipo categoría (material y constantes reales)
        if (strcmp(TEMP(1:5),'"CATE')==1)
          ICATE=ICATE+1; % contador de entidades físicas de tipos de categorias
          FCATE(ICATE,1)=str2num(TFIS{2}); % id entidad física
          for ICOM=1:NCOM
            TEMR=strsplit(TFIS{3+ICOM},{'=','"'});
            % módulo de Young
            if (strcmp(TEMR{1},'EYOU')==1)
              FCATE(ICATE,2)=str2num(TEMR{2}); % valor
            end % endif
            % relación de Poisson
            if (strcmp(TEMR{1},'POIS')==1)
              FCATE(ICATE,3)=str2num(TEMR{2}); % valor
            end % endif
            % peso específico
            if (strcmp(TEMR{1},'GAMM')==1)
              FCATE(ICATE,4)=str2num(TEMR{2}); % valor
            end % endif
            % area de la sección transversal
            if (strcmp(TEMR{1},'AREA')==1)
              FCATE(ICATE,5)=str2num(TEMR{2}); % valor
            end % endif
            % inercia en y-local
            if (strcmp(TEMR{1},'INEY')==1)
              FCATE(ICATE,6)=str2num(TEMR{2}); % valor
            end % endif
            % inercia en z-local
            if (strcmp(TEMR{1},'INEZ')==1)
              FCATE(ICATE,7)=str2num(TEMR{2}); % valor
            end % endif
            % constante torsional
            if (strcmp(TEMR{1},'JTOR')==1)
              FCATE(ICATE,8)=str2num(TEMR{2}); % valor
            end % endif
            % tipo de problema: 11=barras 3D
            if (strcmp(TEMR{1},'TIPR')==1)
              TIPR=str2num(TEMR{2}); % valor
              % se guarda en un escalar por que es
              % un parámetro general del problema
            end % endif
          end %endfor
          % control de errores
          if (FCATE(ICATE,2)==0)||(FCATE(ICATE,5)==0)
            fprintf('\n');
            error('EYOU o AREA de una categoria igual a cero');
          end %endif
        end %endif 
        
        % entidad física incorrecta
        if((strcmp(TEMP(1:5),'"DISP')==0) && ...
           (strcmp(TEMP(1:5),'"LOAD')==0) && ...
           (strcmp(TEMP(1:5),'"PRES')==0) && ...
           (strcmp(TEMP(1:5),'"CATE')==0))
           fprintf(TEMP(1:5));
           error ('Nombre incorrecto de entidad fisica');
        end %endif
        
      end % endfor IFIS
      
      NCOBO=ICOBO; % número de entidades físicas de condic de borde
      NCAT=ICATE; % número de entidades físicas de tipos de categoría
      
    end % endif fin de bloque de entidades físicas
    
    % bloque de nudos
    if (strcmp(TLINE,'$Nodes')==1)
      ERRF = 1; % si existe esta línea en el archivo .msh
      TLINE = fgetl(FLID); % leer siguiente línea
      NNUD=int16(str2num(TLINE));% número de nudos
      XYZ=zeros(NNUD,NDIM,'single');
      for INUD=1:NNUD
        TLINE = fgetl(FLID); % leer siguiente línea
        TEMP=str2num(TLINE); % dividir por variables
        XYZ(INUD,1)=TEMP(2); % coordenada x
        XYZ(INUD,2)=TEMP(3); % coordenada y
        XYZ(INUD,3)=TEMP(4); % coordenada z
      end %endfor INUD
    end % endif fin de bloque de nudos
    
    % bloque de elementos y 
    % condiciones de borde en puntos y líneas
    if (strcmp(TLINE,'$Elements')==1)
      ERRF = 1; % si existe esta línea en el archivo .msh
      % inicializar
      ICOPL=0; IELTR=0;  CORL=0; ISUP=0;
      COPL=zeros(1,3); % condiciones de borde en puntos
      ELTR=zeros(1,3); % elementos en líneas tipo barra de armadura
  
      TLINE = fgetl(FLID); % leer siguiente línea
      NELT=int16(str2num(TLINE));% núm elem + cond borde
      
      for IELT=1:NELT
        
        TLINE = fgetl(FLID); % leer siguiente línea
        TEMP=str2num(TLINE); % dividir por variables
        
        % entidades físicas tipo condición de borde en puntos
        if TEMP(2)==15
          ICOPL=ICOPL+1; % contador de cond de borde en puntos
          COPL(ICOPL,:)=[TEMP(4),TEMP(6), 0];
        end %endif

        % entidad física en línea con
        % elementos barras de armadura
        if TEMP(2)==1
          IELTR=IELTR+1; % contador de elementos barra de armadura
          % escribir en la tabla de categorías
          % tipo de elemento: TIPE, nudos por elem: NUEL, p.Gauss: PGAU
          % TIPE=102: armadura 3D,
          for ICATE=1:NCAT
            if FCATE(ICATE,1)==TEMP(4)
              FCATE(ICATE,9:11)=[102,2,1];
              RCATE=ICATE; % indice de la categoria asociado a la ent física
            end %endif
          end % endfor ICATE
          % escribir en la tabla de conectividades
          % [id categoría ; id nudos i,j]
          ELTR(IELTR,:)=[RCATE,TEMP(6:7)];
        end %endif
        
        % tabla auxilar de identificador de la línea asociada
        % al elemento finito (barra)
        if TEMP(2)==1
          ISUP=ISUP+1;
          SUP(ISUP)=TEMP(5);
        end %endif

      end %endfor IELT
      
      NCOPL=ICOPL; % número de condiciones de borde
      NELE=IELTR; % número de elementos finitos
      
    end % endif bloque de elem y nudos y lados con cond borde  

    TLINE = fgetl(FLID);% leer siguiente línea
  end % endwhile fin de lectura
  fclose(FLID); % cierre de archivo
  % error en el contenido del archivo .msh
  if ERRF == 0
    error('El archivo .msh no contiene las palabras claves de GMSH.');
  end %endif 
  
  
  % preparar tabla de categorias de los elementos
  % [ EYOU POIS GAMM AREA INEY INEZ JTOR TIPE NUEL PGAU ]
  CAT=zeros(NCAT,10);
  CAT(:,1:10)=FCATE(:,2:11);
  
  % preparar tabla de conectividades de los elementos ELE
  ELE=ELTR;
  
  % preparar tablas de condiciones de borde para el proceso UCO, FUN, FDI
  % inicializar
  IUCO=0; IUCP=0; IFUN=0; IFDI=0;
  FUN=zeros(1,3); FDI=zeros(1,6); UCO=zeros(1,3);
  
  for ICOPL=1:NCOPL
    for ICOBO=1:NCOBO
      if COPL(ICOPL,1)==FCOBO(ICOBO,1);
        
        if COPL(ICOPL,3)==0
          NTEM=1; % condición de borde en punto de un nudo
        else
          NTEM=2; % condición de borde en línea formada por dos nudos
        end %endif
        
        % preparar tabla de condiciones de borde tipo desplazamiento
        % UCO = [ INUD IDES VALD ]: formato B
        if FCOBO(ICOBO,2)==10       
          % condición de borde en punto o en línea formada por dos nudos
          for ITEM=1:NTEM
            % primer desplazamiento conocido indicado una misma entidad física
            if FCOBO(ICOBO,3)>0
              IUCO=IUCO+1; % cont cond bord tipo de desplaz
              UCO(IUCO,1)=COPL(ICOPL,ITEM+1); % id nudo        
              UCO(IUCO,2:3)=FCOBO(ICOBO,3:4); % id desplazam, valor despl
            end % endif
            % segundo desplazamiento conocido indicado una misma entidad física
            if FCOBO(ICOBO,5)>0
              IUCO=IUCO+1; % cont cond bord tipo de desplaz
              UCO(IUCO,1)=COPL(ICOPL,ITEM+1); % id nudo        
              UCO(IUCO,2:3)=FCOBO(ICOBO,5:6); % id desplazam, valor despl
            end % endif
            % tercer desplazamiento conocido indicado una misma entidad física
            if FCOBO(ICOBO,7)>0
              IUCO=IUCO+1; % cont cond bord tipo de desplaz
              UCO(IUCO,1)=COPL(ICOPL,ITEM+1); % id nudo        
              UCO(IUCO,2:3)=FCOBO(ICOBO,7:8); % id desplazam, valor despl
            end % endif
          end % endfor
        end %endif
        
        % condiciones de borde tipo fuerza puntual
        % FUN = [ INUD IFUE VALF ]: formato B
        if FCOBO(ICOBO,2)==20
          for ITEM=1:NTEM
            % fuerza puntual aplicada en dirección x
            if FCOBO(ICOBO,4)~=0
              IFUN=IFUN+1; % contador de cond bord tipo fuerza puntual por nudos
              FUN(IFUN,1)=COPL(ICOPL,ITEM+1); % id nudo
              FUN(IFUN,2:3)=FCOBO(ICOBO,3:4); % id fuerza, valor fuerza
            end % endif
            % fuerza puntual aplicada en dirección y
            if FCOBO(ICOBO,6)~=0
              IFUN=IFUN+1; % contador de cond bord tipo fuerza puntual por nudos
              FUN(IFUN,1)=COPL(ICOPL,ITEM+1); % id nudo
              FUN(IFUN,2:3)=FCOBO(ICOBO,5:6); % id fuerza, valor fuerza
            end % endif
            % fuerza puntual aplicada en dirección z
            if FCOBO(ICOBO,8)~=0
              IFUN=IFUN+1; % contador de cond bord tipo fuerza puntual por nudos
              FUN(IFUN,1)=COPL(ICOPL,ITEM+1); % id nudo
              FUN(IFUN,2:3)=FCOBO(ICOBO,7:8); % id fuerza, valor fuerza
            end % endif
          end % endfor        
        end %endif
        
        % condiciones de borde tipo presión en un lado
        if FCOBO(ICOBO,2)==30
          IFDI=IFDI+1; % contador de cond bord tipo presión en un lado
          % FDI = [ RELE NUDI NUDJ PREX PREY 0 ]: presión unif en sist global
          % FDI = [ RELE NUDI NUDJ PRET PREN 1 ]: presión unif en sist local
          % FDI = [ RELE NUDI NUDJ GAWA HEGA 2 ]: presión hidráulica
          % id elemento
          RELE=ELELAD(ELE,COPL(ICOPL,2:3));
          FDI(IFDI,1)=RELE; % id elemento
          % [id_nudo_i, id_nudo_j,...]
          FDI(IFDI,2:3)=COPL(ICOPL,2:3);
          % [..., val_pres_x, val_pres_y, 0]: presión unif sist global
          % [..., val_pres_t, val_pres_n, 1]: presión unif sist local
          FDI(IFDI,4:6)=FCOBO(ICOBO,3:5);
          
          if FCOBO(ICOBO,5)==2
            % [..., val_pres_n_i, val_pres_n_j, 2]: presión hidráulica
            FDI(IFDI,6)=FCOBO(ICOBO,5);
            GAWA=FCOBO(ICOBO,3);
            HEWA=FCOBO(ICOBO,4);
            for ITEM=1:2
              YNU(ITEM)=XYZ(COPL(ICOPL,ITEM+1),2);
              if YNU(ITEM)<=HEWA
                FDI(IFDI,ITEM+3)=GAWA*(HEWA-YNU(ITEM));
              else
                FDI(IFDI,ITEM+3)=0;
              end % endif
            end % endfor ITEM
          end % endif
        end %endif
      
      end %endif
    end %endfor ICOBO
  end %endfor ICOPL
  
  % eliminar condiciones de borde de desplazamientos imp exactamente iguales
  TEM=unique(UCO,'rows');
  UCO=TEM;
  
  % ajustar tabla de fuerzas nodales vacia
  if FUN==0; FUN=[0 NDIM 0]; end
  
end % fin de la función

% ------------------------------------------
% identifica el número del elemento de 3 o de
% 4 nudos a partir de los nudos de un lado
function RELE=ELELAD(ELE,LAD)
  % entrada:  ELE: tabla de conectividades de los elementos
  %           LAD: identificador de los nudos del lado
  %           INUD=LAD(1,1); JNUD=LAD(1,2);
  % salida:   RELE: identificador del primer elemento con el lado
  
  INUD=LAD(1,1); JNUD=LAD(1,2);
  RELE=0;
  [NELE,NNUE]=size(ELE);
  NNUE=NNUE-1;
  for IELE=1:NELE
    for INUE=1:NNUE
      if ELE(IELE,INUE+1)==INUD
        for JNUE=1:NNUE
          if ELE(IELE,JNUE+1)==JNUD
            RELE=IELE; % asignar id elemento encontrado
            JNUE=NNUE; INUE=NNUE; IELE=NELE; % salida rápida
          end %endif
        end %endfor JNUE
      end % endif
    end %endfor INUE
  end %endfor IELE
end