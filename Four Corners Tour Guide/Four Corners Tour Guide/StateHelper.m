//
// The MIT License (MIT)
//
// Copyright (c) 2015 Stuart Farmer
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#import "StateHelper.h"

@implementation StateHelper

+ (MKPolygon *)MKPolygonForUtah {
    CLLocationCoordinate2D points[42];
    
    points[0] = CLLocationCoordinate2DMake(41.995391366576,-114.03907230259495);
    points[1] = CLLocationCoordinate2DMake(42.00114636658136,-112.98957530161753);
    points[2] = CLLocationCoordinate2DMake(41.999054366579415,-112.14711630083293);
    points[3] = CLLocationCoordinate2DMake(42.00230036658243,-112.10051430078953);
    points[4] = CLLocationCoordinate2DMake(42.000171366580446,-111.49458630022521);
    points[5] = CLLocationCoordinate2DMake(41.99620336657675,-111.04869729980994);
    points[6] = CLLocationCoordinate2DMake(41.57859236618782,-111.05106829981216);
    points[7] = CLLocationCoordinate2DMake(41.25842536588965,-111.05165129981269);
    points[8] = CLLocationCoordinate2DMake(40.99658336564579,-111.0510222998121);
    points[9] = CLLocationCoordinate2DMake(40.997892365647004,-110.06318529889211);
    points[10] = CLLocationCoordinate2DMake(40.997599365646735,-110.00216529883528);
    points[11] = CLLocationCoordinate2DMake(40.998433365647514,-109.04831429794694);
    points[12] = CLLocationCoordinate2DMake(40.66529136533725,-109.04615529794494);
    points[13] = CLLocationCoordinate2DMake(40.2105113649137,-109.05126329794969);
    points[14] = CLLocationCoordinate2DMake(39.65738236439856,-109.05255129795088);
    points[15] = CLLocationCoordinate2DMake(39.51817036426891,-109.0535282979518);
    points[16] = CLLocationCoordinate2DMake(39.360966364122504,-109.05141729794983);
    points[17] = CLLocationCoordinate2DMake(38.49465136331568,-109.05394829795219);
    points[18] = CLLocationCoordinate2DMake(38.2449203630831,-109.05586129795397);
    points[19] = CLLocationCoordinate2DMake(38.2449203630831,-109.05586129795397);
    points[20] = CLLocationCoordinate2DMake(38.2449203630831,-109.05586129795397);
    points[21] = CLLocationCoordinate2DMake(37.88742036275015,-109.04320629794219);
    points[22] = CLLocationCoordinate2DMake(37.63082036251117,-109.04560229794441);
    points[23] = CLLocationCoordinate2DMake(36.99664136192055,-109.0484802979471);
    points[24] = CLLocationCoordinate2DMake(36.99206736191629,-109.99707629883055);
    points[25] = CLLocationCoordinate2DMake(36.991746361915986,-110.45223629925445);
    points[26] = CLLocationCoordinate2DMake(37.003926361927334,-110.48408929928411);
    points[27] = CLLocationCoordinate2DMake(37.002488361926,-110.7400632995225);
    points[28] = CLLocationCoordinate2DMake(37.001709361925265,-111.3561643000963);
    points[29] = CLLocationCoordinate2DMake(36.995492361919474,-112.23725830091688);
    points[30] = CLLocationCoordinate2DMake(36.99799436192181,-112.54252130120118);
    points[31] = CLLocationCoordinate2DMake(36.99622736192016,-112.89998330153409);
    points[32] = CLLocationCoordinate2DMake(36.99653836192046,-114.04393930259948);
    points[33] = CLLocationCoordinate2DMake(37.59847836248105,-114.04726030260258);
    points[34] = CLLocationCoordinate2DMake(38.137652362983204,-114.04727330260259);
    points[35] = CLLocationCoordinate2DMake(38.571095363386874,-114.04509030260056);
    points[36] = CLLocationCoordinate2DMake(38.678996363487364,-114.04426730259979);
    points[37] = CLLocationCoordinate2DMake(39.538685364288014,-114.0401053025959);
    points[38] = CLLocationCoordinate2DMake(39.90877836463269,-114.03984430259567);
    points[39] = CLLocationCoordinate2DMake(40.111046364821064,-114.03810830259405);
    points[40] = CLLocationCoordinate2DMake(40.997686365646814,-114.03815130259409);
    points[41] = CLLocationCoordinate2DMake(41.995391366576,-114.03907230259495);
    
    MKPolygon *utah = [MKPolygon polygonWithCoordinates:points count:42];
    return utah;
}

