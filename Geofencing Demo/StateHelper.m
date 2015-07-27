//
//  StateHelper.m
//  Geofencing Demo
//
//  Created by Stuart Farmer on 7/27/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import "StateHelper.h"

@import MapKit;

@implementation StateHelper

+ (CLLocationCoordinate2D *)mapPointsforUtah {
    CLLocationCoordinate2D points[42];
    
    points[0] = CLLocationCoordinate2DMake(-114.03907230259495,41.995391366576);
    points[1] = CLLocationCoordinate2DMake(-112.98957530161753,42.00114636658136);
    points[2] = CLLocationCoordinate2DMake(-112.14711630083293,41.999054366579415);
    points[3] = CLLocationCoordinate2DMake(-112.10051430078953,42.00230036658243);
    points[4] = CLLocationCoordinate2DMake(-111.49458630022521,42.000171366580446);
    points[5] = CLLocationCoordinate2DMake(-111.04869729980994,41.99620336657675);
    points[6] = CLLocationCoordinate2DMake(-111.05106829981216,41.57859236618782);
    points[7] = CLLocationCoordinate2DMake(-111.05165129981269,41.25842536588965);
    points[8] = CLLocationCoordinate2DMake(-111.0510222998121,40.99658336564579);
    points[9] = CLLocationCoordinate2DMake(-110.06318529889211,40.997892365647004);
    points[10] = CLLocationCoordinate2DMake(-110.00216529883528,40.997599365646735);
    points[11] = CLLocationCoordinate2DMake(-109.04831429794694,40.998433365647514);
    points[12] = CLLocationCoordinate2DMake(-109.04615529794494,40.66529136533725);
    points[13] = CLLocationCoordinate2DMake(-109.05126329794969,40.2105113649137);
    points[14] = CLLocationCoordinate2DMake(-109.05255129795088,39.65738236439856);
    points[15] = CLLocationCoordinate2DMake(-109.0535282979518,39.51817036426891);
    points[16] = CLLocationCoordinate2DMake(-109.05141729794983,39.360966364122504);
    points[17] = CLLocationCoordinate2DMake(-109.05394829795219,38.49465136331568);
    points[18] = CLLocationCoordinate2DMake(-109.05586129795397,38.2449203630831);
    points[19] = CLLocationCoordinate2DMake(-109.05586129795397,38.2449203630831);
    points[20] = CLLocationCoordinate2DMake(-109.05586129795397,38.2449203630831);
    points[21] = CLLocationCoordinate2DMake(-109.04320629794219,37.88742036275015);
    points[22] = CLLocationCoordinate2DMake(-109.04560229794441,37.63082036251117);
    points[23] = CLLocationCoordinate2DMake(-109.0484802979471,36.99664136192055);
    points[24] = CLLocationCoordinate2DMake(-109.99707629883055,36.99206736191629);
    points[25] = CLLocationCoordinate2DMake(-110.45223629925445,36.991746361915986);
    points[26] = CLLocationCoordinate2DMake(-110.48408929928411,37.003926361927334);
    points[27] = CLLocationCoordinate2DMake(-110.7400632995225,37.002488361926);
    points[28] = CLLocationCoordinate2DMake(-111.3561643000963,37.001709361925265);
    points[29] = CLLocationCoordinate2DMake(-112.23725830091688,36.995492361919474);
    points[30] = CLLocationCoordinate2DMake(-112.54252130120118,36.99799436192181);
    points[31] = CLLocationCoordinate2DMake(-112.89998330153409,36.99622736192016);
    points[32] = CLLocationCoordinate2DMake(-114.04393930259948,36.99653836192046);
    points[33] = CLLocationCoordinate2DMake(-114.04726030260258,37.59847836248105);
    points[34] = CLLocationCoordinate2DMake(-114.04727330260259,38.137652362983204);
    points[35] = CLLocationCoordinate2DMake(-114.04509030260056,38.571095363386874);
    points[36] = CLLocationCoordinate2DMake(-114.04426730259979,38.678996363487364);
    points[37] = CLLocationCoordinate2DMake(-114.0401053025959,39.538685364288014);
    points[38] = CLLocationCoordinate2DMake(-114.03984430259567,39.90877836463269);
    points[39] = CLLocationCoordinate2DMake(-114.03810830259405,40.111046364821064);
    points[40] = CLLocationCoordinate2DMake(-114.03815130259409,40.997686365646814);
    points[41] = CLLocationCoordinate2DMake(-114.03907230259495,41.995391366576);
    
    return points;
}

