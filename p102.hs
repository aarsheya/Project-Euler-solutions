{- 
 - Solution to Project Euler problem 102
 - by Project Nayuki
 - 
 - http://www.nayuki.io/page/project-euler-solutions
 - https://github.com/nayuki/Project-Euler-solutions
 -}


main = putStrLn (show ans)
ans = length (filter (inTriangle 0 0) triangles)

-- Use cross products to determine handedness
inTriangle x y (x0,y0,x1,y1,x2,y2) =
	let
		a = signum ((x0 - x1) * (y - y0) - (y0 - y1) * (x - x0))
		b = signum ((x1 - x2) * (y - y1) - (y1 - y2) * (x - x1))
		c = signum ((x2 - x0) * (y - y2) - (y2 - y0) * (x - x2))
	in
		a == 0 || b == 0 || c == 0 || (a == b && b == c)

triangles = [
	(-340,495,-153,-910,835,-947),
	(-175,41,-421,-714,574,-645),
	(-547,712,-352,579,951,-786),
	(419,-864,-83,650,-399,171),
	(-429,-89,-357,-930,296,-29),
	(-734,-702,823,-745,-684,-62),
	(-971,762,925,-776,-663,-157),
	(162,570,628,485,-807,-896),
	(641,91,-65,700,887,759),
	(215,-496,46,-931,422,-30),
	(-119,359,668,-609,-358,-494),
	(440,929,968,214,760,-857),
	(-700,785,838,29,-216,411),
	(-770,-458,-325,-53,-505,633),
	(-752,-805,349,776,-799,687),
	(323,5,561,-36,919,-560),
	(-907,358,264,320,204,274),
	(-728,-466,350,969,292,-345),
	(940,836,272,-533,748,185),
	(411,998,813,520,316,-949),
	(-152,326,658,-762,148,-651),
	(330,507,-9,-628,101,174),
	(551,-496,772,-541,-702,-45),
	(-164,-489,-90,322,631,-59),
	(673,366,-4,-143,-606,-704),
	(428,-609,801,-449,740,-269),
	(453,-924,-785,-346,-853,111),
	(-738,555,-181,467,-426,-20),
	(958,-692,784,-343,505,-569),
	(620,27,263,54,-439,-726),
	(804,87,998,859,871,-78),
	(-119,-453,-709,-292,-115,-56),
	(-626,138,-940,-476,-177,-274),
	(-11,160,142,588,446,158),
	(538,727,550,787,330,810),
	(420,-689,854,-546,337,516),
	(872,-998,-607,748,473,-192),
	(653,440,-516,-985,808,-857),
	(374,-158,331,-940,-338,-641),
	(137,-925,-179,771,734,-715),
	(-314,198,-115,29,-641,-39),
	(759,-574,-385,355,590,-603),
	(-189,-63,-168,204,289,305),
	(-182,-524,-715,-621,911,-255),
	(331,-816,-833,471,168,126),
	(-514,581,-855,-220,-731,-507),
	(129,169,576,651,-87,-458),
	(783,-444,-881,658,-266,298),
	(603,-430,-598,585,368,899),
	(43,-724,962,-376,851,409),
	(-610,-646,-883,-261,-482,-881),
	(-117,-237,978,641,101,-747),
	(579,125,-715,-712,208,534),
	(672,-214,-762,372,874,533),
	(-564,965,38,715,367,242),
	(500,951,-700,-981,-61,-178),
	(-382,-224,-959,903,-282,-60),
	(-355,295,426,-331,-591,655),
	(892,128,958,-271,-993,274),
	(-454,-619,302,138,-790,-874),
	(-642,601,-574,159,-290,-318),
	(266,-109,257,-686,54,975),
	(162,628,-478,840,264,-266),
	(466,-280,982,1,904,-810),
	(721,839,730,-807,777,981),
	(-129,-430,748,263,943,96),
	(434,-94,410,-990,249,-704),
	(237,42,122,-732,44,-51),
	(909,-116,-229,545,292,717),
	(824,-768,-807,-370,-262,30),
	(675,58,332,-890,-651,791),
	(363,825,-717,254,684,240),
	(405,-715,900,166,-589,422),
	(-476,686,-830,-319,634,-807),
	(633,837,-971,917,-764,207),
	(-116,-44,-193,-70,908,809),
	(-26,-252,998,408,70,-713),
	(-601,645,-462,842,-644,-591),
	(-160,653,274,113,-138,687),
	(369,-273,-181,925,-167,-693),
	(-338,135,480,-967,-13,-840),
	(-90,-270,-564,695,161,907),
	(607,-430,869,-713,461,-469),
	(919,-165,-776,522,606,-708),
	(-203,465,288,207,-339,-458),
	(-453,-534,-715,975,838,-677),
	(-973,310,-350,934,546,-805),
	(-835,385,708,-337,-594,-772),
	(-14,914,900,-495,-627,594),
	(833,-713,-213,578,-296,699),
	(-27,-748,484,455,915,291),
	(270,889,739,-57,442,-516),
	(119,811,-679,905,184,130),
	(-678,-469,925,553,612,482),
	(101,-571,-732,-842,644,588),
	(-71,-737,566,616,957,-663),
	(-634,-356,90,-207,936,622),
	(598,443,964,-895,-58,529),
	(847,-467,929,-742,91,10),
	(-633,829,-780,-408,222,-30),
	(-818,57,275,-38,-746,198),
	(-722,-825,-549,597,-391,99),
	(-570,908,430,873,-103,-360),
	(342,-681,512,434,542,-528),
	(297,850,479,609,543,-357),
	(9,784,212,548,56,859),
	(-152,560,-240,-969,-18,713),
	(140,-133,34,-635,250,-163),
	(-272,-22,-169,-662,989,-604),
	(471,-765,355,633,-742,-118),
	(-118,146,942,663,547,-376),
	(583,16,162,264,715,-33),
	(-230,-446,997,-838,561,555),
	(372,397,-729,-318,-276,649),
	(92,982,-970,-390,-922,922),
	(-981,713,-951,-337,-669,670),
	(-999,846,-831,-504,7,-128),
	(455,-954,-370,682,-510,45),
	(822,-960,-892,-385,-662,314),
	(-668,-686,-367,-246,530,-341),
	(-723,-720,-926,-836,-142,757),
	(-509,-134,384,-221,-873,-639),
	(-803,-52,-706,-669,373,-339),
	(933,578,631,-616,770,555),
	(741,-564,-33,-605,-576,275),
	(-715,445,-233,-730,734,-704),
	(120,-10,-266,-685,-490,-17),
	(-232,-326,-457,-946,-457,-116),
	(811,52,639,826,-200,147),
	(-329,279,293,612,943,955),
	(-721,-894,-393,-969,-642,453),
	(-688,-826,-352,-75,371,79),
	(-809,-979,407,497,858,-248),
	(-485,-232,-242,-582,-81,849),
	(141,-106,123,-152,806,-596),
	(-428,57,-992,811,-192,478),
	(864,393,122,858,255,-876),
	(-284,-780,240,457,354,-107),
	(956,605,-477,44,26,-678),
	(86,710,-533,-815,439,327),
	(-906,-626,-834,763,426,-48),
	(201,-150,-904,652,475,412),
	(-247,149,81,-199,-531,-148),
	(923,-76,-353,175,-121,-223),
	(427,-674,453,472,-410,585),
	(931,776,-33,85,-962,-865),
	(-655,-908,-902,208,869,792),
	(-316,-102,-45,-436,-222,885),
	(-309,768,-574,653,745,-975),
	(896,27,-226,993,332,198),
	(323,655,-89,260,240,-902),
	(501,-763,-424,793,813,616),
	(993,375,-938,-621,672,-70),
	(-880,-466,-283,770,-824,143),
	(63,-283,886,-142,879,-116),
	(-964,-50,-521,-42,-306,-161),
	(724,-22,866,-871,933,-383),
	(-344,135,282,966,-80,917),
	(-281,-189,420,810,362,-582),
	(-515,455,-588,814,162,332),
	(555,-436,-123,-210,869,-943),
	(589,577,232,286,-554,876),
	(-773,127,-58,-171,-452,125),
	(-428,575,906,-232,-10,-224),
	(437,276,-335,-348,605,878),
	(-964,511,-386,-407,168,-220),
	(307,513,912,-463,-423,-416),
	(-445,539,273,886,-18,760),
	(-396,-585,-670,414,47,364),
	(143,-506,754,906,-971,-203),
	(-544,472,-180,-541,869,-465),
	(-779,-15,-396,890,972,-220),
	(-430,-564,503,182,-119,456),
	(89,-10,-739,399,506,499),
	(954,162,-810,-973,127,870),
	(890,952,-225,158,828,237),
	(-868,952,349,465,574,750),
	(-915,369,-975,-596,-395,-134),
	(-135,-601,575,582,-667,640),
	(413,890,-560,-276,-555,-562),
	(-633,-269,561,-820,-624,499),
	(371,-92,-784,-593,864,-717),
	(-971,655,-439,367,754,-951),
	(172,-347,36,279,-247,-402),
	(633,-301,364,-349,-683,-387),
	(-780,-211,-713,-948,-648,543),
	(72,58,762,-465,-66,462),
	(78,502,781,-832,713,836),
	(-431,-64,-484,-392,208,-343),
	(-64,101,-29,-860,-329,844),
	(398,391,828,-858,700,395),
	(578,-896,-326,-604,314,180),
	(97,-321,-695,185,-357,852),
	(854,839,283,-375,951,-209),
	(194,96,-564,-847,162,524),
	(-354,532,494,621,580,560),
	(419,-678,-450,926,-5,-924),
	(-661,905,519,621,-143,394),
	(-573,268,296,-562,-291,-319),
	(-211,266,-196,158,564,-183),
	(18,-585,-398,777,-581,864),
	(790,-894,-745,-604,-418,70),
	(848,-339,150,773,11,851),
	(-954,-809,-53,-20,-648,-304),
	(658,-336,-658,-905,853,407),
	(-365,-844,350,-625,852,-358),
	(986,-315,-230,-159,21,180),
	(-15,599,45,-286,-941,847),
	(-613,-68,184,639,-987,550),
	(334,675,-56,-861,923,340),
	(-848,-596,960,231,-28,-34),
	(707,-811,-994,-356,-167,-171),
	(-470,-764,72,576,-600,-204),
	(379,189,-542,-576,585,800),
	(440,540,-445,-563,379,-334),
	(-155,64,514,-288,853,106),
	(-304,751,481,-520,-708,-694),
	(-709,132,594,126,-844,63),
	(723,471,421,-138,-962,892),
	(-440,-263,39,513,-672,-954),
	(775,809,-581,330,752,-107),
	(-376,-158,335,-708,-514,578),
	(-343,-769,456,-187,25,413),
	(548,-877,-172,300,-500,928),
	(938,-102,423,-488,-378,-969),
	(-36,564,-55,131,958,-800),
	(-322,511,-413,503,700,-847),
	(-966,547,-88,-17,-359,-67),
	(637,-341,-437,-181,527,-153),
	(-74,449,-28,3,485,189),
	(-997,658,-224,-948,702,-807),
	(-224,736,-896,127,-945,-850),
	(-395,-106,439,-553,-128,124),
	(-841,-445,-758,-572,-489,212),
	(633,-327,13,-512,952,771),
	(-940,-171,-6,-46,-923,-425),
	(-142,-442,-817,-998,843,-695),
	(340,847,-137,-920,-988,-658),
	(-653,217,-679,-257,651,-719),
	(-294,365,-41,342,74,-892),
	(690,-236,-541,494,408,-516),
	(180,-807,225,790,494,59),
	(707,605,-246,656,284,271),
	(65,294,152,824,442,-442),
	(-321,781,-540,341,316,415),
	(420,371,-2,545,995,248),
	(56,-191,-604,971,615,449),
	(-981,-31,510,592,-390,-362),
	(-317,-968,913,365,97,508),
	(832,63,-864,-510,86,202),
	(-483,456,-636,340,-310,676),
	(981,-847,751,-508,-962,-31),
	(-157,99,73,797,63,-172),
	(220,858,872,924,866,-381),
	(996,-169,805,321,-164,971),
	(896,11,-625,-973,-782,76),
	(578,-280,730,-729,307,-905),
	(-580,-749,719,-698,967,603),
	(-821,874,-103,-623,662,-491),
	(-763,117,661,-644,672,-607),
	(592,787,-798,-169,-298,690),
	(296,644,-526,-762,-447,665),
	(534,-818,852,-120,57,-379),
	(-986,-549,-329,294,954,258),
	(-133,352,-660,-77,904,-356),
	(748,343,215,500,317,-277),
	(311,7,910,-896,-809,795),
	(763,-602,-753,313,-352,917),
	(668,619,-474,-597,-650,650),
	(-297,563,-701,-987,486,-902),
	(-461,-740,-657,233,-482,-328),
	(-446,-250,-986,-458,-629,520),
	(542,-49,-327,-469,257,-947),
	(121,-575,-634,-143,-184,521),
	(30,504,455,-645,-229,-945),
	(-12,-295,377,764,771,125),
	(-686,-133,225,-25,-376,-143),
	(-6,-46,338,270,-405,-872),
	(-623,-37,582,467,963,898),
	(-804,869,-477,420,-475,-303),
	(94,41,-842,-193,-768,720),
	(-656,-918,415,645,-357,460),
	(-47,-486,-911,468,-608,-686),
	(-158,251,419,-394,-655,-895),
	(272,-695,979,508,-358,959),
	(-776,650,-918,-467,-690,-534),
	(-85,-309,-626,167,-366,-429),
	(-880,-732,-186,-924,970,-875),
	(517,645,-274,962,-804,544),
	(721,402,104,640,478,-499),
	(198,684,-134,-723,-452,-905),
	(-245,745,239,238,-826,441),
	(-217,206,-32,462,-981,-895),
	(-51,989,526,-173,560,-676),
	(-480,-659,-976,-580,-727,466),
	(-996,-90,-995,158,-239,642),
	(302,288,-194,-294,17,924),
	(-943,969,-326,114,-500,103),
	(-619,163,339,-880,230,421),
	(-344,-601,-795,557,565,-779),
	(590,345,-129,-202,-125,-58),
	(-777,-195,159,674,775,411),
	(-939,312,-665,810,121,855),
	(-971,254,712,815,452,581),
	(442,-9,327,-750,61,757),
	(-342,869,869,-160,390,-772),
	(620,601,565,-169,-69,-183),
	(-25,924,-817,964,321,-970),
	(-64,-6,-133,978,825,-379),
	(601,436,-24,98,-115,940),
	(-97,502,614,-574,922,513),
	(-125,262,-946,695,99,-220),
	(429,-721,719,-694,197,-558),
	(326,689,-70,-908,-673,338),
	(-468,-856,-902,-254,-358,305),
	(-358,530,542,355,-253,-47),
	(-438,-74,-362,963,988,788),
	(137,717,467,622,319,-380),
	(-86,310,-336,851,918,-288),
	(721,395,646,-53,255,-425),
	(255,175,912,84,-209,878),
	(-632,-485,-400,-357,991,-608),
	(235,-559,992,-297,857,-591),
	(87,-71,148,130,647,578),
	(-290,-584,-639,-788,-21,592),
	(386,984,625,-731,-993,-336),
	(-538,634,-209,-828,-150,-774),
	(-754,-387,607,-781,976,-199),
	(412,-798,-664,295,709,-537),
	(-412,932,-880,-232,561,852),
	(-656,-358,-198,-964,-433,-848),
	(-762,-668,-632,186,-673,-11),
	(-876,237,-282,-312,-83,682),
	(403,73,-57,-436,-622,781),
	(-587,873,798,976,-39,329),
	(-369,-622,553,-341,817,794),
	(-108,-616,920,-849,-679,96),
	(290,-974,234,239,-284,-321),
	(-22,394,-417,-419,264,58),
	(-473,-551,69,923,591,-228),
	(-956,662,-113,851,-581,-794),
	(-258,-681,413,-471,-637,-817),
	(-866,926,992,-653,-7,794),
	(556,-350,602,917,831,-610),
	(188,245,-906,361,492,174),
	(-720,384,-818,329,638,-666),
	(-246,846,890,-325,-59,-850),
	(-118,-509,620,-762,-256,15),
	(-787,-536,-452,-338,-399,813),
	(458,560,525,-311,-608,-419),
	(494,-811,-825,-127,-812,894),
	(-801,890,-629,-860,574,925),
	(-709,-193,-213,138,-410,-403),
	(861,91,708,-187,5,-222),
	(789,646,777,154,90,-49),
	(-267,-830,-114,531,591,-698),
	(-126,-82,881,-418,82,652),
	(-894,130,-726,-935,393,-815),
	(-142,563,654,638,-712,-597),
	(-759,60,-23,977,100,-765),
	(-305,595,-570,-809,482,762),
	(-161,-267,53,963,998,-529),
	(-300,-57,798,353,703,486),
	(-990,696,-764,699,-565,719),
	(-232,-205,566,571,977,369),
	(740,865,151,-817,-204,-293),
	(94,445,-768,229,537,-406),
	(861,620,37,-424,-36,656),
	(390,-369,952,733,-464,569),
	(-482,-604,959,554,-705,-626),
	(-396,-615,-991,108,272,-723),
	(143,780,535,142,-917,-147),
	(138,-629,-217,-908,905,115),
	(915,103,-852,64,-468,-642),
	(570,734,-785,-268,-326,-759),
	(738,531,-332,586,-779,24),
	(870,440,-217,473,-383,415),
	(-296,-333,-330,-142,-924,950),
	(118,120,-35,-245,-211,-652),
	(61,634,153,-243,838,789),
	(726,-582,210,105,983,537),
	(-313,-323,758,234,29,848),
	(-847,-172,-593,733,-56,617),
	(54,255,-512,156,-575,675),
	(-873,-956,-148,623,95,200),
	(700,-370,926,649,-978,157),
	(-639,-202,719,130,747,222),
	(194,-33,955,943,505,114),
	(-226,-790,28,-930,827,783),
	(-392,-74,-28,714,218,-612),
	(209,626,-888,-683,-912,495),
	(487,751,614,933,631,445),
	(-348,-34,-411,-106,835,321),
	(-689,872,-29,-800,312,-542),
	(-52,566,827,570,-862,-77),
	(471,992,309,-402,389,912),
	(24,520,-83,-51,555,503),
	(-265,-317,283,-970,-472,690),
	(606,526,137,71,-651,150),
	(217,-518,663,66,-605,-331),
	(-562,232,-76,-503,205,-323),
	(842,-521,546,285,625,-186),
	(997,-927,344,909,-546,974),
	(-677,419,81,121,-705,771),
	(719,-379,-944,-797,784,-155),
	(-378,286,-317,-797,-111,964),
	(-288,-573,784,80,-532,-646),
	(-77,407,-248,-797,769,-816),
	(-24,-637,287,-858,-927,-333),
	(-902,37,894,-823,141,684),
	(125,467,-177,-516,686,399),
	(-321,-542,641,-590,527,-224),
	(-400,-712,-876,-208,632,-543),
	(-676,-429,664,-242,-269,922),
	(-608,-273,-141,930,687,380),
	(786,-12,498,494,310,326),
	(-739,-617,606,-960,804,188),
	(384,-368,-243,-350,-459,31),
	(-550,397,320,-868,328,-279),
	(969,-179,853,864,-110,514),
	(910,793,302,-822,-285,488),
	(-605,-128,218,-283,-17,-227),
	(16,324,667,708,750,3),
	(485,-813,19,585,71,930),
	(-218,816,-687,-97,-732,-360),
	(-497,-151,376,-23,3,315),
	(-412,-989,-610,-813,372,964),
	(-878,-280,87,381,-311,69),
	(-609,-90,-731,-679,150,585),
	(889,27,-162,605,75,-770),
	(448,617,-988,0,-103,-504),
	(-800,-537,-69,627,608,-668),
	(534,686,-664,942,830,920),
	(-238,775,495,932,-793,497),
	(-343,958,-914,-514,-691,651),
	(568,-136,208,359,728,28),
	(286,912,-794,683,556,-102),
	(-638,-629,-484,445,-64,-497),
	(58,505,-801,-110,872,632),
	(-390,777,353,267,976,369),
	(-993,515,105,-133,358,-572),
	(964,996,355,-212,-667,38),
	(-725,-614,-35,365,132,-196),
	(237,-536,-416,-302,312,477),
	(-664,574,-210,224,48,-925),
	(869,-261,-256,-240,-3,-698),
	(712,385,32,-34,916,-315),
	(895,-409,-100,-346,728,-624),
	(-806,327,-450,889,-781,-939),
	(-586,-403,698,318,-939,899),
	(557,-57,-920,659,333,-51),
	(-441,232,-918,-205,246,1),
	(783,167,-797,-595,245,-736),
	(-36,-531,-486,-426,-813,-160),
	(777,-843,817,313,-228,-572),
	(735,866,-309,-564,-81,190),
	(-413,645,101,719,-719,218),
	(-83,164,767,796,-430,-459),
	(122,779,-15,-295,-96,-892),
	(462,379,70,548,834,-312),
	(-630,-534,124,187,-737,114),
	(-299,-604,318,-591,936,826),
	(-879,218,-642,-483,-318,-866),
	(-691,62,-658,761,-895,-854),
	(-822,493,687,569,910,-202),
	(-223,784,304,-5,541,925),
	(-914,541,737,-662,-662,-195),
	(-622,615,414,358,881,-878),
	(339,745,-268,-968,-280,-227),
	(-364,855,148,-709,-827,472),
	(-890,-532,-41,664,-612,577),
	(-702,-859,971,-722,-660,-920),
	(-539,-605,737,149,973,-802),
	(800,42,-448,-811,152,511),
	(-933,377,-110,-105,-374,-937),
	(-766,152,482,120,-308,390),
	(-568,775,-292,899,732,890),
	(-177,-317,-502,-259,328,-511),
	(612,-696,-574,-660,132,31),
	(-119,563,-805,-864,179,-672),
	(425,-627,183,-331,839,318),
	(-711,-976,-749,152,-916,261),
	(181,-63,497,211,262,406),
	(-537,700,-859,-765,-928,77),
	(892,832,231,-749,-82,613),
	(816,216,-642,-216,-669,-912),
	(-6,624,-937,-370,-344,268),
	(737,-710,-869,983,-324,-274),
	(565,952,-547,-158,374,-444),
	(51,-683,645,-845,515,636),
	(-953,-631,114,-377,-764,-144),
	(-8,470,-242,-399,-675,-730),
	(-540,689,-20,47,-607,590),
	(-329,-710,-779,942,-388,979),
	(123,829,674,122,203,563),
	(46,782,396,-33,386,610),
	(872,-846,-523,-122,-55,-190),
	(388,-994,-525,974,127,596),
	(781,-680,796,-34,-959,-62),
	(-749,173,200,-384,-745,-446),
	(379,618,136,-250,-224,970),
	(-58,240,-921,-760,-901,-626),
	(366,-185,565,-100,515,688),
	(489,999,-893,-263,-637,816),
	(838,-496,-316,-513,419,479),
	(107,676,-15,882,98,-397),
	(-999,941,-903,-424,670,-325),
	(171,-979,835,178,169,-984),
	(-609,-607,378,-681,184,402),
	(-316,903,-575,-800,224,983),
	(591,-18,-460,551,-167,918),
	(-756,405,-117,441,163,-320),
	(456,24,6,881,-836,-539),
	(-489,-585,915,651,-892,-382),
	(-177,-122,73,-711,-386,591),
	(181,724,530,686,-131,241),
	(737,288,886,216,233,33),
	(-548,-386,-749,-153,-85,-982),
	(-835,227,904,160,-99,25),
	(-9,-42,-162,728,840,-963),
	(217,-763,870,771,47,-846),
	(-595,808,-491,556,337,-900),
	(-134,281,-724,441,-134,708),
	(-789,-508,651,-962,661,315),
	(-839,-923,339,402,41,-487),
	(300,-790,48,703,-398,-811),
	(955,-51,462,-685,960,-717),
	(910,-880,592,-255,-51,-776),
	(-885,169,-793,368,-565,458),
	(-905,940,-492,-630,-535,-988),
	(245,797,763,869,-82,550),
	(-310,38,-933,-367,-650,824),
	(-95,32,-83,337,226,990),
	(-218,-975,-191,-208,-785,-293),
	(-672,-953,517,-901,-247,465),
	(681,-148,261,-857,544,-923),
	(640,341,446,-618,195,769),
	(384,398,-846,365,671,815),
	(578,576,-911,907,762,-859),
	(548,-428,144,-630,-759,-146),
	(710,-73,-700,983,-97,-889),
	(-46,898,-973,-362,-817,-717),
	(151,-81,-125,-900,-478,-154),
	(483,615,-537,-932,181,-68),
	(786,-223,518,25,-306,-12),
	(-422,268,-809,-683,635,468),
	(983,-734,-694,-608,-110,4),
	(-786,-196,749,-354,137,-8),
	(-181,36,668,-200,691,-973),
	(-629,-838,692,-736,437,-871),
	(-208,-536,-159,-596,8,197),
	(-3,370,-686,170,913,-376),
	(44,-998,-149,-993,-200,512),
	(-519,136,859,497,536,434),
	(77,-985,972,-340,-705,-837),
	(-381,947,250,360,344,322),
	(-26,131,699,750,707,384),
	(-914,655,299,193,406,955),
	(-883,-921,220,595,-546,794),
	(-599,577,-569,-404,-704,489),
	(-594,-963,-624,-460,880,-760),
	(-603,88,-99,681,55,-328),
	(976,472,139,-453,-531,-860),
	(192,-290,513,-89,666,432),
	(417,487,575,293,567,-668),
	(655,711,-162,449,-980,972),
	(-505,664,-685,-239,603,-592),
	(-625,-802,-67,996,384,-636),
	(365,-593,522,-666,-200,-431),
	(-868,708,560,-860,-630,-355),
	(-702,785,-637,-611,-597,960),
	(-137,-696,-93,-803,408,406),
	(891,-123,-26,-609,-610,518),
	(133,-832,-198,555,708,-110),
	(791,617,-69,487,696,315),
	(-900,694,-565,517,-269,-416),
	(914,135,-781,600,-71,-600),
	(991,-915,-422,-351,-837,313),
	(-840,-398,-302,21,590,146),
	(62,-558,-702,-384,-625,831),
	(-363,-426,-924,-496,792,-908),
	(73,361,-817,-466,400,922),
	(-626,-164,-626,860,-524,286),
	(255,26,-944,809,-606,986),
	(-457,-256,-103,50,-867,-871),
	(-223,803,196,480,612,136),
	(-820,-928,700,780,-977,721),
	(717,332,53,-933,-128,793),
	(-602,-648,562,593,890,702),
	(-469,-875,-527,911,-475,-222),
	(110,-281,-552,-536,-816,596),
	(-981,654,413,-981,-75,-95),
	(-754,-742,-515,894,-220,-344),
	(795,-52,156,408,-603,76),
	(474,-157,423,-499,-807,-791),
	(260,688,40,-52,702,-122),
	(-584,-517,-390,-881,302,-504),
	(61,797,665,708,14,668),
	(366,166,458,-614,564,-983),
	(72,539,-378,796,381,-824),
	(-485,201,-588,842,736,379),
	(-149,-894,-298,705,-303,-406),
	(660,-935,-580,521,93,633),
	(-382,-282,-375,-841,-828,171),
	(-567,743,-100,43,144,122),
	(-281,-786,-749,-551,296,304),
	(11,-426,-792,212,857,-175),
	(594,143,-699,289,315,137),
	(341,596,-390,107,-631,-804),
	(-751,-636,-424,-854,193,651),
	(-145,384,749,675,-786,517),
	(224,-865,-323,96,-916,258),
	(-309,403,-388,826,35,-270),
	(-942,709,222,158,-699,-103),
	(-589,842,-997,29,-195,-210),
	(264,426,566,145,-217,623),
	(217,965,507,-601,-453,507),
	(-206,307,-982,4,64,-292),
	(676,-49,-38,-701,550,883),
	(5,-850,-438,659,745,-773),
	(933,238,-574,-570,91,-33),
	(-866,121,-928,358,459,-843),
	(-568,-631,-352,-580,-349,189),
	(-737,849,-963,-486,-662,970),
	(135,334,-967,-71,-365,-792),
	(789,21,-227,51,990,-275),
	(240,412,-886,230,591,256),
	(-609,472,-853,-754,959,661),
	(401,521,521,314,929,982),
	(-499,784,-208,71,-302,296),
	(-557,-948,-553,-526,-864,793),
	(270,-626,828,44,37,14),
	(-412,224,617,-593,502,699),
	(41,-908,81,562,-849,163),
	(165,917,761,-197,331,-341),
	(-687,314,799,755,-969,648),
	(-164,25,578,439,-334,-576),
	(213,535,874,-177,-551,24),
	(-689,291,-795,-225,-496,-125),
	(465,461,558,-118,-568,-909),
	(567,660,-810,46,-485,878),
	(-147,606,685,-690,-774,984),
	(568,-886,-43,854,-738,616),
	(-800,386,-614,585,764,-226),
	(-518,23,-225,-732,-79,440),
	(-173,-291,-689,636,642,-447),
	(-598,-16,227,410,496,211),
	(-474,-930,-656,-321,-420,36),
	(-435,165,-819,555,540,144),
	(-969,149,828,568,394,648),
	(65,-848,257,720,-625,-851),
	(981,899,275,635,465,-877),
	(80,290,792,760,-191,-321),
	(-605,-858,594,33,706,593),
	(585,-472,318,-35,354,-927),
	(-365,664,803,581,-965,-814),
	(-427,-238,-480,146,-55,-606),
	(879,-193,250,-890,336,117),
	(-226,-322,-286,-765,-836,-218),
	(-913,564,-667,-698,937,283),
	(872,-901,810,-623,-52,-709),
	(473,171,717,38,-429,-644),
	(225,824,-219,-475,-180,234),
	(-530,-797,-948,238,851,-623),
	(85,975,-363,529,598,28),
	(-799,166,-804,210,-769,851),
	(-687,-158,885,736,-381,-461),
	(447,592,928,-514,-515,-661),
	(-399,-777,-493,80,-544,-78),
	(-884,631,171,-825,-333,551),
	(191,268,-577,676,137,-33),
	(212,-853,709,798,583,-56),
	(-908,-172,-540,-84,-135,-56),
	(303,311,406,-360,-240,811),
	(798,-708,824,59,234,-57),
	(491,693,-74,585,-85,877),
	(509,-65,-936,329,-51,722),
	(-122,858,-52,467,-77,-609),
	(850,760,547,-495,-953,-952),
	(-460,-541,890,910,286,724),
	(-914,843,-579,-983,-387,-460),
	(989,-171,-877,-326,-899,458),
	(846,175,-915,540,-1000,-982),
	(-852,-920,-306,496,530,-18),
	(338,-991,160,85,-455,-661),
	(-186,-311,-460,-563,-231,-414),
	(-932,-302,959,597,793,748),
	(-366,-402,-788,-279,514,53),
	(-940,-956,447,-956,211,-285),
	(564,806,-911,-914,934,754),
	(575,-858,-277,15,409,-714),
	(848,462,100,-381,135,242),
	(330,718,-24,-190,860,-78),
	(479,458,941,108,-866,-653),
	(212,980,962,-962,115,841),
	(-827,-474,-206,881,323,765),
	(506,-45,-30,-293,524,-133),
	(832,-173,547,-852,-561,-842),
	(-397,-661,-708,819,-545,-228),
	(521,51,-489,852,36,-258),
	(227,-164,189,465,-987,-882),
	(-73,-997,641,-995,449,-615),
	(151,-995,-638,415,257,-400),
	(-663,-297,-748,537,-734,198),
	(-585,-401,-81,-782,-80,-105),
	(99,-21,238,-365,-704,-368),
	(45,416,849,-211,-371,-1),
	(-404,-443,795,-406,36,-933),
	(272,-363,981,-491,-380,77),
	(713,-342,-366,-849,643,911),
	(-748,671,-537,813,961,-200),
	(-194,-909,703,-662,-601,188),
	(281,500,724,286,267,197),
	(-832,847,-595,820,-316,637),
	(520,521,-54,261,923,-10),
	(4,-808,-682,-258,441,-695),
	(-793,-107,-969,905,798,446),
	(-108,-739,-590,69,-855,-365),
	(380,-623,-930,817,468,713),
	(759,-849,-236,433,-723,-931),
	(95,-320,-686,124,-69,-329),
	(-655,518,-210,-523,284,-866),
	(144,303,639,70,-171,269),
	(173,-333,947,-304,55,40),
	(274,878,-482,-888,-835,375),
	(-982,-854,-36,-218,-114,-230),
	(905,-979,488,-485,-479,114),
	(877,-157,553,-530,-47,-321),
	(350,664,-881,442,-220,-284),
	(434,-423,-365,878,-726,584),
	(535,909,-517,-447,-660,-141),
	(-966,191,50,353,182,-642),
	(-785,-634,123,-907,-162,511),
	(146,-850,-214,814,-704,25),
	(692,1,521,492,-637,274),
	(-662,-372,-313,597,983,-647),
	(-962,-526,68,-549,-819,231),
	(740,-890,-318,797,-666,948),
	(-190,-12,-468,-455,948,284),
	(16,478,-506,-888,628,-154),
	(272,630,-976,308,433,3),
	(-169,-391,-132,189,302,-388),
	(109,-784,474,-167,-265,-31),
	(-177,-532,283,464,421,-73),
	(650,635,592,-138,1,-387),
	(-932,703,-827,-492,-355,686),
	(586,-311,340,-618,645,-434),
	(-951,736,647,-127,-303,590),
	(188,444,903,718,-931,500),
	(-872,-642,-296,-571,337,241),
	(23,65,152,125,880,470),
	(512,823,-42,217,823,-263),
	(180,-831,-380,886,607,762),
	(722,443,-149,-216,-115,759),
	(-19,660,-36,901,923,231),
	(562,-322,-626,-968,194,-825),
	(204,-920,938,784,362,150),
	(-410,-266,-715,559,-672,124),
	(-198,446,-140,454,-461,-447),
	(83,-346,830,-493,-759,-382),
	(-881,601,581,234,-134,-925),
	(-494,914,-42,899,235,629),
	(-390,50,956,437,774,-700),
	(-514,514,44,-512,-576,-313),
	(63,-688,808,-534,-570,-399),
	(-726,572,-896,102,-294,-28),
	(-688,757,401,406,955,-511),
	(-283,423,-485,480,-767,908),
	(-541,952,-594,116,-854,451),
	(-273,-796,236,625,-626,257),
	(-407,-493,373,826,-309,297),
	(-750,955,-476,641,-809,713),
	(8,415,695,226,-111,2),
	(733,209,152,-920,401,995),
	(921,-103,-919,66,871,-947),
	(-907,89,-869,-214,851,-559),
	(-307,748,524,-755,314,-711),
	(188,897,-72,-763,482,103),
	(545,-821,-232,-596,-334,-754),
	(-217,-788,-820,388,-200,-662),
	(779,160,-723,-975,-142,-998),
	(-978,-519,-78,-981,842,904),
	(-504,-736,-295,21,-472,-482),
	(391,115,-705,574,652,-446),
	(813,-988,865,830,-263,487),
	(194,80,774,-493,-761,-872),
	(-415,-284,-803,7,-810,670),
	(-484,-4,881,-872,55,-852),
	(-379,822,-266,324,-48,748),
	(-304,-278,406,-60,959,-89),
	(404,756,577,-643,-332,658),
	(291,460,125,491,-312,83),
	(311,-734,-141,582,282,-557),
	(-450,-661,-981,710,-177,794),
	(328,264,-787,971,-743,-407),
	(-622,518,993,-241,-738,229),
	(273,-826,-254,-917,-710,-111),
	(809,770,96,368,-818,725),
	(-488,773,502,-342,534,745),
	(-28,-414,236,-315,-484,363),
	(179,-466,-566,713,-683,56),
	(560,-240,-597,619,916,-940),
	(893,473,872,-868,-642,-461),
	(799,489,383,-321,-776,-833),
	(980,490,-508,764,-512,-426),
	(917,961,-16,-675,440,559),
	(-812,212,784,-987,-132,554),
	(-886,454,747,806,190,231),
	(910,341,21,-66,708,725),
	(29,929,-831,-494,-303,389),
	(-103,492,-271,-174,-515,529),
	(-292,119,419,788,247,-951),
	(483,543,-347,-673,664,-549),
	(-926,-871,-437,337,162,-877),
	(299,472,-771,5,-88,-643),
	(-103,525,-725,-998,264,22),
	(-505,708,550,-545,823,347),
	(-738,931,59,147,-156,-259),
	(456,968,-162,889,132,-911),
	(535,120,968,-517,-864,-541),
	(24,-395,-593,-766,-565,-332),
	(834,611,825,-576,280,629),
	(211,-548,140,-278,-592,929),
	(-999,-240,-63,-78,793,573),
	(-573,160,450,987,529,322),
	(63,353,315,-187,-461,577),
	(189,-950,-247,656,289,241),
	(209,-297,397,664,-805,484),
	(-655,452,435,-556,917,874),
	(253,-756,262,-888,-778,-214),
	(793,-451,323,-251,-401,-458),
	(-396,619,-651,-287,-668,-781),
	(698,720,-349,742,-807,546),
	(738,280,680,279,-540,858),
	(-789,387,530,-36,-551,-491),
	(162,579,-427,-272,228,710),
	(689,356,917,-580,729,217),
	(-115,-638,866,424,-82,-194),
	(411,-338,-917,172,227,-29),
	(-612,63,630,-976,-64,-204),
	(-200,911,583,-571,682,-579),
	(91,298,396,-183,788,-955),
	(141,-873,-277,149,-396,916),
	(321,958,-136,573,541,-777),
	(797,-909,-469,-877,988,-653),
	(784,-198,129,883,-203,399),
	(-68,-810,223,-423,-467,-512),
	(531,-445,-603,-997,-841,641),
	(-274,-242,174,261,-636,-158),
	(-574,494,-796,-798,-798,99),
	(95,-82,-613,-954,-753,986),
	(-883,-448,-864,-401,938,-392),
	(913,930,-542,-988,310,410),
	(506,-99,43,512,790,-222),
	(724,31,49,-950,260,-134),
	(-287,-947,-234,-700,56,588),
	(-33,782,-144,948,105,-791),
	(548,-546,-652,-293,881,-520),
	(691,-91,76,991,-631,742),
	(-520,-429,-244,-296,724,-48),
	(778,646,377,50,-188,56),
	(-895,-507,-898,-165,-674,652),
	(654,584,-634,177,-349,-620),
	(114,-980,355,62,182,975),
	(516,9,-442,-298,274,-579),
	(-238,262,-431,-896,506,-850),
	(47,748,846,821,-537,-293),
	(839,726,593,285,-297,840),
	(634,-486,468,-304,-887,-567),
	(-864,914,296,-124,335,233),
	(88,-253,-523,-956,-554,803),
	(-587,417,281,-62,-409,-363),
	(-136,-39,-292,-768,-264,876),
	(-127,506,-891,-331,-744,-430),
	(778,584,-750,-129,-479,-94),
	(-876,-771,-987,-757,180,-641),
	(-777,-694,411,-87,329,190),
	(-347,-999,-882,158,-754,232),
	(-105,918,188,237,-110,-591),
	(-209,703,-838,77,838,909),
	(-995,-339,-762,750,860,472),
	(185,271,-289,173,811,-300),
	(2,65,-656,-22,36,-139),
	(765,-210,883,974,961,-905),
	(-212,295,-615,-840,77,474),
	(211,-910,-440,703,-11,859),
	(-559,-4,-196,841,-277,969),
	(-73,-159,-887,126,978,-371),
	(-569,633,-423,-33,512,-393),
	(503,143,-383,-109,-649,-998),
	(-663,339,-317,-523,-2,596),
	(690,-380,570,378,-652,132),
	(72,-744,-930,399,-525,935),
	(865,-983,115,37,995,826),
	(594,-621,-872,443,188,-241),
	(-1000,291,754,234,-435,-869),
	(-868,901,654,-907,59,181),
	(-868,-793,-431,596,-446,-564),
	(900,-944,-680,-796,902,-366),
	(331,430,943,853,-851,-942),
	(315,-538,-354,-909,139,721),
	(170,-884,-225,-818,-808,-657),
	(-279,-34,-533,-871,-972,552),
	(691,-986,-800,-950,654,-747),
	(603,988,899,841,-630,591),
	(876,-949,809,562,602,-536),
	(-693,363,-189,495,738,-1000),
	(-383,431,-633,297,665,959),
	(-740,686,-207,-803,188,-520),
	(-820,226,31,-339,10,121),
	(-312,-844,624,-516,483,621),
	(-822,-529,69,-278,800,328),
	(834,-82,-759,420,811,-264),
	(-960,-240,-921,561,173,46),
	(-324,909,-790,-814,-2,-785),
	(976,334,-290,-891,704,-581),
	(150,-798,689,-823,237,-639),
	(-551,-320,876,-502,-622,-628),
	(-136,845,904,595,-702,-261),
	(-857,-377,-522,-101,-943,-805),
	(-682,-787,-888,-459,-752,-985),
	(-571,-81,623,-133,447,643),
	(-375,-158,72,-387,-324,-696),
	(-660,-650,340,188,569,526),
	(727,-218,16,-7,-595,-988),
	(-966,-684,802,-783,-272,-194),
	(115,-566,-888,47,712,180),
	(-237,-69,45,-272,981,-812),
	(48,897,439,417,50,325),
	(348,616,180,254,104,-784),
	(-730,811,-548,612,-736,790),
	(138,-810,123,930,65,865),
	(-768,-299,-49,-895,-692,-418),
	(487,-531,802,-159,-12,634),
	(808,-179,552,-73,470,717),
	(720,-644,886,-141,625,144),
	(-485,-505,-347,-244,-916,66),
	(600,-565,995,-5,324,227),
	(-771,-35,904,-482,753,-303),
	(-701,65,426,-763,-504,-479),
	(409,733,-823,475,64,718),
	(865,975,368,893,-413,-433),
	(812,-597,-970,819,813,624),
	(193,-642,-381,-560,545,398),
	(711,28,-316,771,717,-865),
	(-509,462,809,-136,786,635),
	(618,-49,484,169,635,547),
	(-747,685,-882,-496,-332,82),
	(-501,-851,870,563,290,570),
	(-279,-829,-509,397,457,816),
	(-508,80,850,-188,483,-326),
	(860,-100,360,119,-205,787),
	(-870,21,-39,-827,-185,932),
	(826,284,-136,-866,-330,-97),
	(-944,-82,745,899,-97,365),
	(929,262,564,632,-115,632),
	(244,-276,713,330,-897,-214),
	(-890,-109,664,876,-974,-907),
	(716,249,816,489,723,141),
	(-96,-560,-272,45,-70,645),
	(762,-503,414,-828,-254,-646),
	(909,-13,903,-422,-344,-10),
	(658,-486,743,545,50,674),
	(-241,507,-367,18,-48,-241),
	(886,-268,884,-762,120,-486),
	(-412,-528,879,-647,223,-393),
	(851,810,234,937,-726,797),
	(-999,942,839,-134,-996,-189),
	(100,979,-527,-521,378,800),
	(544,-844,-832,-530,-77,-641),
	(43,889,31,442,-934,-503),
	(-330,-370,-309,-439,173,547),
	(169,945,62,-753,-542,-597),
	(208,751,-372,-647,-520,70),
	(765,-840,907,-257,379,918),
	(334,-135,-689,730,-427,618),
	(137,-508,66,-695,78,169),
	(-962,-123,400,-417,151,969),
	(328,689,666,427,-555,-642),
	(-907,343,605,-341,-647,582),
	(-667,-363,-571,818,-265,-399),
	(525,-938,904,898,725,692),
	(-176,-802,-858,-9,780,275),
	(580,170,-740,287,691,-97),
	(365,557,-375,361,-288,859),
	(193,737,842,-808,520,282),
	(-871,65,-799,836,179,-720),
	(958,-144,744,-789,797,-48),
	(122,582,662,912,68,757),
	(595,241,-801,513,388,186),
	(-103,-677,-259,-731,-281,-857),
	(921,319,-696,683,-88,-997),
	(775,200,78,858,648,768),
	(316,821,-763,68,-290,-741),
	(564,664,691,504,760,787),
	(694,-119,973,-385,309,-760),
	(777,-947,-57,990,74,19),
	(971,626,-496,-781,-602,-239),
	(-651,433,11,-339,939,294),
	(-965,-728,560,569,-708,-247)]