+ (MKPolygon *)MKPolygonForColorado {
    CLLocationCoordinate2D points[56];
    
    points[0] = CLLocationCoordinate2DMake(36.98899436191343,-102.03720729141735);
    points[1] = CLLocationCoordinate2DMake(36.9985233619223,-102.99770929231188);
    points[2] = CLLocationCoordinate2DMake(36.99976036192345,-103.07786629238653);
    points[3] = CLLocationCoordinate2DMake(36.994469361918526,-103.99363529323941);
    points[4] = CLLocationCoordinate2DMake(36.99320736191736,-105.14617229431279);
    points[5] = CLLocationCoordinate2DMake(36.99260436191679,-105.21309129437512);
    points[6] = CLLocationCoordinate2DMake(36.994560361918616,-105.71346029484111);
    points[7] = CLLocationCoordinate2DMake(36.9922893619165,-105.99200029510052);
    points[8] = CLLocationCoordinate2DMake(36.991504361915766,-106.47217729554772);
    points[9] = CLLocationCoordinate2DMake(36.989501361913895,-106.86124929591008);
    points[10] = CLLocationCoordinate2DMake(36.99908336192283,-106.8903702959372);
    points[11] = CLLocationCoordinate2DMake(36.997525361921376,-107.4108202964219);
    points[12] = CLLocationCoordinate2DMake(36.99877636192254,-107.47246029647931);
    points[13] = CLLocationCoordinate2DMake(36.999471361923185,-108.37247329731751);
    points[14] = CLLocationCoordinate2DMake(36.99664136192055,-109.0484802979471);
    points[15] = CLLocationCoordinate2DMake(37.63082036251117,-109.04560229794441);
    points[16] = CLLocationCoordinate2DMake(37.88742036275015,-109.04320629794219);
    points[17] = CLLocationCoordinate2DMake(38.15293336299743,-109.04346429794242);
    points[18] = CLLocationCoordinate2DMake(38.2449203630831,-109.05586129795397);
    points[19] = CLLocationCoordinate2DMake(38.49465136331568,-109.05394829795219);
    points[20] = CLLocationCoordinate2DMake(39.360966364122504,-109.05141729794983);
    points[21] = CLLocationCoordinate2DMake(39.51817036426891,-109.0535282979518);
    points[22] = CLLocationCoordinate2DMake(39.65738236439856,-109.05255129795088);
    points[23] = CLLocationCoordinate2DMake(40.2105113649137,-109.05126329794969);
    points[24] = CLLocationCoordinate2DMake(40.66529136533725,-109.04615529794494);
    points[25] = CLLocationCoordinate2DMake(40.998433365647514,-109.04831429794694);
    points[26] = CLLocationCoordinate2DMake(41.00337536565211,-107.91867129689489);
    points[27] = CLLocationCoordinate2DMake(41.00013336564909,-107.30405129632247);
    points[28] = CLLocationCoordinate2DMake(40.99845736564753,-106.86543829591398);
    points[29] = CLLocationCoordinate2DMake(41.001289365650166,-106.3291252954145);
    points[30] = CLLocationCoordinate2DMake(41.00008536564905,-106.20347129529748);
    points[31] = CLLocationCoordinate2DMake(40.99634936564557,-105.2787972944363);
    points[32] = CLLocationCoordinate2DMake(40.99428936564365,-104.93449329411565);
    points[33] = CLLocationCoordinate2DMake(41.003211365651964,-104.0517052932935);
    points[34] = CLLocationCoordinate2DMake(40.99964836564864,-103.57231629284702);
    points[35] = CLLocationCoordinate2DMake(41.00031636564926,-103.38295629267067);
    points[36] = CLLocationCoordinate2DMake(40.99812436564722,-102.65227129199016);
    points[37] = CLLocationCoordinate2DMake(41.00021436564917,-102.62125729196129);
    points[38] = CLLocationCoordinate2DMake(40.99807136564717,-102.04773929142715);
    points[39] = CLLocationCoordinate2DMake(40.74313036540974,-102.04699229142645);
    points[40] = CLLocationCoordinate2DMake(40.69731936536708,-102.04603129142556);
    points[41] = CLLocationCoordinate2DMake(40.43107736511912,-102.04762029142704);
    points[42] = CLLocationCoordinate2DMake(40.34264436503676,-102.04754529142697);
    points[43] = CLLocationCoordinate2DMake(39.99891836471664,-102.05153529143068);
    points[44] = CLLocationCoordinate2DMake(39.56869336431596,-102.04944229142873);
    points[45] = CLLocationCoordinate2DMake(39.562803364310476,-102.04880129142813);
    points[46] = CLLocationCoordinate2DMake(39.12675336390437,-102.04787429142728);
    points[47] = CLLocationCoordinate2DMake(39.03700336382079,-102.0489722914283);
    points[48] = CLLocationCoordinate2DMake(38.69255036349999,-102.04756829142698);
    points[49] = CLLocationCoordinate2DMake(38.61549936342823,-102.047584291427);
    points[50] = CLLocationCoordinate2DMake(38.26334336310026,-102.0455492914251);
    points[51] = CLLocationCoordinate2DMake(38.25382236309139,-102.04606129142559);
    points[52] = CLLocationCoordinate2DMake(37.734398362607635,-102.04397629142365);
    points[53] = CLLocationCoordinate2DMake(37.641474362521095,-102.0444562914241);
    points[54] = CLLocationCoordinate2DMake(37.38627936228343,-102.04201029142182);
    points[55] = CLLocationCoordinate2DMake(36.98899436191343,-102.03720729141735);
    
    MKPolygon *colorado = [MKPolygon polygonWithCoordinates:points count:55];
    return colorado;
}

