// Gmsh project created on Fri May 27 10:39:32 2022
//+
lc = DefineNumber[ 100, Name "Parameters/lc" ];
//+
Point(1) = {0, 0, 0, lc};
//+
Point(2) = {0, 0, 5, lc};
//+
Point(3) = {0, 0, 8.5, lc};
//+
Point(4) = {0, 0, 12, lc};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Translate {0, 12, 1} {
  Duplicata { Point{2}; Point{3}; Point{4}; Point{1}; Curve{2}; Curve{3}; Curve{1}; }
}