+ (CLLocationCoordinate2D *)mapPointsforColorado {
    CLLocationCoordinate2D points[56];
    
    points[0] = CLLocationCoordinate2DMake(-102.03720729141735,36.98899436191343);
    points[1] = CLLocationCoordinate2DMake(-102.99770929231188,36.9985233619223);
    points[2] = CLLocationCoordinate2DMake(-103.07786629238653,36.99976036192345);
    points[3] = CLLocationCoordinate2DMake(-103.99363529323941,36.994469361918526);
    points[4] = CLLocationCoordinate2DMake(-105.14617229431279,36.99320736191736);
    points[5] = CLLocationCoordinate2DMake(-105.21309129437512,36.99260436191679);
    points[6] = CLLocationCoordinate2DMake(-105.71346029484111,36.994560361918616);
    points[7] = CLLocationCoordinate2DMake(-105.99200029510052,36.9922893619165);
    points[8] = CLLocationCoordinate2DMake(-106.47217729554772,36.991504361915766);
    points[9] = CLLocationCoordinate2DMake(-106.86124929591008,36.989501361913895);
    points[10] = CLLocationCoordinate2DMake(-106.8903702959372,36.99908336192283);
    points[11] = CLLocationCoordinate2DMake(-107.4108202964219,36.997525361921376);
    points[12] = CLLocationCoordinate2DMake(-107.47246029647931,36.99877636192254);
    points[13] = CLLocationCoordinate2DMake(-108.37247329731751,36.999471361923185);
    points[14] = CLLocationCoordinate2DMake(-109.0484802979471,36.99664136192055);
    points[15] = CLLocationCoordinate2DMake(-109.04560229794441,37.63082036251117);
    points[16] = CLLocationCoordinate2DMake(-109.04320629794219,37.88742036275015);
    points[17] = CLLocationCoordinate2DMake(-109.04346429794242,38.15293336299743);
    points[18] = CLLocationCoordinate2DMake(-109.05586129795397,38.2449203630831);
    points[19] = CLLocationCoordinate2DMake(-109.05394829795219,38.49465136331568);
    points[20] = CLLocationCoordinate2DMake(-109.05141729794983,39.360966364122504);
    points[21] = CLLocationCoordinate2DMake(-109.0535282979518,39.51817036426891);
    points[22] = CLLocationCoordinate2DMake(-109.05255129795088,39.65738236439856);
    points[23] = CLLocationCoordinate2DMake(-109.05126329794969,40.2105113649137);
    points[24] = CLLocationCoordinate2DMake(-109.04615529794494,40.66529136533725);
    points[25] = CLLocationCoordinate2DMake(-109.04831429794694,40.998433365647514);
    points[26] = CLLocationCoordinate2DMake(-107.91867129689489,41.00337536565211);
    points[27] = CLLocationCoordinate2DMake(-107.30405129632247,41.00013336564909);
    points[28] = CLLocationCoordinate2DMake(-106.86543829591398,40.99845736564753);
    points[29] = CLLocationCoordinate2DMake(-106.3291252954145,41.001289365650166);
    points[30] = CLLocationCoordinate2DMake(-106.20347129529748,41.00008536564905);
    points[31] = CLLocationCoordinate2DMake(-105.2787972944363,40.99634936564557);
    points[32] = CLLocationCoordinate2DMake(-104.93449329411565,40.99428936564365);
    points[33] = CLLocationCoordinate2DMake(-104.0517052932935,41.003211365651964);
    points[34] = CLLocationCoordinate2DMake(-103.57231629284702,40.99964836564864);
    points[35] = CLLocationCoordinate2DMake(-103.38295629267067,41.00031636564926);
    points[36] = CLLocationCoordinate2DMake(-102.65227129199016,40.99812436564722);
    points[37] = CLLocationCoordinate2DMake(-102.62125729196129,41.00021436564917);
    points[38] = CLLocationCoordinate2DMake(-102.04773929142715,40.99807136564717);
    points[39] = CLLocationCoordinate2DMake(-102.04699229142645,40.74313036540974);
    points[40] = CLLocationCoordinate2DMake(-102.04603129142556,40.69731936536708);
    points[41] = CLLocationCoordinate2DMake(-102.04762029142704,40.43107736511912);
    points[42] = CLLocationCoordinate2DMake(-102.04754529142697,40.34264436503676);
    points[43] = CLLocationCoordinate2DMake(-102.05153529143068,39.99891836471664);
    points[44] = CLLocationCoordinate2DMake(-102.04944229142873,39.56869336431596);
    points[45] = CLLocationCoordinate2DMake(-102.04880129142813,39.562803364310476);
    points[46] = CLLocationCoordinate2DMake(-102.04787429142728,39.12675336390437);
    points[47] = CLLocationCoordinate2DMake(-102.0489722914283,39.03700336382079);
    points[48] = CLLocationCoordinate2DMake(-102.04756829142698,38.69255036349999);
    points[49] = CLLocationCoordinate2DMake(-102.047584291427,38.61549936342823);
    points[50] = CLLocationCoordinate2DMake(-102.0455492914251,38.26334336310026);
    points[51] = CLLocationCoordinate2DMake(-102.04606129142559,38.25382236309139);
    points[52] = CLLocationCoordinate2DMake(-102.04397629142365,37.734398362607635);
    points[53] = CLLocationCoordinate2DMake(-102.0444562914241,37.641474362521095);
    points[53] = CLLocationCoordinate2DMake(-102.04201029142182,37.38627936228343);
    points[55] = CLLocationCoordinate2DMake(-102.03720729141735,36.98899436191343);
    
    return points;
}

