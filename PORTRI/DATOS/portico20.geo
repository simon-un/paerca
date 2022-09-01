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
//+
Physical Curve("CATE EYOU=24870062 POIS=0.2 RECZ=0.7 RECY=0.7") = {585, 443, 583, 283, 593, 434, 600, 1, 292, 433, 432, 574, 581, 284, 10, 300, 402, 599, 435, 596, 566, 2, 111, 274, 431, 293, 557, 550, 428, 412, 580, 19, 11, 285, 421, 530, 288, 266, 405, 598, 436, 591, 551, 3, 378, 251, 27, 119, 273, 430, 294, 404, 549, 449, 543, 556, 230, 110, 579, 20, 12, 286, 265, 281, 406, 422, 391, 528, 535, 37, 437, 597, 590, 564, 4, 272, 28, 127, 380, 243, 249, 373, 512, 541, 552, 429, 295, 414, 563, 448, 578, 21, 118, 44, 228, 358, 234, 393, 424, 525, 287, 13, 407, 264, 280, 438, 582, 506, 544, 38, 204, 109, 383, 252, 241, 554, 589, 5, 135, 271, 29, 450, 296, 352, 504, 390, 524, 558, 519, 55, 45, 225, 126, 415, 570, 447, 577, 22, 14, 282, 211, 359, 244, 420, 523, 385, 499, 367, 548, 509, 39, 408, 263, 279, 439, 595, 562, 588, 6, 205, 117, 61, 384, 258, 223, 342, 219, 355, 503, 386, 30, 138, 270, 427, 297, 446, 416, 559, 576, 572, 534, 521, 493, 56, 46, 134, 224, 198, 108, 212, 360, 248, 500, 23, 15, 289, 419, 278, 262, 440, 594, 399, 547, 374, 365, 491, 351, 526, 513, 40, 73, 62, 206, 125, 482, 343, 561, 587, 7, 31, 141, 259, 298, 426, 235, 256, 387, 194, 221, 345, 502, 382, 363, 536, 573, 522, 498, 57, 201, 332, 568, 445, 417, 575, 24, 290, 16, 137, 247, 47, 199, 70, 116, 226, 213, 361, 398, 400, 546, 501, 364, 341, 495, 486, 182, 107, 261, 410, 277, 592, 441, 560, 584, 527, 514, 8, 41, 74, 133, 207, 63, 255, 388, 236, 195, 344, 222, 349, 336, 481, 490, 80, 32, 268, 144, 425, 299, 442, 567, 418, 372, 508, 381, 553, 537, 497, 520, 58, 48, 140, 246, 71, 124, 200, 186, 192, 331, 340, 479, 492, 485, 25, 291, 17, 411, 260, 275, 214, 354, 227, 397, 545, 403, 346, 494, 366, 515, 529, 42, 75, 181, 115, 76, 190, 319, 480, 348, 335, 586, 555, 9, 267, 33, 147, 64, 136, 209, 389, 253, 237, 197, 220, 350, 507, 379, 371, 571, 538, 488, 469, 81, 106, 173, 185, 191, 330, 569, 423, 444, 26, 59, 143, 49, 245, 72, 132, 193, 353, 215, 229, 533, 401, 396, 472, 338, 323, 496, 484, 474, 87, 180, 123, 77, 409, 250, 276, 516, 531, 43, 69, 65, 210, 139, 254, 375, 238, 326, 188, 177, 334, 483, 347, 328, 465, 476, 487, 82, 269, 150, 34, 505, 377, 370, 565, 539, 60, 146, 50, 233, 83, 114, 172, 196, 333, 184, 170, 316, 473, 337, 322, 18, 362, 216, 231, 413, 532, 395, 542, 517, 463, 471, 35, 88, 183, 131, 78, 161, 105, 176, 187, 327, 459, 142, 208, 66, 257, 376, 239, 392, 369, 510, 325, 314, 458, 477, 489, 79, 96, 171, 84, 122, 309, 451, 52, 51, 232, 149, 217, 242, 356, 165, 179, 308, 339, 321, 478, 464, 470, 89, 301, 159, 518, 540, 36, 202, 145, 67, 113, 92, 158, 175, 320, 189, 461, 315, 324, 455, 466, 151, 104, 394, 511, 368, 53, 95, 174, 130, 85, 178, 166, 312, 452, 311, 305, 103, 218, 240, 357, 467, 475, 86, 121, 91, 163, 155, 162, 302, 468, 456, 68, 148, 203, 462, 329, 317, 94, 112, 152, 99, 318, 306, 453, 54, 313, 167, 169, 102, 168, 303, 156, 90, 129, 164, 460, 457, 98, 153, 120, 93, 454, 307, 310, 101, 157, 160, 304, 97, 128, 154, 100};
//+
Physical Point("LOAD FX=10") = {230, 231, 238, 240, 244, 251, 262, 267, 274};
//+
Physical Point("LOAD FX=5") = {173, 175, 182, 185, 188, 196, 203, 215, 226};
//+
Physical Point("LOAD FX=2.5") = {118, 119, 126, 128, 132, 139, 150, 155, 162};
//+
Physical Point("LOAD FX=1") = {110, 102, 92, 84, 77, 59, 40, 21, 2};