+ (MKPolygon *)MKPolygonForArizona {
    CLLocationCoordinate2D points[153];
    
    points[0] = CLLocationCoordinate2DMake(34.99891436006002,-114.62106830313698);
    points[1] = CLLocationCoordinate2DMake(35.041863360100024,-114.63378030314881);
    points[2] = CLLocationCoordinate2DMake(35.07605836013187,-114.59563230311329);
    points[3] = CLLocationCoordinate2DMake(35.11865536017154,-114.6359093031508);
    points[4] = CLLocationCoordinate2DMake(35.13390636018575,-114.62644130314197);
    points[5] = CLLocationCoordinate2DMake(35.132560360184485,-114.58261630310116);
    points[6] = CLLocationCoordinate2DMake(35.14006736019148,-114.57225530309151);
    points[7] = CLLocationCoordinate2DMake(35.17434636022341,-114.56104030308107);
    points[8] = CLLocationCoordinate2DMake(35.22018336026609,-114.5595833030797);
    points[9] = CLLocationCoordinate2DMake(35.304768360344866,-114.58789030310608);
    points[10] = CLLocationCoordinate2DMake(35.358378360394795,-114.58958430310764);
    points[11] = CLLocationCoordinate2DMake(35.450760360480835,-114.64539630315963);
    points[12] = CLLocationCoordinate2DMake(35.515754360541365,-114.6722153031846);
    points[13] = CLLocationCoordinate2DMake(35.54663736057013,-114.64979230316374);
    points[14] = CLLocationCoordinate2DMake(35.5848333606057,-114.65313430316684);
    points[15] = CLLocationCoordinate2DMake(35.611348360630394,-114.63986630315449);
    points[16] = CLLocationCoordinate2DMake(35.64658436066321,-114.65406630316771);
    points[17] = CLLocationCoordinate2DMake(35.65639936067235,-114.66848630318114);
    points[18] = CLLocationCoordinate2DMake(35.69309936070653,-114.66509130317797);
    points[19] = CLLocationCoordinate2DMake(35.73259536074332,-114.68882030320007);
    points[20] = CLLocationCoordinate2DMake(35.76470336077322,-114.68273930319441);
    points[21] = CLLocationCoordinate2DMake(35.84744236085027,-114.68986730320105);
    points[22] = CLLocationCoordinate2DMake(35.870960360872175,-114.66246230317552);
    points[23] = CLLocationCoordinate2DMake(35.88047336088104,-114.66160030317472);
    points[24] = CLLocationCoordinate2DMake(35.91161236091004,-114.69927630320981);
    points[25] = CLLocationCoordinate2DMake(35.987648360980856,-114.7362123032442);
    points[26] = CLLocationCoordinate2DMake(36.036758361026585,-114.71767330322695);
    points[27] = CLLocationCoordinate2DMake(36.058753361047074,-114.72896630323746);
    points[28] = CLLocationCoordinate2DMake(36.08596236107242,-114.7281503032367);
    points[29] = CLLocationCoordinate2DMake(36.10518136109032,-114.71276130322238);
    points[30] = CLLocationCoordinate2DMake(36.141966361124574,-114.62161030313749);
    points[31] = CLLocationCoordinate2DMake(36.13833536112119,-114.59893530311636);
    points[32] = CLLocationCoordinate2DMake(36.15509036113679,-114.5305733030527);
    points[33] = CLLocationCoordinate2DMake(36.1247113611085,-114.46661330299312);
    points[34] = CLLocationCoordinate2DMake(36.1210533611051,-114.44394530297203);
    points[35] = CLLocationCoordinate2DMake(36.15099136113298,-114.38080330291321);
    points[36] = CLLocationCoordinate2DMake(36.137480361120396,-114.34423430287916);
    points[37] = CLLocationCoordinate2DMake(36.11143836109614,-114.31609530285294);
    points[38] = CLLocationCoordinate2DMake(36.08710836107348,-114.30385730284155);
    points[39] = CLLocationCoordinate2DMake(36.06223336105032,-114.30758730284502);
    points[40] = CLLocationCoordinate2DMake(36.01833136100943,-114.233472302776);
    points[41] = CLLocationCoordinate2DMake(36.017255361008424,-114.20676930275113);
    points[42] = CLLocationCoordinate2DMake(36.04173036103122,-114.12902330267872);
    points[43] = CLLocationCoordinate2DMake(36.12109036110513,-114.10777530265894);
    points[44] = CLLocationCoordinate2DMake(36.19397836117301,-114.04510530260056);
    points[45] = CLLocationCoordinate2DMake(36.21602336119354,-114.03739230259339);
    points[46] = CLLocationCoordinate2DMake(36.84184936177639,-114.04371630259928);
    points[47] = CLLocationCoordinate2DMake(36.99653836192046,-114.04393930259948);
    points[48] = CLLocationCoordinate2DMake(36.99622736192016,-112.89998330153409);
    points[49] = CLLocationCoordinate2DMake(36.99799436192181,-112.54252130120118);
    points[50] = CLLocationCoordinate2DMake(36.995492361919474,-112.23725830091688);
    points[51] = CLLocationCoordinate2DMake(37.001709361925265,-111.3561643000963);
    points[52] = CLLocationCoordinate2DMake(37.002488361926,-110.7400632995225);
    points[53] = CLLocationCoordinate2DMake(37.003926361927334,-110.48408929928411);
    points[54] = CLLocationCoordinate2DMake(36.991746361915986,-110.45223629925445);
    points[55] = CLLocationCoordinate2DMake(36.99206736191629,-109.99707629883055);
    points[56] = CLLocationCoordinate2DMake(36.99664136192055,-109.0484802979471);
    points[57] = CLLocationCoordinate2DMake(35.99666436098925,-109.0478462979465);
    points[58] = CLLocationCoordinate2DMake(34.95464636001879,-109.04664129794538);
    points[59] = CLLocationCoordinate2DMake(34.59178035968085,-109.04865229794726);
    points[60] = CLLocationCoordinate2DMake(33.7833023589279,-109.05034929794884);
    points[61] = CLLocationCoordinate2DMake(33.20516435838946,-109.050526297949);
    points[62] = CLLocationCoordinate2DMake(32.779550357993074,-109.05134629794976);
    points[63] = CLLocationCoordinate2DMake(32.44204435767875,-109.04949529794804);
    points[64] = CLLocationCoordinate2DMake(31.34345335665561,-109.04561529794442);
    points[65] = CLLocationCoordinate2DMake(31.33766035665021,-110.45257829925477);
    points[66] = CLLocationCoordinate2DMake(31.335634356648328,-111.07196429983162);
    points[67] = CLLocationCoordinate2DMake(31.431531356737636,-111.36952130010873);
    points[68] = CLLocationCoordinate2DMake(32.04362135730769,-113.32911130193375);
    points[69] = CLLocationCoordinate2DMake(32.487169357720774,-114.82176130332388);
    points[70] = CLLocationCoordinate2DMake(32.6160443578408,-114.80939430331236);
    points[71] = CLLocationCoordinate2DMake(32.720857357938414,-114.72204930323102);
    points[72] = CLLocationCoordinate2DMake(32.7350133579516,-114.71269530322232);
    points[73] = CLLocationCoordinate2DMake(32.74142535795757,-114.69404030320493);
    points[74] = CLLocationCoordinate2DMake(32.72628535794347,-114.60394230312102);
    points[75] = CLLocationCoordinate2DMake(32.73588635795241,-114.60352230312063);
    points[76] = CLLocationCoordinate2DMake(32.73743935795386,-114.57195930309123);
    points[77] = CLLocationCoordinate2DMake(32.74882935796447,-114.57221030309148);
    points[78] = CLLocationCoordinate2DMake(32.74893635796457,-114.56075130308079);
    points[79] = CLLocationCoordinate2DMake(32.760753357975574,-114.56158230308156);
    points[80] = CLLocationCoordinate2DMake(32.76074935797557,-114.54300430306427);
    points[81] = CLLocationCoordinate2DMake(32.77123235798533,-114.54318730306444);
    points[82] = CLLocationCoordinate2DMake(32.7714113579855,-114.53009530305225);
    points[83] = CLLocationCoordinate2DMake(32.788047358000995,-114.53507730305688);
    points[84] = CLLocationCoordinate2DMake(32.80991235802135,-114.52621930304863);
    points[85] = CLLocationCoordinate2DMake(32.84542235805443,-114.4614363029883);
    points[86] = CLLocationCoordinate2DMake(32.9359083581387,-114.47644430300228);
    points[87] = CLLocationCoordinate2DMake(32.9777893581777,-114.46838730299478);
    points[88] = CLLocationCoordinate2DMake(33.02770735822419,-114.52062730304343);
    points[89] = CLLocationCoordinate2DMake(33.03678235823264,-114.55908930307925);
    points[90] = CLLocationCoordinate2DMake(33.027002358223534,-114.6099253031266);
    points[91] = CLLocationCoordinate2DMake(33.03356735822965,-114.63396730314898);
    points[92] = CLLocationCoordinate2DMake(33.044412358239754,-114.6451593031594);
    points[93] = CLLocationCoordinate2DMake(33.038922358234636,-114.66395130317692);
    points[94] = CLLocationCoordinate2DMake(33.09538235828722,-114.71135530322107);
    points[95] = CLLocationCoordinate2DMake(33.122375358312354,-114.70946330321931);
    points[96] = CLLocationCoordinate2DMake(33.16725035835415,-114.6781203031901);
    points[97] = CLLocationCoordinate2DMake(33.224595358407555,-114.6800513031919);
    points[98] = CLLocationCoordinate2DMake(33.23925835842121,-114.68771130319904);
    points[99] = CLLocationCoordinate2DMake(33.268016358447994,-114.67769330318971);
    points[100] = CLLocationCoordinate2DMake(33.3057083584831,-114.73542730324348);
    points[101] = CLLocationCoordinate2DMake(33.352418358526606,-114.70360330321384);
    points[102] = CLLocationCoordinate2DMake(33.41105935858121,-114.7249363032337);
    points[103] = CLLocationCoordinate2DMake(33.419116358588724,-114.64509230315934);
    points[104] = CLLocationCoordinate2DMake(33.439425358607636,-114.63057330314584);
    points[105] = CLLocationCoordinate2DMake(33.468599358634805,-114.621089303137);
    points[106] = CLLocationCoordinate2DMake(33.48612735865113,-114.59808630311556);
    points[107] = CLLocationCoordinate2DMake(33.50944535867285,-114.5870613031053);
    points[108] = CLLocationCoordinate2DMake(33.56007335872,-114.52942030305162);
    points[109] = CLLocationCoordinate2DMake(33.58050735873903,-114.5402473030617);
    points[110] = CLLocationCoordinate2DMake(33.622136358777794,-114.52717030304953);
    points[111] = CLLocationCoordinate2DMake(33.66550435881818,-114.52526330304775);
    points[112] = CLLocationCoordinate2DMake(33.682735358834236,-114.53643330305815);
    points[113] = CLLocationCoordinate2DMake(33.70836935885811,-114.49567630302019);
    points[114] = CLLocationCoordinate2DMake(33.74320035889055,-114.5102873030338);
    points[115] = CLLocationCoordinate2DMake(33.7717143589171,-114.50455830302846);
    points[116] = CLLocationCoordinate2DMake(33.82603135896769,-114.5211223030439);
    points[117] = CLLocationCoordinate2DMake(33.84196535898253,-114.51172230303513);
    points[118] = CLLocationCoordinate2DMake(33.862926359002046,-114.52096230304375);
    points[119] = CLLocationCoordinate2DMake(33.925036359059895,-114.49818830302253);
    points[120] = CLLocationCoordinate2DMake(33.95241335908539,-114.5256323030481);
    points[121] = CLLocationCoordinate2DMake(33.96506335909717,-114.51820830304118);
    points[122] = CLLocationCoordinate2DMake(34.02984435915751,-114.42898030295808);
    points[123] = CLLocationCoordinate2DMake(34.07833235920266,-114.42402930295347);
    points[124] = CLLocationCoordinate2DMake(34.10265435922531,-114.41016630294055);
    points[125] = CLLocationCoordinate2DMake(34.1412973592613,-114.32279930285918);
    points[126] = CLLocationCoordinate2DMake(34.17123135928918,-114.28536830282434);
    points[127] = CLLocationCoordinate2DMake(34.186222359303144,-114.23577630277813);
    points[128] = CLLocationCoordinate2DMake(34.266979359378354,-114.14991230269818);
    points[129] = CLLocationCoordinate2DMake(34.272621359383606,-114.12523030267519);
    points[130] = CLLocationCoordinate2DMake(34.31454835942266,-114.13412730268348);
    points[131] = CLLocationCoordinate2DMake(34.33644735944305,-114.15341530270143);
    points[132] = CLLocationCoordinate2DMake(34.36520635946984,-114.18208030272814);
    points[133] = CLLocationCoordinate2DMake(34.40548835950735,-114.2578423027987);
    points[134] = CLLocationCoordinate2DMake(34.41206935951348,-114.2833943028225);
    points[135] = CLLocationCoordinate2DMake(34.43575435953554,-114.30286530284062);
    points[136] = CLLocationCoordinate2DMake(34.454873359553346,-114.33263630286835);
    points[137] = CLLocationCoordinate2DMake(34.45967935955782,-114.3765073029092);
    points[138] = CLLocationCoordinate2DMake(34.47708535957403,-114.38386230291606);
    points[139] = CLLocationCoordinate2DMake(34.536563359629426,-114.3768283029095);
    points[140] = CLLocationCoordinate2DMake(34.58372335967334,-114.40974230294016);
    points[141] = CLLocationCoordinate2DMake(34.59896335968754,-114.43430230296303);
    points[142] = CLLocationCoordinate2DMake(34.61089535969865,-114.42227030295183);
    points[143] = CLLocationCoordinate2DMake(34.70987335979083,-114.46563730299222);
    points[144] = CLLocationCoordinate2DMake(34.74475735982332,-114.49780430302218);
    points[145] = CLLocationCoordinate2DMake(34.74891135982719,-114.52555330304801);
    points[146] = CLLocationCoordinate2DMake(34.759958359837476,-114.54204030306337);
    points[147] = CLLocationCoordinate2DMake(34.83186035990444,-114.5702173030896);
    points[148] = CLLocationCoordinate2DMake(34.875533359945116,-114.62726330314274);
    points[149] = CLLocationCoordinate2DMake(34.919501359986064,-114.63047530314574);
    points[150] = CLLocationCoordinate2DMake(34.943609360008516,-114.62100730313692);
    points[151] = CLLocationCoordinate2DMake(34.997651360058846,-114.63227630314742);
    points[152] = CLLocationCoordinate2DMake(34.99891436006002,-114.62106830313698);
    
    MKPolygon *arizona = [MKPolygon polygonWithCoordinates:points count:153];
    return arizona;
}

