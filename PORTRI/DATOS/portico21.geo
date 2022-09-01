// Gmsh project created on Thu Apr 29 08:39:13 2021
//+
lc = DefineNumber[ 100, Name "Parameters/lc" ];
//+
Point(1) = {0, 0, 0, lc};
//+
Point(2) = {0, 0, 3, lc};
//+
Line(1) = {1, 2};
//+
Translate {8, 0, 0} {
  Duplicata { Curve{1}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Curve{2}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{3}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{4}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Curve{5}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{6}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Curve{7}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{8}; }
}
//+
Line(10) = {2, 4};
//+
Line(11) = {4, 6};
//+
Line(12) = {6, 8};
//+
Line(13) = {8, 10};
//+
Line(14) = {10, 12};
//+
Line(15) = {12, 14};
//+
Line(16) = {14, 16};
//+
Line(17) = {16, 18};
//+
Translate {0, 9, 0} {
  Duplicata { Point{18}; Point{10}; Point{2}; Point{3}; Point{4}; Point{5}; Point{6}; Point{7}; Point{8}; Point{9}; Point{1}; Point{11}; Point{12}; Point{13}; Point{14}; Point{15}; Point{16}; Point{17}; Curve{9}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Curve{7}; Curve{8}; Curve{10}; Curve{11}; Curve{12}; Curve{13}; Curve{14}; Curve{15}; Curve{16}; Curve{17}; }
}
//+
Translate {0, 7.5, 0} {
  Duplicata { Point{36}; Point{28}; Point{20}; Point{21}; Point{22}; Point{23}; Point{24}; Point{25}; Point{26}; Point{27}; Point{19}; Point{29}; Point{30}; Point{31}; Point{32}; Point{33}; Point{34}; Point{35}; Curve{26}; Curve{18}; Curve{19}; Curve{20}; Curve{21}; Curve{22}; Curve{23}; Curve{24}; Curve{25}; Curve{27}; Curve{28}; Curve{29}; Curve{30}; Curve{31}; Curve{32}; Curve{33}; Curve{34}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Point{54}; Point{46}; Point{38}; Point{39}; Point{40}; Point{41}; Point{42}; Point{43}; Point{44}; Point{45}; Point{37}; Point{47}; Point{48}; Point{49}; Point{50}; Point{51}; Point{52}; Point{53}; Curve{43}; Curve{35}; Curve{36}; Curve{37}; Curve{38}; Curve{39}; Curve{40}; Curve{41}; Curve{42}; Curve{44}; Curve{45}; Curve{46}; Curve{47}; Curve{48}; Curve{49}; Curve{50}; Curve{51}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Curve{58}; Point{59}; Point{61}; Point{63}; Point{60}; Point{62}; Point{67}; Curve{61}; Curve{62}; Curve{63}; Curve{55}; Curve{56}; Curve{57}; }
}
//+
Translate {0, 7.5, 0} {
  Duplicata { Point{74}; Point{77}; Point{78}; Point{79}; Point{73}; Point{80}; Point{81}; Point{82}; Curve{70}; Curve{71}; Curve{72}; Curve{69}; Curve{73}; Curve{74}; Curve{75}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Point{83}; Point{84}; Point{85}; Point{86}; Point{87}; Point{88}; Point{89}; Point{90}; Curve{76}; Curve{77}; Curve{78}; Curve{79}; Curve{80}; Curve{81}; Curve{82}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Point{91}; Point{94}; Point{93}; Point{92}; Point{95}; Point{97}; Point{96}; Point{98}; Curve{85}; Curve{84}; Curve{83}; Curve{86}; Curve{89}; Curve{88}; Curve{87}; }
}
//+
Translate {0, 7.5, 0} {
  Duplicata { Point{99}; Point{100}; Point{101}; Point{102}; Point{103}; Point{104}; Point{105}; Point{106}; Curve{90}; Curve{91}; Curve{92}; Curve{93}; Curve{94}; Curve{95}; Curve{96}; }
}
//+
Line(104) = {110, 102};
//+
Line(105) = {102, 92};
//+
Line(106) = {92, 84};
//+
Line(107) = {84, 77};
//+
Line(108) = {77, 59};
//+
Line(109) = {59, 40};
//+
Line(110) = {40, 21};
//+
Line(111) = {21, 2};
//+
Translate {8, 0, 0} {
  Duplicata { Curve{104}; Curve{105}; Curve{106}; Curve{107}; Curve{108}; Curve{109}; Curve{110}; Curve{111}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Curve{112}; Curve{113}; Curve{114}; Curve{115}; Curve{116}; Curve{117}; Curve{118}; Curve{119}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{120}; Curve{121}; Curve{122}; Curve{123}; Curve{124}; Curve{125}; Curve{126}; Curve{127}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{133}; Curve{134}; Curve{135}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Curve{136}; Curve{137}; Curve{138}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{139}; Curve{140}; Curve{141}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Curve{142}; Curve{143}; Curve{144}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{145}; Curve{146}; Curve{147}; }
}
//+
Translate {0, 0, 3} {
  Duplicata { Point{107}; Point{108}; Point{109}; Point{110}; Point{102}; Point{101}; Point{100}; Point{99}; Point{91}; Point{94}; Point{93}; Point{92}; Point{83}; Point{84}; Point{85}; Point{86}; Point{74}; Point{77}; Point{78}; Point{79}; Point{56}; Point{66}; Point{58}; Point{55}; Point{59}; Point{61}; Point{63}; Point{71}; Point{69}; Point{52}; Point{42}; Point{44}; Point{46}; Point{47}; Point{50}; Point{40}; Point{54}; Point{39}; Point{19}; Point{20}; Point{21}; Point{23}; Point{25}; Point{27}; Point{31}; Point{33}; Point{35}; Point{2}; Point{4}; Point{6}; Point{8}; Point{10}; Point{12}; Point{14}; Point{16}; Point{18}; Curve{103}; Curve{102}; Curve{101}; Curve{100}; Curve{99}; Curve{98}; Curve{97}; Curve{95}; Curve{104}; Curve{128}; Curve{96}; Curve{112}; Curve{94}; Curve{93}; Curve{92}; Curve{91}; Curve{90}; Curve{120}; Curve{129}; Curve{105}; Curve{89}; Curve{88}; Curve{87}; Curve{86}; Curve{85}; Curve{84}; Curve{83}; Curve{121}; Curve{113}; Curve{82}; Curve{81}; Curve{80}; Curve{79}; Curve{78}; Curve{77}; Curve{76}; Curve{122}; Curve{114}; Curve{130}; Curve{106}; Curve{123}; Curve{115}; Curve{69}; Curve{70}; Curve{71}; Curve{131}; Curve{72}; Curve{73}; Curve{74}; Curve{75}; Curve{107}; Curve{53}; Curve{54}; Curve{55}; Curve{56}; Curve{57}; Curve{58}; Curve{52}; Curve{59}; Curve{60}; Curve{61}; Curve{62}; Curve{63}; Curve{64}; Curve{65}; Curve{66}; Curve{67}; Curve{68}; Curve{108}; Curve{132}; Curve{116}; Curve{124}; Curve{46}; Curve{40}; Curve{39}; Curve{133}; Curve{136}; Curve{38}; Curve{139}; Curve{37}; Curve{142}; Curve{36}; Curve{35}; Curve{109}; Curve{47}; Curve{48}; Curve{49}; Curve{50}; Curve{51}; Curve{148}; Curve{45}; Curve{145}; Curve{44}; Curve{117}; Curve{43}; Curve{42}; Curve{41}; Curve{125}; Curve{118}; Curve{34}; Curve{110}; Curve{126}; Curve{143}; Curve{146}; Curve{140}; Curve{137}; Curve{149}; Curve{134}; Curve{24}; Curve{33}; Curve{32}; Curve{31}; Curve{30}; Curve{29}; Curve{28}; Curve{27}; Curve{26}; Curve{25}; Curve{18}; Curve{23}; Curve{22}; Curve{21}; Curve{20}; Curve{19}; Curve{147}; Curve{150}; Curve{144}; Curve{141}; Curve{138}; Curve{135}; Curve{127}; Curve{6}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{119}; Curve{7}; Curve{8}; Curve{9}; Curve{10}; Curve{11}; Curve{12}; Curve{13}; Curve{14}; Curve{15}; Curve{16}; Curve{17}; Curve{111}; }
}
//+
Translate {0, 0, 3} {
  Duplicata { Point{116}; Point{115}; Point{118}; Point{117}; Point{119}; Point{120}; Point{121}; Point{122}; Point{123}; Point{124}; Point{125}; Point{126}; Point{130}; Point{129}; Point{128}; Point{127}; Point{131}; Point{132}; Point{133}; Point{134}; Point{135}; Point{143}; Point{142}; Point{141}; Point{140}; Point{139}; Point{138}; Point{137}; Point{136}; Point{145}; Point{152}; Point{151}; Point{150}; Point{149}; Point{148}; Point{147}; Point{146}; Point{144}; Point{161}; Point{160}; Point{159}; Point{158}; Point{157}; Point{156}; Point{155}; Point{154}; Point{153}; Point{170}; Point{169}; Point{168}; Point{167}; Point{166}; Point{165}; Point{164}; Point{163}; Point{162}; Curve{151}; Curve{152}; Curve{153}; Curve{154}; Curve{155}; Curve{156}; Curve{157}; Curve{158}; Curve{159}; Curve{160}; Curve{162}; Curve{163}; Curve{164}; Curve{165}; Curve{166}; Curve{161}; Curve{167}; Curve{168}; Curve{173}; Curve{174}; Curve{175}; Curve{176}; Curve{177}; Curve{178}; Curve{179}; Curve{172}; Curve{171}; Curve{170}; Curve{169}; Curve{180}; Curve{181}; Curve{182}; Curve{183}; Curve{184}; Curve{185}; Curve{186}; Curve{187}; Curve{188}; Curve{189}; Curve{190}; Curve{195}; Curve{198}; Curve{201}; Curve{200}; Curve{199}; Curve{197}; Curve{196}; Curve{191}; Curve{192}; Curve{193}; Curve{194}; Curve{211}; Curve{210}; Curve{209}; Curve{212}; Curve{202}; Curve{203}; Curve{204}; Curve{205}; Curve{206}; Curve{207}; Curve{208}; Curve{213}; Curve{222}; Curve{221}; Curve{220}; Curve{219}; Curve{218}; Curve{217}; Curve{216}; Curve{215}; Curve{214}; Curve{234}; Curve{235}; Curve{233}; Curve{232}; Curve{231}; Curve{230}; Curve{229}; Curve{228}; Curve{227}; Curve{226}; Curve{225}; Curve{224}; Curve{223}; Curve{248}; Curve{247}; Curve{246}; Curve{245}; Curve{244}; Curve{243}; Curve{242}; Curve{241}; Curve{240}; Curve{239}; Curve{238}; Curve{237}; Curve{236}; Curve{256}; Curve{255}; Curve{254}; Curve{274}; Curve{253}; Curve{265}; Curve{273}; Curve{272}; Curve{271}; Curve{270}; Curve{269}; Curve{268}; Curve{267}; Curve{266}; Curve{257}; Curve{264}; Curve{263}; Curve{262}; Curve{261}; Curve{260}; Curve{259}; Curve{258}; Curve{251}; Curve{249}; Curve{250}; Curve{252}; Curve{291}; Curve{290}; Curve{289}; Curve{288}; Curve{287}; Curve{286}; Curve{285}; Curve{300}; Curve{284}; Curve{292}; Curve{293}; Curve{294}; Curve{295}; Curve{296}; Curve{297}; Curve{298}; Curve{299}; Curve{275}; Curve{283}; Curve{276}; Curve{277}; Curve{278}; Curve{279}; Curve{280}; Curve{281}; Curve{282}; }
}
//+
Translate {0, 0, 3} {
  Duplicata { Point{172}; Point{171}; Point{174}; Point{173}; Point{175}; Point{176}; Point{177}; Point{178}; Point{179}; Point{180}; Point{181}; Point{182}; Point{186}; Point{185}; Point{184}; Point{183}; Point{187}; Point{188}; Point{189}; Point{190}; Point{191}; Point{199}; Point{198}; Point{197}; Point{196}; Point{195}; Point{194}; Point{193}; Point{192}; Point{201}; Point{208}; Point{207}; Point{206}; Point{205}; Point{204}; Point{203}; Point{202}; Point{200}; Point{217}; Point{216}; Point{215}; Point{214}; Point{213}; Point{212}; Point{211}; Point{210}; Point{209}; Point{226}; Point{225}; Point{224}; Point{223}; Point{222}; Point{221}; Point{220}; Point{219}; Point{218}; Curve{301}; Curve{302}; Curve{303}; Curve{304}; Curve{305}; Curve{306}; Curve{307}; Curve{308}; Curve{309}; Curve{310}; Curve{312}; Curve{313}; Curve{314}; Curve{315}; Curve{316}; Curve{311}; Curve{317}; Curve{318}; Curve{323}; Curve{324}; Curve{325}; Curve{326}; Curve{327}; Curve{328}; Curve{329}; Curve{322}; Curve{321}; Curve{320}; Curve{319}; Curve{330}; Curve{331}; Curve{332}; Curve{333}; Curve{334}; Curve{335}; Curve{336}; Curve{337}; Curve{338}; Curve{339}; Curve{340}; Curve{345}; Curve{348}; Curve{351}; Curve{350}; Curve{349}; Curve{347}; Curve{346}; Curve{341}; Curve{342}; Curve{343}; Curve{344}; Curve{361}; Curve{360}; Curve{359}; Curve{362}; Curve{352}; Curve{353}; Curve{354}; Curve{355}; Curve{356}; Curve{357}; Curve{358}; Curve{363}; Curve{372}; Curve{371}; Curve{370}; Curve{369}; Curve{368}; Curve{367}; Curve{366}; Curve{365}; Curve{364}; Curve{384}; Curve{385}; Curve{383}; Curve{382}; Curve{381}; Curve{380}; Curve{379}; Curve{378}; Curve{377}; Curve{376}; Curve{375}; Curve{374}; Curve{373}; Curve{398}; Curve{397}; Curve{396}; Curve{395}; Curve{394}; Curve{393}; Curve{392}; Curve{391}; Curve{390}; Curve{389}; Curve{388}; Curve{387}; Curve{386}; Curve{406}; Curve{405}; Curve{404}; Curve{424}; Curve{403}; Curve{415}; Curve{423}; Curve{422}; Curve{421}; Curve{420}; Curve{419}; Curve{418}; Curve{417}; Curve{416}; Curve{407}; Curve{414}; Curve{413}; Curve{412}; Curve{411}; Curve{410}; Curve{409}; Curve{408}; Curve{401}; Curve{399}; Curve{400}; Curve{402}; Curve{441}; Curve{440}; Curve{439}; Curve{438}; Curve{437}; Curve{436}; Curve{435}; Curve{450}; Curve{434}; Curve{442}; Curve{443}; Curve{444}; Curve{445}; Curve{446}; Curve{447}; Curve{448}; Curve{449}; Curve{425}; Curve{433}; Curve{426}; Curve{427}; Curve{428}; Curve{429}; Curve{430}; Curve{431}; Curve{432}; }
}
//+
Physical Point("DISP UX=0 UY=0 UZ=0 RX=0 RY=0 RZ=0") = {111, 112, 113, 114, 104, 105, 106, 103, 97, 96, 98, 95, 89, 88, 87, 90, 82, 81, 80, 73, 72, 70, 68, 67, 57, 60, 62, 65, 64, 51, 49, 53, 48, 45, 43, 41, 38, 37, 29, 36, 34, 32, 30, 28, 26, 24, 22, 1, 3, 5, 7, 9, 11, 13, 15, 17};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.7 RECY=0.7") = {26, 35, 25, 43, 24, 42, 20, 21, 22, 23, 38, 39, 40, 41, 273, 272, 271, 270, 259, 268, 267, 228, 225, 224, 247, 246, 245, 233, 405, 406, 407, 408, 419, 410, 411, 380, 383, 384, 387, 388, 389, 375, 550, 549, 563, 570, 559, 568, 567, 528, 525, 523, 547, 546, 545, 533};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.7 RECY=0.7") += {94, 95, 88, 89, 81, 82, 74, 75, 56, 57, 158, 163, 171, 172, 180, 181, 199, 200, 205, 206, 308, 312, 326, 327, 330, 331, 344, 345, 359, 360, 458, 461, 472, 473, 480, 481, 491, 501, 503, 504};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.6 RECY=0.9") = {2, 3, 4, 5, 6, 7, 8, 284, 285, 286, 287, 282, 289, 290, 433, 431, 430, 429, 450, 427, 426, 593, 599, 598, 597, 582, 595, 594};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.9 RECY=0.6") = {9, 291, 425, 592, 1, 283, 443, 585};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.6 RECY=0.9") += {59, 60, 52, 53, 209, 210, 208, 202, 354, 353, 362, 356, 508, 507, 505, 510};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.9 RECY=0.6") += {54, 203, 357, 511, 55, 204, 358, 512, 58, 207, 361, 502};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.6 RECY=0.9") += {101, 102, 153, 152, 303, 302, 453, 452};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.9 RECY=0.6") += {100, 154, 304, 454, 451, 301, 151, 103};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.9 RECY=0.6") += {19, 37, 274, 230, 402, 378, 574, 530, 73, 80, 87, 96, 198, 182, 173, 161, 342, 332, 319, 316, 499, 482, 479, 465};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.9 RECY=0.6") += {93, 86, 79, 69, 164, 174, 183, 193, 313, 320, 333, 350, 462, 478, 483, 494};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.9 RECY=0.6") += {18, 36, 269, 232, 409, 376, 569, 532};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-28.07") = {10, 292, 434, 11, 293, 435, 12, 294, 436};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-18.01") = {583, 581, 580};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-28.46") = {13, 295, 437, 14, 296, 438, 15, 297, 439, 16, 298, 440, 17, 299, 441};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-18.25") = {579, 578, 577, 576, 575};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-72.48") = {27, 266, 412, 28, 265, 404, 29, 264, 414};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-46.49") = {566, 551, 564};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-69.34") = {30, 263, 415, 31, 262, 416, 32, 261, 417, 33, 260, 418, 34, 250, 423};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-44.48") = {554, 562, 561, 560, 555};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-58.37") = {391, 243, 44, 393, 241, 45, 385, 223, 46};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-37.44") = {543, 541, 524};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-69.34") += {374, 235, 47, 398, 236, 48, 397, 237, 49, 396, 238, 50, 395, 239, 51};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-44.48") += {534, 536, 537, 538, 539};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-73.1") = {352, 211, 61, 355, 212, 62, 363, 213, 63};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-46.89") = {506, 509, 513};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-28.46") += {372, 214, 64, 371, 215, 65, 370, 216, 66, 369, 217, 67, 368, 218, 68};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-18.25") += {514, 515, 516, 517, 518};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-61.28") = {351, 194, 70, 341, 195, 71, 346, 197, 72};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-39.31") = {493, 498, 497};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-62.20") = {336, 186, 76, 335, 185, 77, 334, 184, 78};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-39.90") = {486, 485, 484};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-70.49") = {323, 177, 83, 322, 176, 84, 321, 175, 85};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-45.21") = {469, 476, 477};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-70.03") = {314, 165, 92, 315, 166, 91, 317, 167, 90};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-44.92") = {463, 464, 467};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-21.78") = {305, 155, 99, 306, 156, 98, 307, 157, 97};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-13.97") = {455, 456, 457};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") = {309, 159, 104, 328, 170, 105, 340, 190, 106, 343, 201, 107, 367, 219, 108, 373, 234, 109, 421, 251, 110, 432, 300, 111};
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") = {459, 474, 490, 500, 519, 535, 557, 600};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {112, 162, 311, 113, 179, 325, 114, 188, 338, 115, 192, 349, 116, 221, 365, 117, 244, 390, 118, 249, 422, 119, 288, 428};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {466, 471, 488, 495, 521, 544, 556, 596};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {318, 168, 120, 324, 178, 121, 337, 187, 122, 348, 191, 123, 364, 222, 124, 386, 248, 125, 424, 252, 126, 449, 281, 127};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {468, 470, 487, 492, 522, 548, 552, 591};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {128, 160, 310, 129, 169, 329, 130, 189, 339, 131, 196, 347, 132, 220, 366, 133, 226, 382, 134, 258, 420, 135, 280, 448};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {460, 475, 489, 496, 520, 526, 558, 590};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {381, 227, 136, 399, 256, 137, 447, 279, 138};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {527, 572, 589};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {379, 229, 139, 400, 255, 140, 446, 278, 141};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {529, 573, 588};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {531, 553, 587};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {377, 231, 142, 403, 253, 143, 445, 277, 144};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {145, 242, 392, 146, 254, 401, 147, 275, 442};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {542, 571, 584};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-9.84") += {540, 565, 586};
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.4 RECY=0.6 WYLO=-15.34") += {394, 240, 148, 413, 257, 149, 444, 276, 150};
