// Gmsh project created on Thu Apr 22 14:32:24 2021
//+
lc = DefineNumber[ 100, Name "Parameters/lc" ];
//+
Point(1) = {-0, 0, 0, lc};
//+
Point(2) = {0, 0, 3, lc};
//+
Line(1) = {1, 2};
//+
Translate {0, 0, 3} {
  Duplicata { Curve{1}; }
}
//+
Translate {0, 0, 3} {
  Duplicata { Curve{2}; }
}
//+
Translate {0, 0, 3} {
  Duplicata { Curve{3}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Point{1}; Point{2}; Point{4}; Point{6}; Point{8}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Point{9}; Point{10}; Point{11}; Point{12}; Point{13}; Curve{5}; Curve{7}; Curve{8}; Curve{6}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Point{14}; Point{15}; Point{16}; Point{17}; Point{18}; Curve{9}; Curve{10}; Curve{11}; Curve{12}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Point{20}; Point{23}; Point{19}; Point{21}; Point{22}; Curve{16}; Curve{13}; Curve{14}; Curve{15}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Point{27}; Point{24}; Point{25}; Point{26}; Point{28}; Curve{18}; Curve{19}; Curve{20}; Curve{17}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Point{30}; Point{31}; Point{32}; Point{33}; Point{29}; Curve{21}; Curve{22}; Curve{23}; Curve{24}; }
}
//+
Translate {6, 0, 0} {
  Duplicata { Point{34}; Point{35}; Point{36}; Point{37}; Point{38}; Curve{27}; Curve{28}; Curve{25}; Curve{26}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Point{39}; Point{40}; Point{43}; Point{41}; Point{42}; Curve{30}; Curve{31}; Curve{32}; Curve{29}; }
}
//+
Line(37) = {2, 10};
//+
Line(38) = {4, 11};
//+
Line(39) = {6, 12};
//+
Line(40) = {8, 13};
//+
Line(41) = {10, 15};
//+
Line(42) = {11, 16};
//+
Line(43) = {12, 17};
//+
Line(44) = {13, 18};
//+
Line(45) = {15, 20};
//+
Translate {0, 0, 3} {
  Duplicata { Curve{45}; }
}
//+
Translate {0, 0, 3} {
  Duplicata { Curve{46}; }
}
//+
Translate {0, 0, 3} {
  Duplicata { Curve{47}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{45}; Curve{46}; Curve{47}; Curve{48}; }
}
//+
Line(53) = {24, 30};
//+
Line(54) = {27, 29};
//+
Line(55) = {28, 33};
//+
Line(56) = {25, 31};
//+
Line(57) = {30, 34};
//+
Line(58) = {29, 38};
//+
Line(59) = {33, 37};
//+
Line(60) = {31, 35};
//+
Line(61) = {34, 39};
//+
Line(62) = {38, 43};
//+
Line(63) = {37, 42};
//+
Line(64) = {35, 40};
//+
Line(65) = {39, 44};
//+
Line(66) = {43, 46};
//+
Line(67) = {42, 48};
//+
Line(68) = {40, 45};
//+
Translate {0, 9, 0} {
  Duplicata { Point{48}; Point{46}; Point{47}; Point{45}; Point{44}; Point{43}; Point{42}; Point{40}; Point{41}; Point{39}; Point{35}; Point{37}; Point{38}; Point{34}; Point{36}; Point{33}; Point{32}; Point{31}; Point{30}; Point{29}; Point{28}; Point{27}; Point{26}; Point{25}; Point{24}; Point{22}; Point{21}; Point{19}; Point{20}; Point{23}; Point{18}; Point{17}; Point{16}; Point{15}; Point{14}; Point{12}; Point{13}; Point{10}; Point{11}; Point{9}; Point{8}; Point{4}; Point{2}; Point{1}; Point{6}; Curve{34}; Curve{33}; Curve{35}; Curve{36}; Curve{68}; Curve{67}; Curve{66}; Curve{65}; Curve{32}; Curve{31}; Curve{30}; Curve{29}; Curve{63}; Curve{62}; Curve{61}; Curve{64}; Curve{26}; Curve{25}; Curve{27}; Curve{28}; Curve{57}; Curve{58}; Curve{59}; Curve{60}; Curve{21}; Curve{22}; Curve{23}; Curve{24}; Curve{54}; Curve{55}; Curve{53}; Curve{56}; Curve{20}; Curve{19}; Curve{18}; Curve{17}; Curve{50}; Curve{49}; Curve{51}; Curve{52}; Curve{13}; Curve{14}; Curve{15}; Curve{16}; Curve{45}; Curve{46}; Curve{47}; Curve{48}; Curve{10}; Curve{12}; Curve{11}; Curve{9}; Curve{41}; Curve{42}; Curve{43}; Curve{44}; Curve{8}; Curve{7}; Curve{6}; Curve{5}; Curve{37}; Curve{38}; Curve{39}; Curve{40}; Curve{2}; Curve{1}; Curve{3}; Curve{4}; }
}
//+
Translate {0, 7.5, 0} {
  Duplicata { Point{93}; Point{92}; Point{91}; Point{90}; Point{89}; Point{88}; Point{87}; Point{86}; Point{85}; Point{84}; Point{79}; Point{80}; Point{81}; Point{82}; Point{83}; Point{78}; Point{77}; Point{76}; Point{75}; Point{74}; Point{70}; Point{69}; Point{71}; Point{72}; Point{73}; Point{68}; Point{66}; Point{67}; Point{64}; Point{65}; Point{59}; Point{60}; Point{61}; Point{62}; Point{63}; Point{58}; Point{57}; Point{56}; Point{55}; Point{54}; Point{53}; Point{52}; Point{51}; Point{50}; Point{49}; Curve{136}; Curve{135}; Curve{134}; Curve{133}; Curve{132}; Curve{131}; Curve{130}; Curve{129}; Curve{126}; Curve{125}; Curve{128}; Curve{127}; Curve{121}; Curve{122}; Curve{123}; Curve{124}; Curve{117}; Curve{118}; Curve{119}; Curve{120}; Curve{114}; Curve{113}; Curve{115}; Curve{116}; Curve{112}; Curve{111}; Curve{110}; Curve{109}; Curve{108}; Curve{107}; Curve{106}; Curve{105}; Curve{104}; Curve{103}; Curve{102}; Curve{101}; Curve{99}; Curve{98}; Curve{97}; Curve{100}; Curve{96}; Curve{95}; Curve{94}; Curve{93}; Curve{91}; Curve{90}; Curve{89}; Curve{92}; Curve{88}; Curve{86}; Curve{85}; Curve{87}; Curve{84}; Curve{83}; Curve{82}; Curve{81}; Curve{80}; Curve{79}; Curve{78}; Curve{77}; Curve{76}; Curve{75}; Curve{74}; Curve{73}; Curve{72}; Curve{71}; Curve{70}; Curve{69}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Point{94}; Point{95}; Point{96}; Point{97}; Point{98}; Point{99}; Point{100}; Point{101}; Point{102}; Point{103}; Point{108}; Point{104}; Point{105}; Point{106}; Point{107}; Point{109}; Point{110}; Point{111}; Point{112}; Point{113}; Point{118}; Point{117}; Point{116}; Point{115}; Point{114}; Point{123}; Point{122}; Point{121}; Point{120}; Point{119}; Point{124}; Point{125}; Point{126}; Point{127}; Point{128}; Point{129}; Point{133}; Point{132}; Point{131}; Point{130}; Point{137}; Point{134}; Point{135}; Point{136}; Point{138}; Curve{140}; Curve{139}; Curve{138}; Curve{137}; Curve{144}; Curve{143}; Curve{142}; Curve{141}; Curve{148}; Curve{147}; Curve{146}; Curve{145}; Curve{152}; Curve{151}; Curve{150}; Curve{149}; Curve{156}; Curve{155}; Curve{154}; Curve{153}; Curve{160}; Curve{159}; Curve{158}; Curve{157}; Curve{164}; Curve{163}; Curve{162}; Curve{161}; Curve{166}; Curve{168}; Curve{167}; Curve{165}; Curve{170}; Curve{172}; Curve{171}; Curve{169}; Curve{176}; Curve{175}; Curve{174}; Curve{173}; Curve{180}; Curve{179}; Curve{178}; Curve{177}; Curve{182}; Curve{181}; Curve{183}; Curve{184}; Curve{185}; Curve{186}; Curve{187}; Curve{188}; Curve{189}; Curve{190}; Curve{191}; Curve{192}; Curve{196}; Curve{193}; Curve{194}; Curve{195}; Curve{200}; Curve{199}; Curve{198}; Curve{197}; Curve{204}; Curve{201}; Curve{202}; Curve{203}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Curve{231}; Curve{230}; Curve{232}; Curve{229}; Point{149}; Point{150}; Point{151}; Point{152}; Point{153}; Point{144}; Point{145}; Point{146}; Point{147}; Point{148}; Point{143}; Point{142}; Point{141}; Point{140}; Point{139}; Curve{228}; Curve{227}; Curve{226}; Curve{225}; Curve{224}; Curve{223}; Curve{222}; Curve{221}; Curve{220}; Curve{219}; Curve{218}; Curve{217}; Curve{216}; Curve{213}; Curve{214}; Curve{215}; Curve{212}; Curve{211}; Curve{210}; Curve{209}; Curve{208}; Curve{207}; Curve{206}; Curve{205}; }
}
//+
Translate {0, 7.5, 0} {
  Duplicata { Point{184}; Point{185}; Point{188}; Point{192}; Point{196}; Point{203}; Point{202}; Point{201}; Point{200}; Point{204}; Point{205}; Point{209}; Point{208}; Point{207}; Point{206}; Point{214}; Point{213}; Point{212}; Point{211}; Point{210}; Curve{276}; Curve{275}; Curve{274}; Curve{273}; Curve{277}; Curve{278}; Curve{279}; Curve{280}; Curve{282}; Curve{284}; Curve{281}; Curve{283}; Curve{288}; Curve{287}; Curve{286}; Curve{285}; Curve{292}; Curve{291}; Curve{290}; Curve{289}; Curve{293}; Curve{294}; Curve{295}; Curve{296}; Curve{297}; Curve{298}; Curve{299}; Curve{300}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Point{215}; Point{216}; Point{217}; Point{218}; Point{219}; Point{220}; Point{223}; Point{222}; Point{221}; Point{224}; Point{225}; Point{229}; Point{228}; Point{227}; Point{226}; Point{234}; Point{233}; Point{232}; Point{231}; Point{230}; Curve{304}; Curve{302}; Curve{303}; Curve{301}; Curve{305}; Curve{306}; Curve{307}; Curve{308}; Curve{310}; Curve{312}; Curve{309}; Curve{311}; Curve{316}; Curve{315}; Curve{314}; Curve{313}; Curve{320}; Curve{319}; Curve{318}; Curve{317}; Curve{322}; Curve{321}; Curve{323}; Curve{324}; Curve{328}; Curve{325}; Curve{326}; Curve{327}; }
}
//+
Translate {0, 7.5, 0} {
  Duplicata { Point{235}; Point{236}; Point{237}; Point{238}; Point{239}; Point{243}; Point{242}; Point{241}; Point{240}; Point{244}; Point{245}; Point{248}; Point{247}; Point{246}; Point{249}; Point{254}; Point{253}; Point{252}; Point{251}; Point{250}; Curve{332}; Curve{331}; Curve{330}; Curve{329}; Curve{333}; Curve{334}; Curve{335}; Curve{336}; Curve{338}; Curve{340}; Curve{337}; Curve{339}; Curve{344}; Curve{343}; Curve{342}; Curve{341}; Curve{348}; Curve{347}; Curve{346}; Curve{345}; Curve{349}; Curve{350}; Curve{351}; Curve{352}; Curve{353}; Curve{354}; Curve{355}; Curve{356}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Point{255}; Point{256}; Point{257}; Point{258}; Point{259}; Point{263}; Point{262}; Point{261}; Point{260}; Point{264}; Point{265}; Point{269}; Point{268}; Point{267}; Point{266}; Point{274}; Point{273}; Point{272}; Point{271}; Point{270}; Curve{360}; Curve{359}; Curve{358}; Curve{357}; Curve{361}; Curve{362}; Curve{363}; Curve{364}; Curve{366}; Curve{368}; Curve{365}; Curve{367}; Curve{372}; Curve{371}; Curve{370}; Curve{369}; Curve{376}; Curve{375}; Curve{374}; Curve{373}; Curve{377}; Curve{378}; Curve{379}; Curve{380}; Curve{381}; Curve{382}; Curve{383}; Curve{384}; }
}
//+
Translate {0, 9, 0} {
  Duplicata { Point{275}; Point{276}; Point{277}; Point{278}; Point{279}; Point{283}; Point{282}; Point{281}; Point{280}; Point{284}; Point{285}; Point{289}; Point{288}; Point{287}; Point{286}; Point{294}; Point{293}; Point{292}; Point{291}; Point{290}; Curve{388}; Curve{387}; Curve{386}; Curve{385}; Curve{389}; Curve{390}; Curve{391}; Curve{392}; Curve{394}; Curve{393}; Curve{396}; Curve{395}; Curve{400}; Curve{399}; Curve{398}; Curve{397}; Curve{404}; Curve{403}; Curve{402}; Curve{401}; Curve{405}; Curve{406}; Curve{407}; Curve{408}; Curve{409}; Curve{410}; Curve{411}; Curve{412}; }
}
//+
Translate {0, 7.5, 0} {
  Duplicata { Point{295}; Point{296}; Point{297}; Point{298}; Point{299}; Point{303}; Point{302}; Point{300}; Point{301}; Point{304}; Point{305}; Point{309}; Point{308}; Point{307}; Point{306}; Point{314}; Point{313}; Point{312}; Point{311}; Point{310}; Curve{416}; Curve{415}; Curve{414}; Curve{413}; Curve{417}; Curve{418}; Curve{419}; Curve{420}; Curve{422}; Curve{424}; Curve{421}; Curve{423}; Curve{428}; Curve{427}; Curve{426}; Curve{425}; Curve{432}; Curve{431}; Curve{430}; Curve{429}; Curve{433}; Curve{434}; Curve{435}; Curve{436}; Curve{437}; Curve{438}; Curve{439}; Curve{440}; }
}
//+
Line(469) = {332, 312};
//+
Line(470) = {312, 292};
//+
Line(471) = {292, 272};
//+
Line(472) = {272, 252};
//+
Line(473) = {252, 232};
//+
Line(474) = {232, 212};
//+
Line(475) = {212, 141};
//+
Line(476) = {141, 96};
//+
Line(477) = {96, 91};
//+
Line(478) = {91, 2};
//+
Translate {0, 0, 3} {
  Duplicata { Curve{469}; Curve{470}; Curve{471}; Curve{472}; Curve{473}; Curve{474}; Curve{475}; Curve{476}; Curve{477}; Curve{478}; }
}
//+
Translate {0, 0, 6} {
  Duplicata { Curve{479}; Curve{469}; Curve{480}; Curve{470}; Curve{481}; Curve{471}; Curve{482}; Curve{472}; Curve{483}; Curve{473}; Curve{484}; Curve{474}; Curve{485}; Curve{475}; Curve{486}; Curve{476}; Curve{487}; Curve{477}; Curve{488}; Curve{478}; }
}
//+
Translate {8, 0, 0} {
  Duplicata { Curve{489}; Curve{490}; Curve{479}; Curve{469}; Curve{491}; Curve{492}; Curve{480}; Curve{470}; Curve{493}; Curve{494}; Curve{481}; Curve{471}; Curve{495}; Curve{496}; Curve{482}; Curve{472}; Curve{497}; Curve{498}; Curve{483}; Curve{473}; Curve{499}; Curve{500}; Curve{484}; Curve{474}; Curve{501}; Curve{502}; Curve{485}; Curve{475}; Curve{503}; Curve{504}; Curve{486}; Curve{476}; Curve{505}; Curve{506}; Curve{487}; Curve{477}; Curve{507}; Curve{508}; Curve{488}; Curve{478}; }
}
//+
Translate {14, 0, 0} {
  Duplicata { Curve{489}; Curve{490}; Curve{479}; Curve{469}; Curve{509}; Curve{510}; Curve{511}; Curve{512}; Point{244}; Curve{491}; Curve{492}; Curve{480}; Curve{470}; Curve{513}; Curve{514}; Curve{515}; Curve{516}; Curve{493}; Curve{494}; Curve{481}; Curve{471}; Curve{517}; Curve{518}; Curve{519}; Curve{520}; Curve{495}; Curve{496}; Curve{482}; Curve{472}; Curve{521}; Curve{522}; Curve{523}; Curve{524}; Curve{497}; Curve{498}; Curve{483}; Curve{473}; Curve{525}; Curve{526}; Curve{527}; Curve{528}; Curve{499}; Curve{500}; Curve{484}; Curve{474}; Curve{529}; Curve{530}; Curve{531}; Curve{532}; Curve{501}; Curve{502}; Curve{485}; Curve{475}; Curve{533}; Curve{534}; Curve{535}; Curve{536}; Curve{503}; Curve{504}; Curve{486}; Curve{476}; Curve{537}; Curve{538}; Curve{539}; Curve{540}; Curve{505}; Curve{506}; Curve{487}; Curve{477}; Curve{541}; Curve{542}; Curve{543}; Curve{544}; Curve{507}; Curve{508}; Curve{488}; Curve{478}; Curve{545}; Curve{546}; Curve{547}; Curve{548}; }
}
//+
Line(629) = {44, 53};
//+
Line(630) = {53, 134};
//+
Line(631) = {134, 180};
//+
Line(632) = {46, 50};
//+
Line(633) = {50, 137};
//+
Line(634) = {137, 179};
//+
Line(635) = {48, 49};
//+
Line(636) = {49, 138};
//+
Line(637) = {138, 183};
//+
Line(638) = {45, 52};
//+
Line(639) = {52, 135};
//+
Line(640) = {135, 181};
//+
Translate {-8, 0, 0} {
  Duplicata { Curve{638}; Curve{635}; Curve{632}; Curve{629}; Curve{639}; Curve{636}; Curve{633}; Curve{630}; Curve{640}; Curve{637}; Curve{634}; Curve{631}; }
}
//+
Translate {-14, 0, 0} {
  Duplicata { Curve{640}; Curve{649}; Curve{637}; Curve{650}; Curve{634}; Curve{651}; Curve{631}; Curve{652}; Curve{639}; Curve{645}; Curve{636}; Curve{646}; Curve{633}; Curve{647}; Curve{630}; Curve{648}; Curve{641}; Curve{638}; Curve{642}; Curve{635}; Curve{643}; Curve{632}; Curve{644}; Curve{629}; }
}
//+
Translate {-6, 0, 0} {
  Duplicata { Curve{654}; Curve{656}; Curve{658}; Curve{660}; Curve{662}; Curve{664}; Curve{666}; Curve{668}; Curve{669}; Curve{671}; Curve{673}; Curve{675}; }
}
//+
Physical Point("DISP UX=0 UY=0 UZ=0 RX=0 RY=0 RZ=0") = {136, 47, 51, 182, 130, 41, 57, 178, 173, 63, 128, 36, 65, 164, 123, 32, 116, 161, 71, 26, 219, 239, 196, 156, 259, 111, 279, 76, 299, 19, 319, 321, 281, 14, 302, 83, 108, 262, 149, 241, 200, 223, 205, 225, 245, 144, 265, 99, 325, 88, 285, 305, 9, 333, 311, 293, 271, 253, 231, 213, 140, 95, 92, 1};
//+ todas las columnas
Physical Curve("CATE EYOU=20E6 POIS=0.2 RHOM=2.44 RECZ=0.70 RECY=0.70") = {69, 269, 204, 264, 78, 195, 254, 86, 186, 93, 245, 180, 103, 237, 170, 164, 413, 229, 388, 357, 109, 276, 332, 301, 156, 423, 396, 221, 367, 120, 284, 337, 310, 318, 291, 347, 128, 374, 214, 403, 147, 430, 327, 299, 356, 134, 384, 139, 412, 206, 440, 203, 272, 33, 70, 263, 194, 30, 79, 253, 185, 28, 88, 96, 248, 24, 177, 104, 240, 17, 169, 16, 161, 359, 330, 415, 302, 386, 442, 275, 112, 232, 223, 154, 12, 118, 421, 309, 451, 339, 368, 394, 282, 431, 6, 213, 290, 127, 319, 458, 346, 402, 148, 375, 381, 353, 409, 328, 300, 2, 437, 205, 140, 133, 465, 202, 271, 35, 71, 261, 196, 32, 77, 255, 187, 26, 85, 94, 246, 22, 179, 102, 239, 19, 171, 14, 163, 358, 331, 414, 303, 387, 443, 274, 110, 230, 224, 153, 10, 117, 422, 311, 449, 340, 366, 393, 281, 432, 7, 216, 289, 126, 320, 457, 345, 401, 145, 376, 383, 355, 411, 326, 298, 3, 439, 207, 138, 135, 467, 201, 270, 36, 72, 262, 193, 29, 80, 256, 188, 27, 87, 95, 247, 23, 178, 101, 238, 20, 172, 15, 162, 360, 329, 416, 304, 385, 441, 273, 111, 231, 222, 155, 11, 119, 424, 312, 450, 338, 365, 395, 283, 429, 8, 215, 292, 125, 317, 460, 348, 404, 146, 373, 382, 354, 410, 325, 297, 4, 438, 208, 137, 136, 466, 34};
//+ columnas exteriores
Physical Curve("CATE EYOU=20E6 POIS=0.2 RHOM=2.44 RECZ=0.60 RECY=0.90") = {34, 33, 35, 36, 69, 70, 71, 72, 204, 203, 202, 201, 269, 272, 271, 270, 31, 25, 21, 18, 13, 9, 5, 1, 2, 6, 12, 16, 17, 24, 28, 30, 32, 26, 27, 29, 23, 22, 19, 20, 14, 15, 10, 11, 7, 8, 4, 3, 134, 133, 135, 136, 137, 138, 140, 139, 206, 205, 207, 208, 299, 300, 298, 297, 327, 328, 326, 325, 354, 355, 353, 356, 384, 381, 383, 382, 412, 409, 411, 410, 440, 437, 439, 438, 468, 465, 467, 466, 460, 457, 458, 459, 450, 449, 451, 452, 441, 443, 442, 444, 416, 414, 415, 413, 385, 387, 386, 388, 360, 358, 359, 357, 329, 331, 330, 332, 304, 303, 302, 301, 273, 274, 275, 276, 231, 230, 232, 229, 238, 239, 240, 237, 247, 246, 248, 245, 256, 255, 253, 254, 262, 261, 263, 264};
//+ vigas en dirección y
Physical Curve("CATE EYOU=20E6 POIS=0.2 RHOM=2.44  RECZ=0.40 RECY=0.60") = {489, 509, 549, 553, 490, 510, 550, 554, 479, 511, 551, 555, 469, 512, 552, 556, 491, 513, 557, 561, 492, 514, 558, 562, 480, 515, 559, 563, 470, 516, 560, 564, 493, 517, 565, 569, 494, 518, 566, 570, 481, 519, 567, 571, 471, 520, 568, 572, 495, 521, 573, 577, 496, 522, 574, 578, 482, 523, 575, 579, 472, 524, 576, 580, 497, 525, 581, 585, 498, 526, 582, 586, 483, 527, 583, 587, 473, 528, 584, 588, 499, 529, 589, 593, 500, 530, 590, 594, 484, 531, 591, 595, 474, 532, 592, 596, 501, 533, 597, 601, 502, 534, 598, 602, 485, 535, 599, 603, 475, 536, 600, 604, 503, 537, 605, 609, 677, 654, 653, 649, 640, 504, 538, 606, 610, 678, 656, 655, 650, 637, 486, 539, 607, 611, 679, 658, 657, 651, 634, 476, 540, 608, 612, 680, 660, 659, 652, 631, 505, 541, 613, 617, 681, 662, 661, 645, 639, 506, 542, 614, 618, 682, 664, 663, 646, 636, 487, 543, 615, 619, 683, 666, 665, 647, 633, 477, 544, 616, 620, 684, 668, 667, 648, 630, 507, 545, 621, 625, 685, 669, 670, 641, 638, 508, 546, 622, 626, 686, 671, 672, 642, 635, 488, 547, 623, 627, 687, 673, 674, 643, 632, 478, 548, 624, 628, 688, 675, 676, 644, 629};
//+ vigas en dirección x
Physical Curve("CATE EYOU=20E6 POIS=0.2 RHOM=2.44  RECZ=0.40 RECY=0.60") += {68, 73, 200, 265, 67, 74, 199, 266, 66, 75, 198, 267, 65, 76, 197, 268, 64, 84, 189, 257, 63, 81, 192, 260, 62, 82, 191, 259, 61, 83, 190, 258, 60, 92, 184, 252, 59, 91, 181, 250, 58, 90, 182, 249, 57, 89, 183, 251, 56, 100, 176, 241, 55, 98, 174, 243, 54, 97, 175, 242, 53, 99, 173, 244, 52, 108, 165, 236, 51, 107, 166, 233, 50, 105, 168, 234, 49, 106, 167, 235, 48, 116, 160, 225, 280, 308, 336, 364, 392, 420, 448, 47, 115, 159, 226, 279, 307, 335, 363, 391, 419, 447, 46, 114, 157, 228, 277, 305, 333, 361, 389, 417, 445, 45, 113, 158, 227, 278, 306, 334, 362, 390, 418, 446, 44, 124, 152, 217, 288, 313, 344, 369, 400, 425, 456, 43, 123, 151, 218, 287, 314, 343, 370, 399, 426, 455, 42, 122, 150, 219, 286, 315, 342, 371, 398, 427, 454, 41, 121, 149, 220, 285, 316, 341, 372, 397, 428, 453, 40, 132, 141, 212, 293, 321, 350, 378, 406, 434, 462, 39, 131, 142, 211, 294, 322, 349, 377, 405, 433, 461, 38, 130, 143, 210, 295, 323, 351, 379, 407, 435, 463, 37, 129, 144, 209, 296, 324, 352, 380, 408, 436, 464};
