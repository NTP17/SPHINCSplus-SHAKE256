module S_to_A (
	input  [1599:0] S,
	output [63:0] A [0:4][0:4]
);

	assign A[0][0] = {S[1543:1536], S[1551:1544], S[1559:1552], S[1567:1560], S[1575:1568], S[1583:1576], S[1591:1584], S[1599:1592]};
	assign A[1][0] = {S[1479:1472], S[1487:1480], S[1495:1488], S[1503:1496], S[1511:1504], S[1519:1512], S[1527:1520], S[1535:1528]};
	assign A[2][0] = {S[1415:1408], S[1423:1416], S[1431:1424], S[1439:1432], S[1447:1440], S[1455:1448], S[1463:1456], S[1471:1464]};
	assign A[3][0] = {S[1351:1344], S[1359:1352], S[1367:1360], S[1375:1368], S[1383:1376], S[1391:1384], S[1399:1392], S[1407:1400]};
	assign A[4][0] = {S[1287:1280], S[1295:1288], S[1303:1296], S[1311:1304], S[1319:1312], S[1327:1320], S[1335:1328], S[1343:1336]};

	assign A[0][1] = {S[1223:1216], S[1231:1224], S[1239:1232], S[1247:1240], S[1255:1248], S[1263:1256], S[1271:1264], S[1279:1272]};
	assign A[1][1] = {S[1159:1152], S[1167:1160], S[1175:1168], S[1183:1176], S[1191:1184], S[1199:1192], S[1207:1200], S[1215:1208]};
	assign A[2][1] = {S[1095:1088], S[1103:1096], S[1111:1104], S[1119:1112], S[1127:1120], S[1135:1128], S[1143:1136], S[1151:1144]};
	assign A[3][1] = {S[1031:1024], S[1039:1032], S[1047:1040], S[1055:1048], S[1063:1056], S[1071:1064], S[1079:1072], S[1087:1080]};
	assign A[4][1] = {S[967:960]  , S[975:968]  , S[983:976]  , S[991:984]  , S[999:992]  , S[1007:1000], S[1015:1008], S[1023:1016]};

	assign A[0][2] = {S[903:896]  , S[911:904]  , S[919:912]  , S[927:920]  , S[935:928]  , S[943:936]  , S[951:944]  , S[959:952]  };
	assign A[1][2] = {S[839:832]  , S[847:840]  , S[855:848]  , S[863:856]  , S[871:864]  , S[879:872]  , S[887:880]  , S[895:888]  };
	assign A[2][2] = {S[775:768]  , S[783:776]  , S[791:784]  , S[799:792]  , S[807:800]  , S[815:808]  , S[823:816]  , S[831:824]  };
	assign A[3][2] = {S[711:704]  , S[719:712]  , S[727:720]  , S[735:728]  , S[743:736]  , S[751:744]  , S[759:752]  , S[767:760]  };
	assign A[4][2] = {S[647:640]  , S[655:648]  , S[663:656]  , S[671:664]  , S[679:672]  , S[687:680]  , S[695:688]  , S[703:696]  };

	assign A[0][3] = {S[583:576]  , S[591:584]  , S[599:592]  , S[607:600]  , S[615:608]  , S[623:616]  , S[631:624]  , S[639:632]  };
	assign A[1][3] = {S[519:512]  , S[527:520]  , S[535:528]  , S[543:536]  , S[551:544]  , S[559:552]  , S[567:560]  , S[575:568]  };
	assign A[2][3] = {S[455:448]  , S[463:456]  , S[471:464]  , S[479:472]  , S[487:480]  , S[495:488]  , S[503:496]  , S[511:504]  };
	assign A[3][3] = {S[391:384]  , S[399:392]  , S[407:400]  , S[415:408]  , S[423:416]  , S[431:424]  , S[439:432]  , S[447:440]  };
	assign A[4][3] = {S[327:320]  , S[335:328]  , S[343:336]  , S[351:344]  , S[359:352]  , S[367:360]  , S[375:368]  , S[383:376]  };

	assign A[0][4] = {S[263:256]  , S[271:264]  , S[279:272]  , S[287:280]  , S[295:288]  , S[303:296]  , S[311:304]  , S[319:312]  };
	assign A[1][4] = {S[199:192]  , S[207:200]  , S[215:208]  , S[223:216]  , S[231:224]  , S[239:232]  , S[247:240]  , S[255:248]  };
	assign A[2][4] = {S[135:128]  , S[143:136]  , S[151:144]  , S[159:152]  , S[167:160]  , S[175:168]  , S[183:176]  , S[191:184]  };
	assign A[3][4] = {S[71:64]    , S[79:72]    , S[87:80]    , S[95:88]    , S[103:96]   , S[111:104]  , S[119:112]  , S[127:120]  };
	assign A[4][4] = {S[7:0]      , S[15:8]     , S[23:16]    , S[31:24]    , S[39:32]    , S[47:40]    , S[55:48]    , S[63:56]    };

endmodule