+ (MKPolygon *)MKPolygonForNewMexico {
    CLLocationCoordinate2D points[58];
 
    points[0] = CLLocationCoordinate2DMake(36.99664136192055,-109.0484802979471);
    points[1] = CLLocationCoordinate2DMake(36.999471361923185,-108.37247329731751);
    points[2] = CLLocationCoordinate2DMake(36.99877636192254,-107.47246029647931);
    points[3] = CLLocationCoordinate2DMake(36.997525361921376,-107.4108202964219);
    points[4] = CLLocationCoordinate2DMake(36.99908336192283,-106.8903702959372);
    points[5] = CLLocationCoordinate2DMake(36.989501361913895,-106.86124929591008);
    points[6] = CLLocationCoordinate2DMake(36.991504361915766,-106.47217729554772);
    points[7] = CLLocationCoordinate2DMake(36.9922893619165,-105.99200029510052);
    points[8] = CLLocationCoordinate2DMake(36.994560361918616,-105.71346029484111);
    points[9] = CLLocationCoordinate2DMake(36.99260436191679,-105.21309129437512);
    points[10] = CLLocationCoordinate2DMake(36.99320736191736,-105.14617229431279);
    points[11] = CLLocationCoordinate2DMake(36.994469361918526,-103.99363529323941);
    points[12] = CLLocationCoordinate2DMake(36.99976036192345,-103.07786629238653);
    points[13] = CLLocationCoordinate2DMake(36.9985233619223,-102.99770929231188);
    points[14] = CLLocationCoordinate2DMake(36.49237036145091,-102.9974012923116);
    points[15] = CLLocationCoordinate2DMake(36.49159136145019,-103.02728629233943);
    points[16] = CLLocationCoordinate2DMake(36.05606136104457,-103.0240482923364);
    points[17] = CLLocationCoordinate2DMake(35.742327360752384,-103.02261229233507);
    points[18] = CLLocationCoordinate2DMake(35.62364836064185,-103.02229429233478);
    points[19] = CLLocationCoordinate2DMake(35.17726536022612,-103.02615129233837);
    points[20] = CLLocationCoordinate2DMake(34.96478036002823,-103.02525129233753);
    points[21] = CLLocationCoordinate2DMake(34.745332359823855,-103.02265729233511);
    points[22] = CLLocationCoordinate2DMake(34.30782035941639,-103.02964629234162);
    points[23] = CLLocationCoordinate2DMake(33.82618135896783,-103.03325829234498);
    points[24] = CLLocationCoordinate2DMake(33.565843358725374,-103.03873629235008);
    points[25] = CLLocationCoordinate2DMake(33.37783135855027,-103.04310129235415);
    points[26] = CLLocationCoordinate2DMake(32.953639358155215,-103.04933129235995);
    points[27] = CLLocationCoordinate2DMake(32.5155453577472,-103.0600182923699);
    points[28] = CLLocationCoordinate2DMake(32.08511635734634,-103.05564029236584);
    points[29] = CLLocationCoordinate2DMake(32.00202235726895,-103.05841329236841);
    points[30] = CLLocationCoordinate2DMake(32.004281357271054,-103.33254929262372);
    points[31] = CLLocationCoordinate2DMake(32.006229357272865,-103.72944429299336);
    points[32] = CLLocationCoordinate2DMake(32.006015357272666,-103.981377293228);
    points[33] = CLLocationCoordinate2DMake(32.00740335727396,-104.0192972932633);
    points[34] = CLLocationCoordinate2DMake(32.00326535727011,-104.85106829403796);
    points[35] = CLLocationCoordinate2DMake(32.00438235727115,-104.92230529410429);
    points[36] = CLLocationCoordinate2DMake(32.00165835726861,-106.003240295111);
    points[37] = CLLocationCoordinate2DMake(32.00074735726776,-106.37838729546039);
    points[38] = CLLocationCoordinate2DMake(32.001088357268074,-106.62362529568877);
    points[39] = CLLocationCoordinate2DMake(31.980329357248745,-106.6500622957134);
    points[40] = CLLocationCoordinate2DMake(31.97222035724119,-106.63260529569713);
    points[41] = CLLocationCoordinate2DMake(31.914101357187064,-106.63374929569821);
    points[42] = CLLocationCoordinate2DMake(31.895205357169466,-106.64407929570783);
    points[43] = CLLocationCoordinate2DMake(31.84474035712247,-106.61612329568179);
    points[44] = CLLocationCoordinate2DMake(31.81783435709741,-106.61498629568072);
    points[45] = CLLocationCoordinate2DMake(31.786305357068045,-106.53951429561045);
    points[46] = CLLocationCoordinate2DMake(31.78508335706691,-107.28356729630339);
    points[47] = CLLocationCoordinate2DMake(31.786903357068603,-108.20325529715991);
    points[48] = CLLocationCoordinate2DMake(31.34385335665598,-108.2106472971668);
    points[49] = CLLocationCoordinate2DMake(31.34345335665561,-109.04561529794442);
    points[50] = CLLocationCoordinate2DMake(32.44204435767875,-109.04949529794804);
    points[51] = CLLocationCoordinate2DMake(32.779550357993074,-109.05134629794976);
    points[52] = CLLocationCoordinate2DMake(33.20516435838946,-109.050526297949);
    points[53] = CLLocationCoordinate2DMake(33.7833023589279,-109.05034929794884);
    points[54] = CLLocationCoordinate2DMake(34.59178035968085,-109.04865229794726);
    points[55] = CLLocationCoordinate2DMake(34.95464636001879,-109.04664129794538);
    points[56] = CLLocationCoordinate2DMake(35.99666436098925,-109.0478462979465);
    points[57] = CLLocationCoordinate2DMake(36.99664136192055,-109.0484802979471);
    
    MKPolygon *newMexico = [MKPolygon polygonWithCoordinates:points count:58];
    return newMexico;
}

@end