+ (CLLocationCoordinate2D *)mapPointsForArizona {
    CLLocationCoordinate2D points[153];
    
    points[0] = CLLocationCoordinate2DMake(-114.62106830313698,34.99891436006002);
    points[1] = CLLocationCoordinate2DMake(-114.63378030314881,35.041863360100024);
    points[2] = CLLocationCoordinate2DMake(-114.59563230311329,35.07605836013187);
    points[3] = CLLocationCoordinate2DMake(-114.6359093031508,35.11865536017154);
    points[4] = CLLocationCoordinate2DMake(-114.62644130314197,35.13390636018575);
    points[5] = CLLocationCoordinate2DMake(-114.58261630310116,35.132560360184485);
    points[6] = CLLocationCoordinate2DMake(-114.57225530309151,35.14006736019148);
    points[7] = CLLocationCoordinate2DMake(-114.56104030308107,35.17434636022341);
    points[8] = CLLocationCoordinate2DMake(-114.5595833030797,35.22018336026609);
    points[9] = CLLocationCoordinate2DMake(-114.58789030310608,35.304768360344866);
    points[10] = CLLocationCoordinate2DMake(-114.58958430310764,35.358378360394795);
    points[11] = CLLocationCoordinate2DMake(-114.64539630315963,35.450760360480835);
    points[12] = CLLocationCoordinate2DMake(-114.6722153031846,35.515754360541365);
    points[13] = CLLocationCoordinate2DMake(-114.64979230316374,35.54663736057013);
    points[14] = CLLocationCoordinate2DMake(-114.65313430316684,35.5848333606057);
    points[15] = CLLocationCoordinate2DMake(-114.63986630315449,35.611348360630394);
    points[16] = CLLocationCoordinate2DMake(-114.65406630316771,35.64658436066321);
    points[17] = CLLocationCoordinate2DMake(-114.66848630318114,35.65639936067235);
    points[18] = CLLocationCoordinate2DMake(-114.66509130317797,35.69309936070653);
    points[19] = CLLocationCoordinate2DMake(-114.68882030320007,35.73259536074332);
    points[20] = CLLocationCoordinate2DMake(-114.68273930319441,35.76470336077322);
    points[21] = CLLocationCoordinate2DMake(-114.68986730320105,35.84744236085027);
    points[22] = CLLocationCoordinate2DMake(-114.66246230317552,35.870960360872175);
    points[23] = CLLocationCoordinate2DMake(-114.66160030317472,35.88047336088104);
    points[24] = CLLocationCoordinate2DMake(-114.69927630320981,35.91161236091004);
    points[25] = CLLocationCoordinate2DMake(-114.7362123032442,35.987648360980856);
    points[26] = CLLocationCoordinate2DMake(-114.71767330322695,36.036758361026585);
    points[27] = CLLocationCoordinate2DMake(-114.72896630323746,36.058753361047074);
    points[28] = CLLocationCoordinate2DMake(-114.7281503032367,36.08596236107242);
    points[29] = CLLocationCoordinate2DMake(-114.71276130322238,36.10518136109032);
    points[30] = CLLocationCoordinate2DMake(-114.62161030313749,36.141966361124574);
    points[31] = CLLocationCoordinate2DMake(-114.59893530311636,36.13833536112119);
    points[32] = CLLocationCoordinate2DMake(-114.5305733030527,36.15509036113679);
    points[33] = CLLocationCoordinate2DMake(-114.46661330299312,36.1247113611085);
    points[34] = CLLocationCoordinate2DMake(-114.44394530297203,36.1210533611051);
    points[35] = CLLocationCoordinate2DMake(-114.38080330291321,36.15099136113298);
    points[36] = CLLocationCoordinate2DMake(-114.34423430287916,36.137480361120396);
    points[37] = CLLocationCoordinate2DMake(-114.31609530285294,36.11143836109614);
    points[38] = CLLocationCoordinate2DMake(-114.30385730284155,36.08710836107348);
    points[39] = CLLocationCoordinate2DMake(-114.30758730284502,36.06223336105032);
    points[40] = CLLocationCoordinate2DMake(-114.233472302776,36.01833136100943);
    points[41] = CLLocationCoordinate2DMake(-114.20676930275113,36.017255361008424);
    points[42] = CLLocationCoordinate2DMake(-114.12902330267872,36.04173036103122);
    points[43] = CLLocationCoordinate2DMake(-114.10777530265894,36.12109036110513);
    points[44] = CLLocationCoordinate2DMake(-114.04510530260056,36.19397836117301);
    points[45] = CLLocationCoordinate2DMake(-114.03739230259339,36.21602336119354);
    points[46] = CLLocationCoordinate2DMake(-114.04371630259928,36.84184936177639);
    points[47] = CLLocationCoordinate2DMake(-114.04393930259948,36.99653836192046);
    points[48] = CLLocationCoordinate2DMake(-112.89998330153409,36.99622736192016);
    points[49] = CLLocationCoordinate2DMake(-112.54252130120118,36.99799436192181);
    points[50] = CLLocationCoordinate2DMake(-112.23725830091688,36.995492361919474);
    points[51] = CLLocationCoordinate2DMake(-111.3561643000963,37.001709361925265);
    points[52] = CLLocationCoordinate2DMake(-110.7400632995225,37.002488361926);
    points[53] = CLLocationCoordinate2DMake(-110.48408929928411,37.003926361927334);
    points[54] = CLLocationCoordinate2DMake(-110.45223629925445,36.991746361915986);
    points[55] = CLLocationCoordinate2DMake(-109.99707629883055,36.99206736191629);
    points[56] = CLLocationCoordinate2DMake(-109.0484802979471,36.99664136192055);
    points[57] = CLLocationCoordinate2DMake(-109.0478462979465,35.99666436098925);
    points[58] = CLLocationCoordinate2DMake(-109.04664129794538,34.95464636001879);
    points[59] = CLLocationCoordinate2DMake(-109.04865229794726,34.59178035968085);
    points[60] = CLLocationCoordinate2DMake(-109.05034929794884,33.7833023589279);
    points[61] = CLLocationCoordinate2DMake(-109.050526297949,33.20516435838946);
    points[62] = CLLocationCoordinate2DMake(-109.05134629794976,32.779550357993074);
    points[63] = CLLocationCoordinate2DMake(-109.04949529794804,32.44204435767875);
    points[64] = CLLocationCoordinate2DMake(-109.04561529794442,31.34345335665561);
    points[65] = CLLocationCoordinate2DMake(-110.45257829925477,31.33766035665021);
    points[66] = CLLocationCoordinate2DMake(-111.07196429983162,31.335634356648328);
    points[67] = CLLocationCoordinate2DMake(-111.36952130010873,31.431531356737636);
    points[68] = CLLocationCoordinate2DMake(-113.32911130193375,32.04362135730769);
    points[69] = CLLocationCoordinate2DMake(-114.82176130332388,32.487169357720774);
    points[70] = CLLocationCoordinate2DMake(-114.80939430331236,32.6160443578408);
    points[71] = CLLocationCoordinate2DMake(-114.72204930323102,32.720857357938414);
    points[72] = CLLocationCoordinate2DMake(-114.71269530322232,32.7350133579516);
    points[73] = CLLocationCoordinate2DMake(-114.69404030320493,32.74142535795757);
    points[74] = CLLocationCoordinate2DMake(-114.60394230312102,32.72628535794347);
    points[75] = CLLocationCoordinate2DMake(-114.60352230312063,32.73588635795241);
    points[76] = CLLocationCoordinate2DMake(-114.57195930309123,32.73743935795386);
    points[77] = CLLocationCoordinate2DMake(-114.57221030309148,32.74882935796447);
    points[78] = CLLocationCoordinate2DMake(-114.56075130308079,32.74893635796457);
    points[79] = CLLocationCoordinate2DMake(-114.56158230308156,32.760753357975574);
    points[80] = CLLocationCoordinate2DMake(-114.54300430306427,32.76074935797557);
    points[81] = CLLocationCoordinate2DMake(-114.54318730306444,32.77123235798533);
    points[82] = CLLocationCoordinate2DMake(-114.53009530305225,32.7714113579855);
    points[83] = CLLocationCoordinate2DMake(-114.53507730305688,32.788047358000995);
    points[84] = CLLocationCoordinate2DMake(-114.52621930304863,32.80991235802135);
    points[85] = CLLocationCoordinate2DMake(-114.4614363029883,32.84542235805443);
    points[86] = CLLocationCoordinate2DMake(-114.47644430300228,32.9359083581387);
    points[87] = CLLocationCoordinate2DMake(-114.46838730299478,32.9777893581777);
    points[88] = CLLocationCoordinate2DMake(-114.52062730304343,33.02770735822419);
    points[89] = CLLocationCoordinate2DMake(-114.55908930307925,33.03678235823264);
    points[90] = CLLocationCoordinate2DMake(-114.6099253031266,33.027002358223534);
    points[91] = CLLocationCoordinate2DMake(-114.63396730314898,33.03356735822965);
    points[92] = CLLocationCoordinate2DMake(-114.6451593031594,33.044412358239754);
    points[93] = CLLocationCoordinate2DMake(-114.66395130317692,33.038922358234636);
    points[94] = CLLocationCoordinate2DMake(-114.71135530322107,33.09538235828722);
    points[95] = CLLocationCoordinate2DMake(-114.70946330321931,33.122375358312354);
    points[96] = CLLocationCoordinate2DMake(-114.6781203031901,33.16725035835415);
    points[97] = CLLocationCoordinate2DMake(-114.6800513031919,33.224595358407555);
    points[98] = CLLocationCoordinate2DMake(-114.68771130319904,33.23925835842121);
    points[99] = CLLocationCoordinate2DMake(-114.67769330318971,33.268016358447994);
    points[100] = CLLocationCoordinate2DMake(-114.73542730324348,33.3057083584831);
    points[101] = CLLocationCoordinate2DMake(-114.70360330321384,33.352418358526606);
    points[102] = CLLocationCoordinate2DMake(-114.7249363032337,33.41105935858121);
    points[103] = CLLocationCoordinate2DMake(-114.64509230315934,33.419116358588724);
    points[104] = CLLocationCoordinate2DMake(-114.63057330314584,33.439425358607636);
    points[105] = CLLocationCoordinate2DMake(-114.621089303137,33.468599358634805);
    points[106] = CLLocationCoordinate2DMake(-114.59808630311556,33.48612735865113);
    points[107] = CLLocationCoordinate2DMake(-114.5870613031053,33.50944535867285);
    points[108] = CLLocationCoordinate2DMake(-114.52942030305162,33.56007335872);
    points[109] = CLLocationCoordinate2DMake(-114.5402473030617,33.58050735873903);
    points[110] = CLLocationCoordinate2DMake(-114.52717030304953,33.622136358777794);
    points[111] = CLLocationCoordinate2DMake(-114.52526330304775,33.66550435881818);
    points[112] = CLLocationCoordinate2DMake(-114.53643330305815,33.682735358834236);
    points[113] = CLLocationCoordinate2DMake(-114.49567630302019,33.70836935885811);
    points[114] = CLLocationCoordinate2DMake(-114.5102873030338,33.74320035889055);
    points[115] = CLLocationCoordinate2DMake(-114.50455830302846,33.7717143589171);
    points[116] = CLLocationCoordinate2DMake(-114.5211223030439,33.82603135896769);
    points[117] = CLLocationCoordinate2DMake(-114.51172230303513,33.84196535898253);
    points[118] = CLLocationCoordinate2DMake(-114.52096230304375,33.862926359002046);
    points[119] = CLLocationCoordinate2DMake(-114.49818830302253,33.925036359059895);
    points[120] = CLLocationCoordinate2DMake(-114.5256323030481,33.95241335908539);
    points[121] = CLLocationCoordinate2DMake(-114.51820830304118,33.96506335909717);
    points[122] = CLLocationCoordinate2DMake(-114.42898030295808,34.02984435915751);
    points[123] = CLLocationCoordinate2DMake(-114.42402930295347,34.07833235920266);
    points[124] = CLLocationCoordinate2DMake(-114.41016630294055,34.10265435922531);
    points[125] = CLLocationCoordinate2DMake(-114.32279930285918,34.1412973592613);
    points[126] = CLLocationCoordinate2DMake(-114.28536830282434,34.17123135928918);
    points[127] = CLLocationCoordinate2DMake(-114.23577630277813,34.186222359303144);
    points[128] = CLLocationCoordinate2DMake(-114.14991230269818,34.266979359378354);
    points[129] = CLLocationCoordinate2DMake(-114.12523030267519,34.272621359383606);
    points[130] = CLLocationCoordinate2DMake(-114.13412730268348,34.31454835942266);
    points[131] = CLLocationCoordinate2DMake(-114.15341530270143,34.33644735944305);
    points[132] = CLLocationCoordinate2DMake(-114.18208030272814,34.36520635946984);
    points[133] = CLLocationCoordinate2DMake(-114.2578423027987,34.40548835950735);
    points[134] = CLLocationCoordinate2DMake(-114.2833943028225,34.41206935951348);
    points[135] = CLLocationCoordinate2DMake(-114.30286530284062,34.43575435953554);
    points[136] = CLLocationCoordinate2DMake(-114.33263630286835,34.454873359553346);
    points[137] = CLLocationCoordinate2DMake(-114.3765073029092,34.45967935955782);
    points[138] = CLLocationCoordinate2DMake(-114.38386230291606,34.47708535957403);
    points[139] = CLLocationCoordinate2DMake(-114.3768283029095,34.536563359629426);
    points[140] = CLLocationCoordinate2DMake(-114.40974230294016,34.58372335967334);
    points[141] = CLLocationCoordinate2DMake(-114.43430230296303,34.59896335968754);
    points[142] = CLLocationCoordinate2DMake(-114.42227030295183,34.61089535969865);
    points[143] = CLLocationCoordinate2DMake(-114.46563730299222,34.70987335979083);
    points[144] = CLLocationCoordinate2DMake(-114.49780430302218,34.74475735982332);
    points[145] = CLLocationCoordinate2DMake(-114.52555330304801,34.74891135982719);
    points[146] = CLLocationCoordinate2DMake(-114.54204030306337,34.759958359837476);
    points[147] = CLLocationCoordinate2DMake(-114.5702173030896,34.83186035990444);
    points[148] = CLLocationCoordinate2DMake(-114.62726330314274,34.875533359945116);
    points[149] = CLLocationCoordinate2DMake(-114.63047530314574,34.919501359986064);
    points[150] = CLLocationCoordinate2DMake(-114.62100730313692,34.943609360008516);
    points[151] = CLLocationCoordinate2DMake(-114.63227630314742,34.997651360058846);
    points[152] = CLLocationCoordinate2DMake(-114.62106830313698,34.99891436006002);
    
    return points;
}

@end
