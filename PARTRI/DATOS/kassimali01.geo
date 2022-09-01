// Gmsh project created on Tue Nov 23 04:32:25 2021
SetFactory("Built-in");
//+
lc = DefineNumber[ 10000, Name "Parameters/lc" ];
//+
Point(1) = {-72, 0, 96, lc};
//+
Point(2) = {144, 0, 96, lc};
//+
Point(3) = {72, 0, -96, lc};
//+
Point(4) = {-144, 0, -96, lc};
//+
Point(5) = {0, 288, 0, lc};
//+
Line(1) = {1, 5};
//+
Line(2) = {2, 5};
//+
Line(3) = {3, 5};
//+
Line(4) = {4, 5};
//+
Physical Point("DISP UX=0 UY=0 UZ=0") = {4, 1, 2, 3};
//+
Physical Point("LOAD FY=-100 FZ=-50") = {5};
//+
Physical Curve("CATE EYOU=10000 AREA=8.4") = {1, 2, 3, 4};
