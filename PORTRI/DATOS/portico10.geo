// Gmsh project created on Fri Feb 19 10:51:33 2021
SetFactory("Built-in");
//+
lc = DefineNumber[ 100, Name "Parameters/lc" ];
//+
Point(1) = {0, 0, 3, lc};
//+
Point(2) = {5, 0, 3, lc};
//+
Point(3) = {0, 0, 0, lc};
//+
Point(4) = {0, 6, 3, lc};
//+
Line(1) = {1, 2};
//+
Line(2) = {4, 1};
//+
Line(3) = {3, 1};
//+
Physical Point("DISP UX=0 UY=0 UZ=0 RX=0 RY=0 RZ=0") = {2, 3, 4};
//+
Physical Point("LOAD FY=90") = {1};
//+
Physical Curve("CATE EYOU=20E6 POIS=0.25 RECZ=0.30 RECY=0.40 WYLO=-24") = {1};
//+
Physical Curve("CATE EYOU=20E6 POIS=0.25 RECZ=0.40 RECY=0.50 WYLO=-35") = {2};
//+
Physical Curve("CATE EYOU=20E6 POIS=0.25 RECZ=0.30 RECY=0.40") = {3};
