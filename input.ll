; ModuleID = 'input.c'
source_filename = "input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global [10 x i32] zeroinitializer
@.str.1 = private unnamed_addr constant [7 x i8] c"g_4[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_17 = internal global i64 -2068448871956563794, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_45 = internal global i16 1, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_45\00", align 1
@g_58 = internal global i32 -2147449466, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_58\00", align 1
@g_73 = internal global [7 x [10 x i32]] [[10 x i32] [i32 7, i32 1813196101, i32 -1, i32 -2052423815, i32 1813196101, i32 -9, i32 1813196101, i32 -2052423815, i32 -1, i32 1813196101], [10 x i32] [i32 7, i32 2132024410, i32 0, i32 -2052423815, i32 2132024410, i32 6, i32 1813196101, i32 0, i32 0, i32 1813196101], [10 x i32] [i32 6, i32 1813196101, i32 0, i32 0, i32 1813196101, i32 6, i32 2132024410, i32 -2052423815, i32 0, i32 2132024410], [10 x i32] [i32 7, i32 1813196101, i32 -1, i32 -2052423815, i32 1813196101, i32 -9, i32 -2, i32 2132024410, i32 1813196101, i32 -2], [10 x i32] [i32 -738887909, i32 502932376, i32 1386568907, i32 2132024410, i32 502932376, i32 -4, i32 -2, i32 1386568907, i32 1386568907, i32 -2], [10 x i32] [i32 -4, i32 -2, i32 1386568907, i32 1386568907, i32 -2, i32 -4, i32 502932376, i32 2132024410, i32 1386568907, i32 502932376], [10 x i32] [i32 -738887909, i32 -2, i32 1813196101, i32 2132024410, i32 -2, i32 9, i32 -2, i32 2132024410, i32 1813196101, i32 -2]], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"g_73[i][j]\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_96 = internal global i32 1573340984, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_96\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_108 = internal global i32 174874534, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_108\00", align 1
@g_111 = internal global [1 x i16] [i16 -1], align 2
@.str.11 = private unnamed_addr constant [9 x i8] c"g_111[i]\00", align 1
@g_112 = internal global [7 x i32] [i32 -1347487315, i32 0, i32 -1347487315, i32 -1347487315, i32 0, i32 -1347487315, i32 -1347487315], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"g_112[i]\00", align 1
@g_115 = internal global i32 -1500291461, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_115\00", align 1
@g_118 = internal global i32 2112669547, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_118\00", align 1
@g_119 = internal global i64 -5878280740500232074, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_119\00", align 1
@g_129 = internal global i32 4, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_161 = internal global [8 x [4 x [8 x i8]]] [[4 x [8 x i8]] [[8 x i8] c"@\01\01\F9\00\00@@", [8 x i8] c"\DC\F9\00\00\F9\DC\00\01", [8 x i8] c"\F9\DC\00\012\00\E42", [8 x i8] c"\01@#\01\00\E6\00\01"], [4 x [8 x i8]] [[8 x i8] c"\01\00\01\00\02\00\00@", [8 x i8] c"\00\00\00\F9\022\02\00", [8 x i8] c"\00@F\02\02F@\00", [8 x i8] c"\01\01\002\00\DC\01@"], [4 x [8 x i8]] [[8 x i8] c"\012\00\E42\DC\02\DC", [8 x i8] c"\F9\01\E0\01\F9F\E4\F9", [8 x i8] c"\DC@\01\DC\002\00\01", [8 x i8] c"@\00\01\E4\00\00\E4\01"], [4 x [8 x i8]] [[8 x i8] c"\00\00\E0\F9\FF\E6\02\00", [8 x i8] c"\00@\00\00\02\00\01\00", [8 x i8] c"@\DC\00\F9\00\DC@\01", [8 x i8] c"\01\F9F\E4\F9\00\02\01"], [4 x [8 x i8]] [[8 x i8] c"2\01\00\DC\F9\00\00\F9", [8 x i8] c"\01\01\01\01\002\00\DC", [8 x i8] c"@\00#\E4\02\00\002", [8 x i8] c"\01\02\01F\DCF\01\02"], [4 x [8 x i8]] [[8 x i8] c"\02\E6\E0\00\01\E02\01", [8 x i8] c"2\01\FF\00\02@22", [8 x i8] c"#\00\E0\E0\00#\01\01", [8 x i8] c"\00#\01\01F\E0\00F"], [4 x [8 x i8]] [[8 x i8] c"\012\F9\01\02\E4\02\01", [8 x i8] c"\E6\02\E6\E0\00\01\E02", [8 x i8] c"\02\01\01\00\00F\00\01", [8 x i8] c"\022\02\00\00\022\02"], [4 x [8 x i8]] [[8 x i8] c"\E6\01\01F\02#\E62", [8 x i8] c"\01F\E0\00F#\00#", [8 x i8] c"\00\01\00\01\00\02\00\00", [8 x i8] c"#2\E6#\02F\01\01"]], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"g_161[i][j][k]\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_187 = internal global i64 580833802685259739, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_187\00", align 1
@g_205 = internal global i32 1, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_205\00", align 1
@g_242 = internal global i16 6, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_242\00", align 1
@g_265 = internal global i8 -126, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_265\00", align 1
@g_307 = internal global i64 1, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_307\00", align 1
@g_442 = internal global [10 x i64] [i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015, i64 -9217803080606598015], align 16
@.str.24 = private unnamed_addr constant [9 x i8] c"g_442[i]\00", align 1
@g_894 = internal global i64 -6447180495342931730, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_894\00", align 1
@g_895 = internal global i32 -845385057, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_895\00", align 1
@g_1036 = internal global i16 16369, align 2
@.str.27 = private unnamed_addr constant [7 x i8] c"g_1036\00", align 1
@g_1131 = internal global i8 -43, align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"g_1131\00", align 1
@g_1143 = internal global i32 -1, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"g_1143\00", align 1
@g_1196 = internal global [5 x [2 x i16]] [[2 x i16] [i16 -5, i16 -5], [2 x i16] [i16 -5, i16 -5], [2 x i16] [i16 -5, i16 -5], [2 x i16] [i16 -5, i16 -5], [2 x i16] [i16 -5, i16 -5]], align 16
@.str.30 = private unnamed_addr constant [13 x i8] c"g_1196[i][j]\00", align 1
@g_1295 = internal global i32 -2021205415, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1295\00", align 1
@g_1299 = internal global i8 119, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1299\00", align 1
@g_1362 = internal global i32 0, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1362\00", align 1
@g_1399 = internal global i64 -5050406226464559521, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1399\00", align 1
@g_1633 = internal global i64 2567663786782206115, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1633\00", align 1
@g_1642 = internal global i16 -1, align 2
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1642\00", align 1
@crc32_context = internal global i32 -1, align 4
@temp_var = common dso_local global [10 x i32] zeroinitializer, align 16
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@__const.func_1.l_18 = private unnamed_addr constant [8 x [6 x i32]] [[6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1]], align 16
@g_1622 = internal global i32* @g_118, align 8
@g_1129 = internal global i8** @g_1130, align 8
@g_731 = internal global i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_111, i32 0, i32 0), align 8
@__const.func_13.l_1889 = private unnamed_addr constant [10 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], align 16
@g_201 = internal global [2 x i32**] [i32** @g_202, i32** @g_202], align 16
@g_170 = internal global i32** @g_171, align 8
@g_669 = internal global i64**** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i64***]]* @g_670 to i8*), i64 160) to i64****), align 8
@g_1370 = internal global i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32**]* @g_201 to i8*), i64 8) to i32***), align 8
@g_1700 = internal global i64* @g_1633, align 8
@__const.func_13.l_1908 = private unnamed_addr constant [3 x [8 x i32*]] [[8 x i32*] [i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58], [8 x i32*] [i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58], [8 x i32*] [i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58, i32* @g_58]], align 16
@g_1877 = internal global [9 x [3 x [1 x i8**]]] [[3 x [1 x i8**]] [[1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] zeroinitializer, [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)]], [3 x [1 x i8**]] [[1 x i8**] zeroinitializer, [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)]], [3 x [1 x i8**]] [[1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)]], [3 x [1 x i8**]] [[1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)]], [3 x [1 x i8**]] [[1 x i8**] zeroinitializer, [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] zeroinitializer], [3 x [1 x i8**]] [[1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)]], [3 x [1 x i8**]] [[1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)]], [3 x [1 x i8**]] [[1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] zeroinitializer], [3 x [1 x i8**]] [[1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)], [1 x i8**] zeroinitializer, [1 x i8**] [i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i32 0, i32 0)]]], align 16
@g_1640 = internal global i16** @g_1641, align 8
@g_1029 = internal global i64*** @g_1030, align 8
@__const.func_13.l_2004 = private unnamed_addr constant [4 x [9 x [7 x i32]]] [[9 x [7 x i32]] [[7 x i32] [i32 -1878785634, i32 0, i32 -816481389, i32 -1, i32 258286043, i32 -2076007363, i32 6], [7 x i32] [i32 535840617, i32 619534093, i32 -1769283558, i32 1, i32 -980492310, i32 0, i32 -1], [7 x i32] [i32 -185764109, i32 -1, i32 -1, i32 -1, i32 -1, i32 -185764109, i32 4], [7 x i32] [i32 100791392, i32 -8, i32 974877126, i32 -812949351, i32 1448526362, i32 -804067475, i32 -812949351], [7 x i32] [i32 -1, i32 6, i32 -835018144, i32 1130325412, i32 4, i32 534564464, i32 -1878785634], [7 x i32] [i32 -1377490331, i32 -8, i32 -1044180474, i32 0, i32 100791392, i32 -1769283558, i32 -1377490331], [7 x i32] [i32 -1, i32 -1, i32 -1, i32 258286043, i32 46579154, i32 1104798639, i32 46579154], [7 x i32] [i32 -8, i32 619534093, i32 619534093, i32 -8, i32 1, i32 -980492310, i32 -1902624876], [7 x i32] [i32 -12749550, i32 0, i32 -185764109, i32 -835018144, i32 -1, i32 -185764109, i32 369082207]], [9 x [7 x i32]] [[7 x i32] [i32 1, i32 169106542, i32 -9, i32 1053893774, i32 535840617, i32 1, i32 -1902624876], [7 x i32] [i32 -1024968292, i32 -12749550, i32 -835018144, i32 6, i32 534564464, i32 -613600359, i32 46579154], [7 x i32] [i32 2040001626, i32 1448526362, i32 -1377490331, i32 -6, i32 -812949351, i32 -6, i32 -1377490331], [7 x i32] [i32 46579154, i32 46579154, i32 -1, i32 -1, i32 0, i32 5, i32 -1878785634], [7 x i32] [i32 -1, i32 -6, i32 -1769283558, i32 -8, i32 -6, i32 2040001626, i32 -812949351], [7 x i32] [i32 534564464, i32 -1, i32 -12749550, i32 4, i32 0, i32 1104798639, i32 254503427], [7 x i32] [i32 -6, i32 1, i32 1053893774, i32 -1377490331, i32 -980492310, i32 -1, i32 1], [7 x i32] [i32 6, i32 -1454238836, i32 -1, i32 -12749550, i32 -1, i32 -1454238836, i32 6], [7 x i32] [i32 9, i32 -1769283558, i32 -1578056689, i32 -804067475, i32 0, i32 1600841529, i32 1]], [9 x [7 x i32]] [[7 x i32] [i32 1, i32 1587943352, i32 1130325412, i32 1, i32 -613600359, i32 -1024968292, i32 -12749550], [7 x i32] [i32 2, i32 -9, i32 -1578056689, i32 -6, i32 202267674, i32 -1578056689, i32 -1044180474], [7 x i32] [i32 -2076007363, i32 6, i32 -1, i32 -1, i32 1587943352, i32 -816481389, i32 -816481389], [7 x i32] [i32 2040001626, i32 2, i32 1053893774, i32 2, i32 2040001626, i32 -8, i32 0], [7 x i32] [i32 -835018144, i32 1104798639, i32 -1299720389, i32 -1, i32 254503427, i32 -1, i32 6], [7 x i32] [i32 1, i32 0, i32 9, i32 202267674, i32 -1044180474, i32 974877126, i32 -1578056689], [7 x i32] [i32 -835018144, i32 -1, i32 46579154, i32 1, i32 -1, i32 -1, i32 369082207], [7 x i32] [i32 2040001626, i32 9, i32 1306621548, i32 -980492310, i32 -9, i32 -9, i32 -980492310], [7 x i32] [i32 -2076007363, i32 4, i32 -2076007363, i32 -816481389, i32 369082207, i32 -1, i32 -205878488]], [9 x [7 x i32]] [[7 x i32] [i32 2, i32 619534093, i32 -1, i32 -1377490331, i32 2040001626, i32 535840617, i32 2], [7 x i32] [i32 1, i32 -1, i32 -205878488, i32 369082207, i32 5, i32 -1, i32 1587943352], [7 x i32] [i32 9, i32 0, i32 1, i32 9, i32 -6, i32 -9, i32 974877126], [7 x i32] [i32 6, i32 534564464, i32 -1, i32 -613600359, i32 -613600359, i32 -1, i32 534564464], [7 x i32] [i32 -6, i32 1306621548, i32 1600841529, i32 -1769283558, i32 1, i32 974877126, i32 -1377490331], [7 x i32] [i32 -1, i32 6, i32 -2076007363, i32 -1299720389, i32 -185764109, i32 -1, i32 5], [7 x i32] [i32 1, i32 -1044180474, i32 -1, i32 -1769283558, i32 -980492310, i32 -8, i32 2], [7 x i32] [i32 1587943352, i32 5, i32 -1454238836, i32 -613600359, i32 1104798639, i32 -816481389, i32 -835018144], [7 x i32] [i32 -1578056689, i32 -1769283558, i32 9, i32 9, i32 -1769283558, i32 -1578056689, i32 -804067475]]], align 16
@g_1244 = internal global i32* @g_118, align 8
@g_668 = internal global i64***** @g_669, align 8
@constinit = private global [9 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 67), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 93), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 67), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 153), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 66), i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 35), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 35), i8* null], align 8
@constinit.37 = private global [9 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 67), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 93), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 67), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 153), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 66), i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 35), i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i32 0, i32 0, i32 0, i32 0), i64 35), i8* null], align 8
@g_1516 = internal global i32**** getelementptr inbounds ([4 x i32***], [4 x i32***]* @g_1517, i32 0, i32 0), align 8
@g_930 = internal global i32** null, align 8
@g_202 = internal global i32* @g_58, align 8
@g_171 = internal global i32* null, align 8
@g_670 = internal global [6 x [4 x i64***]] [[4 x i64***] [i64*** null, i64*** @g_393, i64*** @g_393, i64*** @g_393], [4 x i64***] [i64*** @g_393, i64*** @g_393, i64*** @g_393, i64*** @g_393], [4 x i64***] [i64*** @g_393, i64*** null, i64*** @g_393, i64*** @g_393], [4 x i64***] [i64*** null, i64*** @g_393, i64*** @g_393, i64*** @g_393], [4 x i64***] [i64*** @g_393, i64*** null, i64*** @g_393, i64*** @g_393], [4 x i64***] [i64*** @g_393, i64*** @g_393, i64*** null, i64*** @g_393]], align 16
@g_393 = internal global i64** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64*]* @g_394 to i8*), i64 24) to i64**), align 8
@g_394 = internal global [4 x i64*] [i64* @g_187, i64* @g_187, i64* @g_187, i64* @g_187], align 16
@g_1369 = internal global [9 x i32****] [i32**** @g_1370, i32**** @g_1370, i32**** @g_1370, i32**** @g_1370, i32**** @g_1370, i32**** @g_1370, i32**** @g_1370, i32**** @g_1370, i32**** @g_1370], align 16
@__const.func_36.l_1718 = private unnamed_addr constant [2 x [6 x [4 x i32]]] [[6 x [4 x i32]] [[4 x i32] [i32 -449585607, i32 -1, i32 964515843, i32 -1], [4 x i32] [i32 -449585607, i32 1, i32 -9, i32 -1], [4 x i32] [i32 -9, i32 -1, i32 -9, i32 1], [4 x i32] [i32 -449585607, i32 -1, i32 964515843, i32 -1], [4 x i32] [i32 -449585607, i32 1, i32 -9, i32 -1], [4 x i32] [i32 -9, i32 -1, i32 -9, i32 1]], [6 x [4 x i32]] [[4 x i32] [i32 -449585607, i32 -1, i32 964515843, i32 -1], [4 x i32] [i32 -449585607, i32 1, i32 -9, i32 -1], [4 x i32] [i32 -9, i32 -1, i32 -9, i32 1], [4 x i32] [i32 -449585607, i32 -1, i32 964515843, i32 1], [4 x i32] [i32 -9, i32 9, i32 964515843, i32 1], [4 x i32] [i32 964515843, i32 1, i32 964515843, i32 9]]], align 16
@__const.func_36.l_1773 = private unnamed_addr constant [4 x i32] [i32 -872084289, i32 -872084289, i32 -872084289, i32 -872084289], align 16
@__const.func_36.l_1799 = private unnamed_addr constant [8 x [10 x [3 x i64*]]] [[10 x [3 x i64*]] [[3 x i64*] [i64* @g_17, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* null, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_1399], [3 x i64*] [i64* @g_307, i64* null, i64* null], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* @g_307, i64* @g_1633, i64* @g_1633], [3 x i64*] [i64* @g_1633, i64* @g_17, i64* @g_17], [3 x i64*] [i64* null, i64* @g_1399, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_17, i64* @g_17]], [10 x [3 x i64*]] [[3 x i64*] [i64* @g_17, i64* @g_1633, i64* null], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_17], [3 x i64*] zeroinitializer, [3 x i64*] [i64* null, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_307, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1399, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_307, i64* @g_17, i64* @g_1633], [3 x i64*] [i64* null, i64* @g_17, i64* @g_1633], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_17, i64* @g_17, i64* @g_1399]], [10 x [3 x i64*]] [[3 x i64*] [i64* @g_17, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* null, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_1399], [3 x i64*] [i64* @g_307, i64* null, i64* null], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* @g_307, i64* @g_1633, i64* @g_1633], [3 x i64*] [i64* @g_1633, i64* @g_17, i64* @g_17], [3 x i64*] [i64* null, i64* @g_1399, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_17, i64* @g_17]], [10 x [3 x i64*]] [[3 x i64*] [i64* @g_17, i64* @g_1633, i64* null], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_17], [3 x i64*] zeroinitializer, [3 x i64*] [i64* null, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_307, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1399, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_307, i64* @g_17, i64* @g_1633], [3 x i64*] [i64* null, i64* @g_17, i64* @g_1633], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_17, i64* @g_17, i64* @g_1399]], [10 x [3 x i64*]] [[3 x i64*] [i64* @g_17, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* null, i64* @g_17, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_1399], [3 x i64*] [i64* @g_307, i64* null, i64* null], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* @g_307, i64* @g_1633, i64* @g_1633], [3 x i64*] [i64* @g_1633, i64* @g_17, i64* @g_17], [3 x i64*] [i64* null, i64* @g_1399, i64* null], [3 x i64*] [i64* @g_1633, i64* @g_17, i64* @g_17]], [10 x [3 x i64*]] [[3 x i64*] [i64* @g_17, i64* @g_1633, i64* null], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_17, i64* @g_1633, i64* @g_17], [3 x i64*] [i64* @g_17, i64* @g_17, i64* @g_1633], [3 x i64*] [i64* @g_307, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_307, i64* @g_1399, i64* null], [3 x i64*] [i64* @g_17, i64* @g_1399, i64* @g_307], [3 x i64*] [i64* @g_17, i64* @g_17, i64* @g_1633], [3 x i64*] [i64* @g_17, i64* @g_1399, i64* @g_17]], [10 x [3 x i64*]] [[3 x i64*] [i64* @g_307, i64* @g_1399, i64* @g_17], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_1399, i64* @g_17, i64* @g_17], [3 x i64*] [i64* @g_307, i64* @g_1633, i64* @g_1633], [3 x i64*] [i64* @g_1633, i64* @g_307, i64* @g_307], [3 x i64*] [i64* @g_307, i64* null, i64* null], [3 x i64*] [i64* @g_1399, i64* @g_1399, i64* @g_17], [3 x i64*] [i64* @g_17, i64* null, i64* @g_1633], [3 x i64*] [i64* @g_1633, i64* @g_1399, i64* @g_1633]], [10 x [3 x i64*]] [[3 x i64*] [i64* @g_307, i64* null, i64* @g_17], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_17, i64* @g_1633, i64* @g_17], [3 x i64*] [i64* @g_17, i64* @g_17, i64* @g_1633], [3 x i64*] [i64* @g_307, i64* @g_307, i64* @g_1633], [3 x i64*] [i64* @g_17, i64* @g_307, i64* @g_17], [3 x i64*] [i64* @g_307, i64* @g_1399, i64* null], [3 x i64*] [i64* @g_17, i64* @g_1399, i64* @g_307], [3 x i64*] [i64* @g_17, i64* @g_17, i64* @g_1633], [3 x i64*] [i64* @g_17, i64* @g_1399, i64* @g_17]]], align 16
@g_1614 = internal global i8***** @g_1326, align 8
@g_1027 = internal global i64***** @g_1028, align 8
@g_1641 = internal global i16* @g_1642, align 8
@g_1864 = internal global [1 x [2 x [6 x i32*]]] [[2 x [6 x i32*]] [[6 x i32*] [i32* @g_895, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* @g_895, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*), i32* @g_895], [6 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*), i32* @g_118, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*), i32* null]]], align 16
@g_1326 = internal global i8**** @g_1327, align 8
@g_1327 = internal global i8*** null, align 8
@__const.func_97.l_682 = private unnamed_addr constant [2 x [2 x [8 x i32]]] [[2 x [8 x i32]] [[8 x i32] [i32 4, i32 1058822096, i32 1058822096, i32 4, i32 1058822096, i32 1058822096, i32 4, i32 1058822096], [8 x i32] [i32 4, i32 4, i32 7, i32 4, i32 4, i32 7, i32 4, i32 4]], [2 x [8 x i32]] [[8 x i32] [i32 1058822096, i32 4, i32 1058822096, i32 1058822096, i32 4, i32 1058822096, i32 1058822096, i32 4], [8 x i32] [i32 4, i32 1058822096, i32 1058822096, i32 4, i32 1058822096, i32 1058822096, i32 4, i32 1058822096]]], align 16
@__const.func_97.l_708 = private unnamed_addr constant [9 x [2 x i32]] [[2 x i32] [i32 761593479, i32 8], [2 x i32] [i32 -761117002, i32 761593479], [2 x i32] [i32 8, i32 -4], [2 x i32] [i32 8, i32 761593479], [2 x i32] [i32 -761117002, i32 8], [2 x i32] [i32 761593479, i32 -4], [2 x i32] [i32 -1700995670, i32 -1700995670], [2 x i32] [i32 -761117002, i32 -1700995670], [2 x i32] [i32 -1700995670, i32 -4]], align 16
@__const.func_97.l_734 = private unnamed_addr constant [9 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*)], align 16
@__const.func_97.l_676 = private unnamed_addr constant [9 x i32*] [i32* @g_118, i32* @g_58, i32* @g_58, i32* @g_118, i32* @g_58, i32* @g_58, i32* @g_118, i32* @g_58, i32* @g_58], align 16
@g_590 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), align 8
@g_730 = internal global [4 x [10 x [6 x i16**]]] [[10 x [6 x i16**]] [[6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** null], [6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** null], [6 x i16**] [i16** @g_731, i16** @g_731, i16** null, i16** @g_731, i16** null, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** null, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** null, i16** @g_731]], [10 x [6 x i16**]] [[6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** null, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** null], [6 x i16**] [i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** null, i16** null, i16** null, i16** null, i16** @g_731, i16** @g_731], [6 x i16**] [i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** null]], [10 x [6 x i16**]] [[6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** null, i16** null, i16** @g_731, i16** @g_731, i16** null, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** @g_731], [6 x i16**] [i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** null, i16** null, i16** null, i16** @g_731, i16** @g_731]], [10 x [6 x i16**]] [[6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** null], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** null, i16** @g_731, i16** @g_731, i16** null, i16** null, i16** @g_731], [6 x i16**] [i16** @g_731, i16** null, i16** @g_731, i16** null, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** null], [6 x i16**] [i16** @g_731, i16** @g_731, i16** null, i16** @g_731, i16** null, i16** @g_731], [6 x i16**] [i16** null, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** null], [6 x i16**] [i16** null, i16** @g_731, i16** null, i16** null, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731], [6 x i16**] [i16** @g_731, i16** @g_731, i16** @g_731, i16** @g_731, i16** null, i16** @g_731]]], align 16
@__const.func_97.l_751 = private unnamed_addr constant [10 x [8 x [3 x i32]]] [[8 x [3 x i32]] [[3 x i32] [i32 3, i32 4, i32 -1141591079], [3 x i32] [i32 64353889, i32 -322186305, i32 8], [3 x i32] [i32 0, i32 4, i32 -1], [3 x i32] [i32 1913744899, i32 1817184433, i32 1], [3 x i32] [i32 -2071191432, i32 1827131781, i32 816362799], [3 x i32] [i32 -1100004013, i32 -1213562384, i32 1827131781], [3 x i32] [i32 -1141591079, i32 -1, i32 0], [3 x i32] [i32 4, i32 -1212291351, i32 468262653]], [8 x [3 x i32]] [[3 x i32] [i32 4, i32 -277633266, i32 -1100004013], [3 x i32] [i32 -1141591079, i32 -1, i32 -1], [3 x i32] [i32 -1100004013, i32 -1100004013, i32 706040034], [3 x i32] [i32 -2071191432, i32 816362799, i32 291233973], [3 x i32] [i32 1913744899, i32 1674993120, i32 3], [3 x i32] [i32 0, i32 -5, i32 922363550], [3 x i32] [i32 64353889, i32 1913744899, i32 3], [3 x i32] [i32 3, i32 -8, i32 291233973]], [8 x [3 x i32]] [[3 x i32] [i32 -1212291351, i32 -1141591079, i32 706040034], [3 x i32] [i32 -889651871, i32 -4, i32 -1], [3 x i32] [i32 -322186305, i32 1, i32 -1100004013], [3 x i32] [i32 -2115121621, i32 706040034, i32 468262653], [3 x i32] [i32 1827131781, i32 706040034, i32 0], [3 x i32] [i32 -1, i32 1, i32 1827131781], [3 x i32] [i32 816362799, i32 -4, i32 816362799], [3 x i32] [i32 922363550, i32 -1141591079, i32 1]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 -8, i32 -1], [3 x i32] [i32 1, i32 -277633266, i32 64353889], [3 x i32] [i32 4, i32 -245285109, i32 0], [3 x i32] [i32 1, i32 4, i32 1913744899], [3 x i32] [i32 3, i32 -889651871, i32 -2071191432], [3 x i32] [i32 1674993120, i32 -1, i32 -1100004013], [3 x i32] [i32 -889651871, i32 468262653, i32 -1141591079], [3 x i32] [i32 816362799, i32 -1141591079, i32 4]], [8 x [3 x i32]] [[3 x i32] [i32 -322186305, i32 -1, i32 4], [3 x i32] [i32 -2071191432, i32 -1213562384, i32 -1141591079], [3 x i32] [i32 706040034, i32 -1100004013, i32 -1100004013], [3 x i32] [i32 1, i32 -322186305, i32 -2071191432], [3 x i32] [i32 -1, i32 -1, i32 1913744899], [3 x i32] [i32 -8, i32 -1, i32 0], [3 x i32] [i32 -4, i32 706040034, i32 64353889], [3 x i32] [i32 -2115121621, i32 -1, i32 3]], [8 x [3 x i32]] [[3 x i32] [i32 -277633266, i32 -1, i32 -1212291351], [3 x i32] [i32 1817184433, i32 -322186305, i32 -889651871], [3 x i32] [i32 -1, i32 -1100004013, i32 -322186305], [3 x i32] [i32 0, i32 -1213562384, i32 -2115121621], [3 x i32] [i32 -1, i32 -1, i32 1827131781], [3 x i32] [i32 -1, i32 -1141591079, i32 -1], [3 x i32] [i32 0, i32 468262653, i32 816362799], [3 x i32] [i32 -1, i32 -1, i32 922363550]], [8 x [3 x i32]] [[3 x i32] [i32 1817184433, i32 -889651871, i32 -1], [3 x i32] [i32 -277633266, i32 4, i32 -8], [3 x i32] [i32 -2115121621, i32 -245285109, i32 1674993120], [3 x i32] [i32 -4, i32 -277633266, i32 -8], [3 x i32] [i32 -8, i32 1, i32 -1], [3 x i32] [i32 -1, i32 0, i32 922363550], [3 x i32] [i32 1, i32 -1, i32 816362799], [3 x i32] [i32 706040034, i32 1913744899, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 -2071191432, i32 922363550, i32 1827131781], [3 x i32] [i32 -322186305, i32 922363550, i32 -2115121621], [3 x i32] [i32 816362799, i32 1913744899, i32 -322186305], [3 x i32] [i32 -889651871, i32 -1, i32 -889651871], [3 x i32] [i32 1674993120, i32 0, i32 -1212291351], [3 x i32] [i32 3, i32 1, i32 3], [3 x i32] [i32 1, i32 -277633266, i32 64353889], [3 x i32] [i32 4, i32 -245285109, i32 0]], [8 x [3 x i32]] [[3 x i32] [i32 1, i32 4, i32 1913744899], [3 x i32] [i32 3, i32 -889651871, i32 -2071191432], [3 x i32] [i32 1674993120, i32 -1, i32 -1100004013], [3 x i32] [i32 -889651871, i32 468262653, i32 -1141591079], [3 x i32] [i32 816362799, i32 -1141591079, i32 4], [3 x i32] [i32 -322186305, i32 -1, i32 4], [3 x i32] [i32 -2071191432, i32 -1213562384, i32 -1141591079], [3 x i32] [i32 706040034, i32 -1100004013, i32 -1100004013]], [8 x [3 x i32]] [[3 x i32] [i32 1, i32 -322186305, i32 -2071191432], [3 x i32] [i32 -1, i32 -1, i32 1913744899], [3 x i32] [i32 -8, i32 -1, i32 0], [3 x i32] [i32 -4, i32 706040034, i32 64353889], [3 x i32] [i32 -2115121621, i32 -1, i32 3], [3 x i32] [i32 -277633266, i32 -1, i32 -1212291351], [3 x i32] [i32 1817184433, i32 -322186305, i32 -889651871], [3 x i32] [i32 -1, i32 -1100004013, i32 -322186305]]], align 16
@g_746 = internal global i32***** @g_747, align 8
@__const.func_97.l_771 = private unnamed_addr constant [7 x [4 x i32]] [[4 x i32] [i32 -1981197, i32 404453831, i32 404453831, i32 -1981197], [4 x i32] [i32 -1981197, i32 404453831, i32 404453831, i32 -1981197], [4 x i32] [i32 -1981197, i32 404453831, i32 404453831, i32 -1981197], [4 x i32] [i32 -1981197, i32 404453831, i32 404453831, i32 -1981197], [4 x i32] [i32 -1981197, i32 404453831, i32 404453831, i32 -1981197], [4 x i32] [i32 -1981197, i32 404453831, i32 404453831, i32 -1981197], [4 x i32] [i32 -1981197, i32 404453831, i32 404453831, i32 -1981197]], align 16
@g_747 = internal constant i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [7 x i32***]]* @g_748 to i8*), i64 144) to i32****), align 8
@g_748 = internal global [6 x [7 x i32***]] [[7 x i32***] [i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** null, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null], [7 x i32***] [i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32**]* @g_201 to i8*), i64 8) to i32***), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32**]* @g_201 to i8*), i64 8) to i32***)], [7 x i32***] [i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** null, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null], [7 x i32***] [i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0)], [7 x i32***] [i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** null], [7 x i32***] [i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32**]* @g_201 to i8*), i64 8) to i32***), i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32**]* @g_201 to i8*), i64 8) to i32***)]], align 16
@g_1028 = internal constant i64**** @g_1029, align 8
@g_1878 = internal global [1 x i8*] [i8* @g_265], align 8
@g_1030 = internal global i64** getelementptr inbounds ([4 x i64*], [4 x i64*]* @g_394, i32 0, i32 0), align 8
@g_1517 = internal global [4 x i32***] [i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0)], align 16
@constinit.38 = private global [7 x i32*] [i32* @g_895, i32* null, i32* @g_895, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 12) to i32*), i32* @g_895, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*)], align 8
@constinit.39 = private global [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 16) to i32*), i32* @g_895, i32* @g_118, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* @g_58, i32* @g_58, i32* @g_58], align 8
@constinit.40 = private global [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*), i32* null, i32* @g_895, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* @g_58, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 24) to i32*), i32* @g_895], align 8
@constinit.41 = private global [7 x i32*] [i32* @g_129, i32* @g_129, i32* @g_118, i32* null, i32* @g_129, i32* null, i32* @g_895], align 8
@constinit.42 = private global [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 16) to i32*), i32* @g_129, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 16) to i32*), i32* @g_58, i32* @g_58, i32* @g_118, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*)], align 8
@constinit.43 = private global [7 x i32*] [i32* @g_118, i32* @g_129, i32* @g_129, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 12) to i32*), i32* @g_129, i32* @g_129, i32* @g_118], align 8
@constinit.44 = private global [7 x i32*] [i32* @g_895, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_112 to i8*), i64 8) to i32*), i32* null], align 8
@__const.func_24.l_44 = private unnamed_addr constant [4 x [3 x i16*]] [[3 x i16*] [i16* @g_45, i16* null, i16* @g_45], [3 x i16*] zeroinitializer, [3 x i16*] [i16* @g_45, i16* null, i16* @g_45], [3 x i16*] zeroinitializer], align 16
@g_1130 = internal constant i8* @g_1131, align 8
@.str.45 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %12, %2
  call void @platform_main_begin()
  call void @crc32_gentab()
  %20 = call signext i8 @func_1()
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %37, %19
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* @g_4, i64 0, i64 %26
  %28 = load volatile i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i64, i64* @g_17, align 8
  %42 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %43 = load i16, i16* @g_45, align 2
  %44 = zext i16 %43 to i64
  %45 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %46 = load i32, i32* @g_58, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %77, %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 7
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [7 x [10 x i32]], [7 x [10 x i32]]* @g_73, i64 0, i64 %58
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %59, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %53

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %49

80:                                               ; preds = %49
  %81 = load i32, i32* @g_96, align 4
  %82 = zext i32 %81 to i64
  %83 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  %84 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  %85 = load i32, i32* @g_108, align 4
  %86 = zext i32 %85 to i64
  %87 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %104, %80
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1 x i16], [1 x i16]* @g_111, i64 0, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i64
  %97 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %91
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %88

107:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %124, %107
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 7
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [7 x i32], [7 x i32]* @g_112, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %117)
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %111
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %108

127:                                              ; preds = %108
  %128 = load i32, i32* @g_115, align 4
  %129 = zext i32 %128 to i64
  %130 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %130)
  %131 = load i32, i32* @g_118, align 4
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %133)
  %134 = load i64, i64* @g_119, align 8
  %135 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %135)
  %136 = load i32, i32* @g_129, align 4
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %138)
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %179, %127
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 8
  br i1 %141, label %142, label %182

142:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %175, %142
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 4
  br i1 %145, label %146, label %178

146:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %171, %146
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %148, 8
  br i1 %149, label %150, label %174

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 %152
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* %153, i64 0, i64 %155
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [8 x i8], [8 x i8]* %156, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i64
  %162 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %162)
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %150
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %150
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %147

174:                                              ; preds = %147
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %143

178:                                              ; preds = %143
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %139

182:                                              ; preds = %139
  %183 = load i64, i64* @g_187, align 8
  %184 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %184)
  %185 = load i32, i32* @g_205, align 4
  %186 = sext i32 %185 to i64
  %187 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %187)
  %188 = load i16, i16* @g_242, align 2
  %189 = zext i16 %188 to i64
  %190 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %190)
  %191 = load i8, i8* @g_265, align 1
  %192 = zext i8 %191 to i64
  %193 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %193)
  %194 = load i64, i64* @g_307, align 8
  %195 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %195)
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %211, %182
  %197 = load i32, i32* %6, align 4
  %198 = icmp slt i32 %197, 10
  br i1 %198, label %199, label %214

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [10 x i64], [10 x i64]* @g_442, i64 0, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %204)
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load i32, i32* %6, align 4
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %207, %199
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %196

214:                                              ; preds = %196
  %215 = load i64, i64* @g_894, align 8
  %216 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %216)
  %217 = load i32, i32* @g_895, align 4
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %219)
  %220 = load i16, i16* @g_1036, align 2
  %221 = sext i16 %220 to i64
  %222 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %222)
  %223 = load i8, i8* @g_1131, align 1
  %224 = zext i8 %223 to i64
  %225 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i32 %225)
  %226 = load i32, i32* @g_1143, align 4
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %228)
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %257, %214
  %230 = load i32, i32* %6, align 4
  %231 = icmp slt i32 %230, 5
  br i1 %231, label %232, label %260

232:                                              ; preds = %229
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %253, %232
  %234 = load i32, i32* %7, align 4
  %235 = icmp slt i32 %234, 2
  br i1 %235, label %236, label %256

236:                                              ; preds = %233
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [5 x [2 x i16]], [5 x [2 x i16]]* @g_1196, i64 0, i64 %238
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [2 x i16], [2 x i16]* %239, i64 0, i64 %241
  %243 = load i16, i16* %242, align 2
  %244 = sext i16 %243 to i64
  %245 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %245)
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %236
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %236
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %7, align 4
  br label %233

256:                                              ; preds = %233
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %229

260:                                              ; preds = %229
  %261 = load i32, i32* @g_1295, align 4
  %262 = zext i32 %261 to i64
  %263 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %263)
  %264 = load i8, i8* @g_1299, align 1
  %265 = sext i8 %264 to i64
  %266 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i32 %266)
  %267 = load i32, i32* @g_1362, align 4
  %268 = zext i32 %267 to i64
  %269 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 %269)
  %270 = load i64, i64* @g_1399, align 8
  %271 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i32 %271)
  %272 = load i64, i64* @g_1633, align 8
  %273 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 %273)
  %274 = load volatile i16, i16* @g_1642, align 2
  %275 = zext i16 %274 to i64
  %276 = load i32, i32* %9, align 4
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 %276)
  %277 = load i32, i32* @crc32_context, align 4
  %278 = zext i32 %277 to i64
  %279 = xor i64 %278, 4294967295
  %280 = trunc i64 %279 to i32
  %281 = load i32, i32* %9, align 4
  call void @platform_main_end(i32 %280, i32 %281)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_gentab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 -306674912, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %1, align 4
  store i32 8, i32* %4, align 4
  br label %10

10:                                               ; preds = %25, %8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = lshr i32 %18, 1
  %20 = xor i32 %19, -306674912
  store i32 %20, i32* %1, align 4
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %1, align 4
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @func_1() #0 {
  %1 = alloca [8 x [6 x i32]], align 16
  %2 = alloca i64, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [8 x [6 x i32]]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x [6 x i32]]* @__const.func_1.l_18 to i8*), i64 192, i1 false)
  store i64 -3175899432184205809, i64* %2, align 8
  %7 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = load volatile i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_4, i64 0, i64 6), align 8
  %9 = sext i32 %8 to i64
  %10 = icmp uge i64 1, %9
  %11 = zext i1 %10 to i32
  %12 = trunc i32 %11 to i16
  %13 = load i64, i64* @g_17, align 8
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %1, i64 0, i64 0
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @g_17, align 8
  %20 = load i64, i64* @g_17, align 8
  %21 = call i64 @safe_mod_func_uint64_t_u_u(i64 %19, i64 %20)
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %0
  %24 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %1, i64 0, i64 0
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = load i64, i64* %2, align 8
  %28 = trunc i64 %27 to i16
  %29 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %28, i32 14)
  %30 = zext i16 %29 to i32
  %31 = load i64, i64* %2, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @g_17, align 8
  %34 = load i64, i64* @g_17, align 8
  %35 = trunc i64 %34 to i16
  %36 = call zeroext i16 @func_24(i32 %26, i32 %30, i32 %32, i64 %33, i16 zeroext %35)
  %37 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %36, i16 zeroext -22450)
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %23
  %42 = phi i1 [ true, %23 ], [ true, %40 ]
  br label %43

43:                                               ; preds = %41, %0
  %44 = phi i1 [ true, %0 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  %46 = call zeroext i16 @func_13(i8 zeroext %14, i32 %17, i32 %45)
  %47 = zext i16 %46 to i64
  %48 = icmp ule i64 %47, 1
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** @g_1622, align 8
  store i32 %49, i32* %50, align 4
  %51 = sext i32 %49 to i64
  %52 = icmp ne i64 %51, 173396396
  %53 = zext i1 %52 to i32
  %54 = trunc i32 %53 to i8
  %55 = load i8**, i8*** @g_1129, align 8
  %56 = load i8*, i8** %55, align 8
  store i8 %54, i8* %56, align 1
  %57 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %1, i64 0, i64 5
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %57, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = zext i32 %59 to i64
  %61 = and i64 %60, 0
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %1, i64 0, i64 0
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %63, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %62, i32 %65)
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %1, i64 0, i64 5
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %68, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @safe_mod_func_uint32_t_u_u(i32 %67, i32 %70)
  %72 = call i32 @safe_sub_func_int32_t_s_s(i32 %71, i32 1208540603)
  %73 = trunc i32 %72 to i16
  %74 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %12, i16 zeroext %73)
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %1, i64 0, i64 0
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %79, i64 0, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = trunc i32 %81 to i8
  ret i8 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transparent_crc(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  call void @crc32_8bytes(i64 %7)
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @crc32_context, align 4
  %13 = zext i32 %12 to i64
  %14 = xor i64 %13, 4294967295
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i64 0, i64 0), i8* %11, i64 %14)
  br label %16

16:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
declare void @platform_main_end(i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i32
  %9 = mul i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_sub_func_int32_t_s_s(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = xor i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = xor i32 %9, %10
  %12 = and i32 %11, -2147483648
  %13 = xor i32 %8, %12
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %15, %16
  %18 = and i32 %7, %17
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %23, %24
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  br label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = urem i32 %10, %11
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp uge i32 %5, 32
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 255, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7, %2
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  br label %21

16:                                               ; preds = %7
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %18, %19
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %15, %13 ], [ %20, %16 ]
  %23 = trunc i32 %22 to i8
  ret i8 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @func_13(i8 zeroext %0, i32 %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i16**], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32***, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i16, align 2
  %25 = alloca i32***, align 8
  %26 = alloca i32****, align 8
  %27 = alloca i64*****, align 8
  %28 = alloca i32***, align 8
  %29 = alloca i32, align 4
  %30 = alloca [3 x [8 x i32*]], align 16
  %31 = alloca i64*****, align 8
  %32 = alloca i16, align 2
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8, align 1
  %36 = alloca i32*, align 8
  %37 = alloca i16*, align 8
  %38 = alloca i16**, align 8
  %39 = alloca i16***, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i64*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32*, align 8
  %45 = alloca [3 x i32**], align 16
  %46 = alloca [9 x i32***], align 16
  %47 = alloca i32****, align 8
  %48 = alloca i32*****, align 8
  %49 = alloca i64, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca [4 x [9 x [7 x i32]]], align 16
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i64**, align 8
  %57 = alloca i32*, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca [9 x i32], align 16
  %61 = alloca i32, align 4
  %62 = alloca [7 x i32], align 16
  %63 = alloca i32, align 4
  %64 = alloca i64*, align 8
  %65 = alloca i32, align 4
  %66 = alloca i32****, align 8
  %67 = alloca [5 x [5 x [9 x i8*]]], align 16
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %72 = bitcast [10 x i16**]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %72, i8* align 16 bitcast ([10 x i16**]* @__const.func_13.l_1889 to i8*), i64 80, i1 false)
  store i32 1140134092, i32* %9, align 4
  store i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i64 0, i64 0), i32**** %10, align 8
  store i16 2, i16* %11, align 2
  store i16* @g_45, i16** %12, align 8
  store i32 9, i32* %13, align 4
  store i32 -67288578, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1836133574, i32* %16, align 4
  store i32 1321207676, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i8 69, i8* %21, align 1
  store i32 -2114619075, i32* %22, align 4
  store i64 0, i64* %23, align 8
  store i16 4, i16* %24, align 2
  store i32*** @g_170, i32**** %25, align 8
  store i32**** %25, i32***** %26, align 8
  store i64***** @g_669, i64****** %27, align 8
  store i32*** @g_170, i32**** %28, align 8
  store i32 0, i32* %29, align 4
  br label %73

73:                                               ; preds = %80, %3
  %74 = load i32, i32* %29, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %29, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %78
  store i32 477845022, i32* %79, align 4
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %29, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %29, align 4
  br label %73

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %1001, %978, %363, %83
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = and i64 %86, -8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* @g_187, align 8
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ true, %84 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds [10 x i16**], [10 x i16**]* %8, i64 0, i64 2
  %96 = load i16**, i16*** %95, align 16
  %97 = icmp ne i16** @g_731, %96
  %98 = zext i1 %97 to i32
  %99 = trunc i32 %98 to i8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i8, i8* %5, align 1
  %103 = zext i8 %102 to i64
  %104 = and i64 %103, 1
  %105 = trunc i64 %104 to i16
  %106 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %105, i16 signext -5)
  %107 = sext i16 %106 to i32
  %108 = load i8, i8* @g_1131, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = call i64 @safe_sub_func_int64_t_s_s(i64 %112, i64 -6661085234308845259)
  %114 = trunc i64 %113 to i8
  %115 = load i32, i32* %9, align 4
  %116 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %114, i32 %115)
  %117 = zext i8 %116 to i32
  %118 = xor i32 %101, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = icmp sle i32 %100, %120
  %122 = zext i1 %121 to i32
  %123 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %99, i8 zeroext -6)
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %94, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %9, align 4
  %128 = call i32* @func_36(i32 %126, i32 %127)
  %129 = load i32**, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), align 8
  store i32* %128, i32** %129, align 8
  %130 = load i16*, i16** @g_731, align 8
  store i16 -3626, i16* %130, align 2
  %131 = load i32, i32* %9, align 4
  %132 = trunc i32 %131 to i16
  %133 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext -3626, i16 signext %132)
  %134 = trunc i16 %133 to i8
  %135 = load i32***, i32**** @g_1370, align 8
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* null, %137
  %139 = zext i1 %138 to i32
  %140 = trunc i32 %139 to i16
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %9, align 4
  %144 = load i32***, i32**** %10, align 8
  %145 = icmp ne i32*** null, %144
  br i1 %145, label %151, label %146

146:                                              ; preds = %92
  %147 = load i64*, i64** @g_1700, align 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** @g_1700, align 8
  store i64 %148, i64* %149, align 8
  %150 = icmp ne i64 %148, 0
  br label %151

151:                                              ; preds = %146, %92
  %152 = phi i1 [ true, %92 ], [ %150, %146 ]
  %153 = zext i1 %152 to i32
  %154 = icmp sge i64 %142, 1572
  %155 = zext i1 %154 to i32
  %156 = trunc i32 %155 to i16
  %157 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %140, i16 zeroext %156)
  %158 = zext i16 %157 to i32
  %159 = load i32, i32* %7, align 4
  %160 = icmp sgt i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i16, i16* %11, align 2
  %166 = zext i16 %165 to i32
  %167 = icmp sgt i32 %164, %166
  %168 = zext i1 %167 to i32
  %169 = load i8, i8* %5, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp sgt i32 %168, %170
  %172 = zext i1 %171 to i32
  %173 = load i16*, i16** %12, align 8
  %174 = load i16, i16* %173, align 2
  %175 = zext i16 %174 to i32
  %176 = xor i32 %175, %172
  %177 = trunc i32 %176 to i16
  store i16 %177, i16* %173, align 2
  %178 = zext i16 %177 to i32
  %179 = load i8, i8* %5, align 1
  %180 = zext i8 %179 to i32
  %181 = xor i32 %178, %180
  %182 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %134, i32 %181)
  %183 = zext i8 %182 to i32
  %184 = icmp slt i32 %183, 5
  %185 = zext i1 %184 to i32
  %186 = trunc i32 %185 to i16
  %187 = load i32, i32* %9, align 4
  %188 = trunc i32 %187 to i16
  %189 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %186, i16 signext %188)
  %190 = icmp ne i16 %189, 0
  br i1 %190, label %191, label %984

191:                                              ; preds = %151
  %192 = bitcast [3 x [8 x i32*]]* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %192, i8* align 16 bitcast ([3 x [8 x i32*]]* @__const.func_13.l_1908 to i8*), i64 192, i1 false)
  store i64***** @g_669, i64****** %31, align 8
  store i16 -21642, i16* %32, align 2
  %193 = load i16, i16* %24, align 2
  %194 = add i16 %193, -1
  store i16 %194, i16* %24, align 2
  store i64 0, i64* @g_119, align 8
  br label %195

195:                                              ; preds = %530, %191
  %196 = load i64, i64* @g_119, align 8
  %197 = icmp eq i64 %196, 11
  br i1 %197, label %198, label %533

198:                                              ; preds = %195
  store i8 20, i8* %35, align 1
  store i32* @g_1295, i32** %36, align 8
  store i16* null, i16** %37, align 8
  store i16** %37, i16*** %38, align 8
  store i16*** %38, i16**** %39, align 8
  store i32 0, i32* %40, align 4
  store i32 -9, i32* %41, align 4
  store i64* @g_307, i64** %42, align 8
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = load i8, i8* %5, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %201, %198
  %206 = phi i1 [ true, %198 ], [ %204, %201 ]
  %207 = zext i1 %206 to i32
  %208 = and i32 %207, 1
  %209 = load i32, i32* %7, align 4
  %210 = load i8, i8* %35, align 1
  %211 = zext i8 %210 to i32
  %212 = load i32*, i32** %36, align 8
  store i32 %211, i32* %212, align 4
  %213 = zext i32 %211 to i64
  %214 = icmp eq i64 4294967293, %213
  %215 = zext i1 %214 to i32
  %216 = sext i32 %215 to i64
  %217 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext 1, i32 14)
  %218 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %217, i16 zeroext -31305)
  %219 = zext i16 %218 to i64
  %220 = load i64*, i64** @g_1700, align 8
  %221 = load i64, i64* %220, align 8
  %222 = and i64 %221, %219
  store i64 %222, i64* %220, align 8
  %223 = icmp ne i64 %216, %222
  %224 = zext i1 %223 to i32
  %225 = sext i32 %224 to i64
  %226 = icmp sgt i64 %225, -1
  br i1 %226, label %227, label %228

227:                                              ; preds = %205
  br label %228

228:                                              ; preds = %227, %205
  %229 = phi i1 [ false, %205 ], [ true, %227 ]
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), align 8
  %232 = trunc i32 %231 to i16
  %233 = load i8, i8* %5, align 1
  %234 = zext i8 %233 to i16
  %235 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %232, i16 zeroext %234)
  %236 = zext i16 %235 to i32
  %237 = load i16*, i16** @g_731, align 8
  %238 = load i16, i16* %237, align 2
  %239 = sext i16 %238 to i32
  %240 = and i32 %239, %236
  %241 = trunc i32 %240 to i16
  store i16 %241, i16* %237, align 2
  %242 = sext i16 %241 to i32
  %243 = icmp eq i32 %209, %242
  %244 = zext i1 %243 to i32
  %245 = trunc i32 %244 to i8
  %246 = load i32, i32* %6, align 4
  %247 = trunc i32 %246 to i8
  %248 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %245, i8 signext %247)
  %249 = load i32*, i32** @g_1622, align 8
  store i32 0, i32* %249, align 4
  %250 = load i16***, i16**** %39, align 8
  %251 = icmp ne i16*** @g_1640, %250
  %252 = zext i1 %251 to i32
  %253 = icmp ne i32 %208, %252
  %254 = zext i1 %253 to i32
  %255 = load i32**, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), align 8
  %256 = load i32*, i32** %255, align 8
  %257 = load i32**, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), align 8
  store i32* %256, i32** %257, align 8
  %258 = load i8, i8* %35, align 1
  %259 = icmp ne i8 %258, 0
  br i1 %259, label %260, label %338

260:                                              ; preds = %228
  store i64 -7557907766252687672, i64* %43, align 8
  store i32* @g_1295, i32** %44, align 8
  %261 = getelementptr inbounds [3 x i32**], [3 x i32**]* %45, i64 0, i64 0
  store i32** %44, i32*** %261, align 8
  %262 = getelementptr inbounds i32**, i32*** %261, i64 1
  store i32** %44, i32*** %262, align 8
  %263 = getelementptr inbounds i32**, i32*** %262, i64 1
  store i32** %44, i32*** %263, align 8
  %264 = getelementptr inbounds [9 x i32***], [9 x i32***]* %46, i64 0, i64 6
  store i32**** %264, i32***** %47, align 8
  store i32***** %47, i32****** %48, align 8
  store i64 -6343774828087433677, i64* %49, align 8
  store i32 0, i32* %50, align 4
  br label %265

265:                                              ; preds = %273, %260
  %266 = load i32, i32* %50, align 4
  %267 = icmp slt i32 %266, 9
  br i1 %267, label %268, label %276

268:                                              ; preds = %265
  %269 = getelementptr inbounds [3 x i32**], [3 x i32**]* %45, i64 0, i64 0
  %270 = load i32, i32* %50, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [9 x i32***], [9 x i32***]* %46, i64 0, i64 %271
  store i32*** %269, i32**** %272, align 8
  br label %273

273:                                              ; preds = %268
  %274 = load i32, i32* %50, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %50, align 4
  br label %265

276:                                              ; preds = %265
  %277 = load i32, i32* %6, align 4
  %278 = trunc i32 %277 to i8
  %279 = load i64, i64* %43, align 8
  %280 = load i32*****, i32****** %48, align 8
  store i32**** null, i32***** %280, align 8
  %281 = load i32****, i32***** %26, align 8
  %282 = icmp ne i32**** null, %281
  br i1 %282, label %283, label %314

283:                                              ; preds = %276
  %284 = load i64*, i64** @g_1700, align 8
  %285 = load i64, i64* %284, align 8
  %286 = load i64***, i64**** @g_1029, align 8
  %287 = load i64**, i64*** %286, align 8
  %288 = load i64*, i64** %287, align 8
  %289 = load i64, i64* %288, align 8
  %290 = xor i64 %285, %289
  %291 = icmp ule i64 %290, 4204320086856736329
  %292 = zext i1 %291 to i32
  %293 = trunc i32 %292 to i8
  %294 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %293, i8 zeroext -9)
  %295 = zext i8 %294 to i16
  %296 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %295, i32 7)
  %297 = sext i16 %296 to i64
  %298 = load i64, i64* %49, align 8
  %299 = icmp ugt i64 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %283
  br label %301

301:                                              ; preds = %300, %283
  %302 = phi i1 [ false, %283 ], [ true, %300 ]
  %303 = zext i1 %302 to i32
  %304 = trunc i32 %303 to i8
  %305 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %304, i8 zeroext -1)
  %306 = zext i8 %305 to i32
  %307 = xor i32 %306, -1
  store i32 %307, i32* %40, align 4
  %308 = load i64*****, i64****** %31, align 8
  %309 = load i64*****, i64****** %31, align 8
  %310 = icmp eq i64***** %308, %309
  %311 = zext i1 %310 to i32
  %312 = sext i32 %311 to i64
  %313 = icmp ne i64 7933386411778289907, %312
  br label %314

314:                                              ; preds = %301, %276
  %315 = phi i1 [ false, %276 ], [ %313, %301 ]
  %316 = zext i1 %315 to i32
  %317 = load i64, i64* %49, align 8
  %318 = icmp eq i64 %317, 0
  %319 = zext i1 %318 to i32
  %320 = load i32, i32* %7, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  %323 = zext i1 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = icmp ne i64 1, %324
  %326 = zext i1 %325 to i32
  %327 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %278, i32 %326)
  %328 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %327, i8 zeroext -25)
  %329 = zext i8 %328 to i16
  %330 = load i16*, i16** @g_731, align 8
  %331 = load i16, i16* %330, align 2
  %332 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %329, i16 zeroext %331)
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* %41, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %41, align 4
  %336 = load i8, i8* %35, align 1
  %337 = zext i8 %336 to i16
  store i16 %337, i16* %4, align 2
  br label %1005

338:                                              ; preds = %228
  store i32 -1822384054, i32* %51, align 4
  %339 = bitcast [4 x [9 x [7 x i32]]]* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %339, i8* align 16 bitcast ([4 x [9 x [7 x i32]]]* @__const.func_13.l_2004 to i8*), i64 1008, i1 false)
  store i32 0, i32* @g_108, align 4
  br label %340

340:                                              ; preds = %355, %338
  %341 = load i32, i32* @g_108, align 4
  %342 = icmp ugt i32 %341, 36
  br i1 %342, label %343, label %360

343:                                              ; preds = %340
  %344 = load i32*, i32** @g_1622, align 8
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  br label %360

348:                                              ; preds = %343
  %349 = load i32, i32* %6, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  br label %360

352:                                              ; preds = %348
  %353 = load i32, i32* %7, align 4
  %354 = trunc i32 %353 to i16
  store i16 %354, i16* %4, align 2
  br label %1005

355:                                              ; No predecessors!
  %356 = load i32, i32* @g_108, align 4
  %357 = trunc i32 %356 to i16
  %358 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %357, i16 signext 1)
  %359 = sext i16 %358 to i32
  store i32 %359, i32* @g_108, align 4
  br label %340

360:                                              ; preds = %351, %347, %340
  %361 = load i8, i8* %35, align 1
  %362 = icmp ne i8 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  br label %84

364:                                              ; preds = %360
  %365 = load i32, i32* %51, align 4
  %366 = add i32 %365, -1
  store i32 %366, i32* %51, align 4
  store i64 22, i64* @g_1399, align 8
  br label %367

367:                                              ; preds = %523, %364
  %368 = load i64, i64* @g_1399, align 8
  %369 = icmp uge i64 %368, 11
  br i1 %369, label %370, label %528

370:                                              ; preds = %367
  store i64** %42, i64*** %56, align 8
  store i32* @g_1143, i32** %57, align 8
  store i32 1275094820, i32* %58, align 4
  store i32 -5, i32* %59, align 4
  store i32 0, i32* %61, align 4
  br label %371

371:                                              ; preds = %378, %370
  %372 = load i32, i32* %61, align 4
  %373 = icmp slt i32 %372, 9
  br i1 %373, label %374, label %381

374:                                              ; preds = %371
  %375 = load i32, i32* %61, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [9 x i32], [9 x i32]* %60, i64 0, i64 %376
  store i32 -2078997991, i32* %377, align 4
  br label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %61, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %61, align 4
  br label %371

381:                                              ; preds = %371
  %382 = load i64*, i64** %42, align 8
  %383 = load i64**, i64*** %56, align 8
  store i64* %382, i64** %383, align 8
  %384 = icmp eq i64* @g_1633, %382
  %385 = zext i1 %384 to i32
  %386 = trunc i32 %385 to i16
  %387 = load i32*, i32** %57, align 8
  %388 = icmp eq i32* @g_205, %387
  %389 = zext i1 %388 to i32
  %390 = load i32, i32* %6, align 4
  %391 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %390, i32* %391, align 4
  %392 = icmp slt i32 %389, %390
  %393 = zext i1 %392 to i32
  %394 = trunc i32 %393 to i16
  %395 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %386, i16 signext %394)
  %396 = load i32, i32* %7, align 4
  %397 = load i16*, i16** @g_731, align 8
  %398 = load i16, i16* %397, align 2
  %399 = sext i16 %398 to i32
  %400 = or i32 %399, %396
  %401 = trunc i32 %400 to i16
  store i16 %401, i16* %397, align 2
  %402 = load i16*, i16** %12, align 8
  %403 = load i16, i16* %402, align 2
  %404 = add i16 %403, -1
  store i16 %404, i16* %402, align 2
  %405 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %401, i16 signext %404)
  %406 = sext i16 %405 to i32
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %381
  %409 = load i32, i32* %51, align 4
  %410 = icmp ne i32 %409, 0
  br label %411

411:                                              ; preds = %408, %381
  %412 = phi i1 [ true, %381 ], [ %410, %408 ]
  %413 = zext i1 %412 to i32
  %414 = trunc i32 %413 to i8
  %415 = load i32, i32* %6, align 4
  %416 = sext i32 %415 to i64
  %417 = icmp slt i64 3, %416
  %418 = zext i1 %417 to i32
  %419 = sext i32 %418 to i64
  %420 = load i64*, i64** @g_1700, align 8
  %421 = load i64, i64* %420, align 8
  %422 = and i64 %421, %419
  store i64 %422, i64* %420, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = and i64 %422, %424
  %426 = trunc i64 %425 to i8
  %427 = load i32, i32* %7, align 4
  %428 = trunc i32 %427 to i8
  %429 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %426, i8 zeroext %428)
  %430 = zext i8 %429 to i16
  %431 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %430, i32 11)
  %432 = sext i16 %431 to i32
  %433 = load i32, i32* %58, align 4
  %434 = xor i32 %432, %433
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %5, align 1
  %436 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %414, i8 zeroext %435)
  %437 = zext i8 %436 to i32
  %438 = load i32, i32* %59, align 4
  %439 = xor i32 %438, %437
  store i32 %439, i32* %59, align 4
  %440 = load i8, i8* %5, align 1
  %441 = zext i8 %440 to i32
  %442 = load i8, i8* %5, align 1
  %443 = load i32, i32* %59, align 4
  %444 = trunc i32 %443 to i16
  %445 = load i32, i32* %40, align 4
  %446 = load i32, i32* %51, align 4
  %447 = load i32, i32* %58, align 4
  %448 = sext i32 %447 to i64
  %449 = and i64 %448, 0
  %450 = trunc i64 %449 to i32
  store i32 %450, i32* %58, align 4
  %451 = load i32, i32* %7, align 4
  %452 = or i32 %451, %450
  store i32 %452, i32* %7, align 4
  %453 = load i32*, i32** @g_1244, align 8
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %452
  store i32 %455, i32* %453, align 4
  %456 = sext i32 %455 to i64
  %457 = icmp ult i64 %456, 4294967287
  %458 = zext i1 %457 to i32
  %459 = xor i32 %458, -1
  %460 = load i8, i8* %5, align 1
  %461 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %460, i8 signext 1)
  %462 = sext i8 %461 to i32
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %467, label %464

464:                                              ; preds = %411
  %465 = load i32, i32* %6, align 4
  %466 = icmp ne i32 %465, 0
  br label %467

467:                                              ; preds = %464, %411
  %468 = phi i1 [ true, %411 ], [ %466, %464 ]
  %469 = zext i1 %468 to i32
  %470 = load i32, i32* %51, align 4
  %471 = load i32, i32* %6, align 4
  %472 = icmp eq i32 %470, %471
  %473 = zext i1 %472 to i32
  %474 = icmp eq i32 %459, %473
  %475 = zext i1 %474 to i32
  %476 = sext i32 %475 to i64
  %477 = icmp eq i64 181, %476
  %478 = zext i1 %477 to i32
  %479 = load i8, i8* %5, align 1
  %480 = zext i8 %479 to i32
  %481 = icmp uge i32 %446, %480
  %482 = zext i1 %481 to i32
  %483 = or i32 %445, %482
  %484 = sext i32 %483 to i64
  %485 = icmp eq i64 %484, 4294967295
  %486 = zext i1 %485 to i32
  %487 = trunc i32 %486 to i16
  %488 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %444, i16 signext %487)
  %489 = trunc i16 %488 to i8
  %490 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %442, i8 signext %489)
  %491 = sext i8 %490 to i16
  %492 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %491, i32 10)
  %493 = zext i16 %492 to i32
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %467
  %496 = load i8, i8* %5, align 1
  %497 = zext i8 %496 to i32
  %498 = icmp ne i32 %497, 0
  br label %499

499:                                              ; preds = %495, %467
  %500 = phi i1 [ true, %467 ], [ %498, %495 ]
  %501 = zext i1 %500 to i32
  %502 = trunc i32 %501 to i16
  %503 = load i32, i32* %6, align 4
  %504 = trunc i32 %503 to i16
  %505 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %502, i16 zeroext %504)
  %506 = zext i16 %505 to i32
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %512, label %508

508:                                              ; preds = %499
  %509 = load i8, i8* %5, align 1
  %510 = zext i8 %509 to i32
  %511 = icmp ne i32 %510, 0
  br label %512

512:                                              ; preds = %508, %499
  %513 = phi i1 [ true, %499 ], [ %511, %508 ]
  %514 = zext i1 %513 to i32
  %515 = icmp slt i32 %441, %514
  %516 = zext i1 %515 to i32
  %517 = getelementptr inbounds [9 x i32], [9 x i32]* %60, i64 0, i64 2
  %518 = load i32, i32* %517, align 8
  %519 = or i32 %518, %516
  store i32 %519, i32* %517, align 8
  %520 = load i64*****, i64****** %27, align 8
  store i64***** %520, i64****** @g_668, align 8
  %521 = load i16, i16* %32, align 2
  %522 = add i16 %521, 1
  store i16 %522, i16* %32, align 2
  br label %523

523:                                              ; preds = %512
  %524 = load i64, i64* @g_1399, align 8
  %525 = trunc i64 %524 to i16
  %526 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %525, i16 signext 7)
  %527 = sext i16 %526 to i64
  store i64 %527, i64* @g_1399, align 8
  br label %367

528:                                              ; preds = %367
  br label %529

529:                                              ; preds = %528
  br label %530

530:                                              ; preds = %529
  %531 = load i64, i64* @g_119, align 8
  %532 = add nsw i64 %531, 1
  store i64 %532, i64* @g_119, align 8
  br label %195

533:                                              ; preds = %195
  %534 = icmp ne i8* %5, null
  %535 = zext i1 %534 to i32
  %536 = load i32, i32* %7, align 4
  %537 = call i32 @safe_add_func_uint32_t_u_u(i32 %535, i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = load i8, i8* %5, align 1
  %540 = zext i8 %539 to i32
  %541 = load i32, i32* %7, align 4
  %542 = sext i32 %541 to i64
  %543 = load i32, i32* %6, align 4
  %544 = icmp sgt i64 %542, 3292818747
  %545 = zext i1 %544 to i32
  %546 = load i32, i32* %7, align 4
  %547 = icmp sle i32 %545, %546
  %548 = zext i1 %547 to i32
  %549 = icmp slt i32 %540, %548
  %550 = zext i1 %549 to i32
  %551 = trunc i32 %550 to i8
  %552 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %551)
  %553 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %538, i8 signext %552)
  %554 = load i32, i32* %7, align 4
  %555 = sext i32 %554 to i64
  %556 = icmp sle i64 %555, 65
  %557 = zext i1 %556 to i32
  %558 = load i8, i8* %5, align 1
  %559 = load i32, i32* %6, align 4
  %560 = load i32, i32* %7, align 4
  %561 = icmp eq i32 %559, %560
  %562 = zext i1 %561 to i32
  %563 = load i32, i32* %7, align 4
  %564 = sext i32 %563 to i64
  %565 = icmp uge i64 4294967293, %564
  %566 = zext i1 %565 to i32
  %567 = trunc i32 %566 to i8
  %568 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %567, i32 1)
  %569 = sext i8 %568 to i32
  %570 = load i8, i8* %5, align 1
  %571 = zext i8 %570 to i32
  %572 = icmp sge i32 %569, %571
  %573 = zext i1 %572 to i32
  %574 = trunc i32 %573 to i16
  %575 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %574)
  %576 = zext i16 %575 to i32
  store i32 %576, i32* %7, align 4
  store i32 0, i32* %22, align 4
  br label %577

577:                                              ; preds = %980, %533
  %578 = load i32, i32* %22, align 4
  %579 = icmp sle i32 %578, 20
  br i1 %579, label %580, label %983

580:                                              ; preds = %577
  store i32 0, i32* %63, align 4
  br label %581

581:                                              ; preds = %588, %580
  %582 = load i32, i32* %63, align 4
  %583 = icmp slt i32 %582, 7
  br i1 %583, label %584, label %591

584:                                              ; preds = %581
  %585 = load i32, i32* %63, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [7 x i32], [7 x i32]* %62, i64 0, i64 %586
  store i32 1, i32* %587, align 4
  br label %588

588:                                              ; preds = %584
  %589 = load i32, i32* %63, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %63, align 4
  br label %581

591:                                              ; preds = %581
  %592 = icmp eq i8* null, %21
  %593 = zext i1 %592 to i32
  %594 = trunc i32 %593 to i8
  %595 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 33, i8 zeroext %594)
  %596 = icmp ne i8 %595, 0
  br i1 %596, label %597, label %969

597:                                              ; preds = %591
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_442, i64 0, i64 9), i64** %64, align 8
  store i32 986217817, i32* %65, align 4
  store i32**** %28, i32***** %66, align 8
  %598 = getelementptr inbounds [5 x [5 x [9 x i8*]]], [5 x [5 x [9 x i8*]]]* %67, i64 0, i64 0
  %599 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %598, i64 0, i64 0
  %600 = getelementptr inbounds [9 x i8*], [9 x i8*]* %599, i64 0, i64 0
  store i8* %21, i8** %600, align 8
  %601 = getelementptr inbounds i8*, i8** %600, i64 1
  store i8* %21, i8** %601, align 8
  %602 = getelementptr inbounds i8*, i8** %601, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %602, align 8
  %603 = getelementptr inbounds i8*, i8** %602, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 3, i64 5), i8** %603, align 8
  %604 = getelementptr inbounds i8*, i8** %603, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %604, align 8
  %605 = getelementptr inbounds i8*, i8** %604, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %605, align 8
  %606 = getelementptr inbounds i8*, i8** %605, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 3, i64 5), i8** %606, align 8
  %607 = getelementptr inbounds i8*, i8** %606, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %607, align 8
  %608 = getelementptr inbounds i8*, i8** %607, i64 1
  store i8* %21, i8** %608, align 8
  %609 = getelementptr inbounds [9 x i8*], [9 x i8*]* %599, i64 1
  %610 = getelementptr inbounds [9 x i8*], [9 x i8*]* %609, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %610, align 8
  %611 = getelementptr inbounds i8*, i8** %610, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %611, align 8
  %612 = getelementptr inbounds i8*, i8** %611, i64 1
  store i8* %21, i8** %612, align 8
  %613 = getelementptr inbounds i8*, i8** %612, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %613, align 8
  %614 = getelementptr inbounds i8*, i8** %613, i64 1
  store i8* @g_1299, i8** %614, align 8
  %615 = getelementptr inbounds i8*, i8** %614, i64 1
  store i8* %21, i8** %615, align 8
  %616 = getelementptr inbounds i8*, i8** %615, i64 1
  store i8* %21, i8** %616, align 8
  %617 = getelementptr inbounds i8*, i8** %616, i64 1
  store i8* @g_1299, i8** %617, align 8
  %618 = getelementptr inbounds i8*, i8** %617, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %618, align 8
  %619 = getelementptr inbounds [9 x i8*], [9 x i8*]* %609, i64 1
  %620 = getelementptr inbounds [9 x i8*], [9 x i8*]* %619, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %620, align 8
  %621 = getelementptr inbounds i8*, i8** %620, i64 1
  store i8* %21, i8** %621, align 8
  %622 = getelementptr inbounds i8*, i8** %621, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %622, align 8
  %623 = getelementptr inbounds i8*, i8** %622, i64 1
  store i8* %21, i8** %623, align 8
  %624 = getelementptr inbounds i8*, i8** %623, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 3, i64 5), i8** %624, align 8
  %625 = getelementptr inbounds i8*, i8** %624, i64 1
  store i8* %21, i8** %625, align 8
  %626 = getelementptr inbounds i8*, i8** %625, i64 1
  store i8* null, i8** %626, align 8
  %627 = getelementptr inbounds i8*, i8** %626, i64 1
  store i8* null, i8** %627, align 8
  %628 = getelementptr inbounds i8*, i8** %627, i64 1
  store i8* %21, i8** %628, align 8
  %629 = getelementptr inbounds [9 x i8*], [9 x i8*]* %619, i64 1
  %630 = getelementptr inbounds [9 x i8*], [9 x i8*]* %629, i64 0, i64 0
  store i8* %21, i8** %630, align 8
  %631 = getelementptr inbounds i8*, i8** %630, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %631, align 8
  %632 = getelementptr inbounds i8*, i8** %631, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %632, align 8
  %633 = getelementptr inbounds i8*, i8** %632, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %633, align 8
  %634 = getelementptr inbounds i8*, i8** %633, i64 1
  store i8* %21, i8** %634, align 8
  %635 = getelementptr inbounds i8*, i8** %634, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %635, align 8
  %636 = getelementptr inbounds i8*, i8** %635, i64 1
  store i8* @g_1299, i8** %636, align 8
  %637 = getelementptr inbounds i8*, i8** %636, i64 1
  store i8* %21, i8** %637, align 8
  %638 = getelementptr inbounds i8*, i8** %637, i64 1
  store i8* %21, i8** %638, align 8
  %639 = getelementptr inbounds [9 x i8*], [9 x i8*]* %629, i64 1
  %640 = getelementptr inbounds [9 x i8*], [9 x i8*]* %639, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %640, align 8
  %641 = getelementptr inbounds i8*, i8** %640, i64 1
  store i8* %21, i8** %641, align 8
  %642 = getelementptr inbounds i8*, i8** %641, i64 1
  store i8* %21, i8** %642, align 8
  %643 = getelementptr inbounds i8*, i8** %642, i64 1
  store i8* %21, i8** %643, align 8
  %644 = getelementptr inbounds i8*, i8** %643, i64 1
  store i8* %21, i8** %644, align 8
  %645 = getelementptr inbounds i8*, i8** %644, i64 1
  store i8* %21, i8** %645, align 8
  %646 = getelementptr inbounds i8*, i8** %645, i64 1
  store i8* %21, i8** %646, align 8
  %647 = getelementptr inbounds i8*, i8** %646, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %647, align 8
  %648 = getelementptr inbounds i8*, i8** %647, i64 1
  store i8* %21, i8** %648, align 8
  %649 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %598, i64 1
  %650 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %649, i64 0, i64 0
  %651 = getelementptr inbounds [9 x i8*], [9 x i8*]* %650, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %651, align 8
  %652 = getelementptr inbounds i8*, i8** %651, i64 1
  store i8* %21, i8** %652, align 8
  %653 = getelementptr inbounds i8*, i8** %652, i64 1
  store i8* %21, i8** %653, align 8
  %654 = getelementptr inbounds i8*, i8** %653, i64 1
  store i8* %21, i8** %654, align 8
  %655 = getelementptr inbounds i8*, i8** %654, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %655, align 8
  %656 = getelementptr inbounds i8*, i8** %655, i64 1
  store i8* %21, i8** %656, align 8
  %657 = getelementptr inbounds i8*, i8** %656, i64 1
  store i8* %21, i8** %657, align 8
  %658 = getelementptr inbounds i8*, i8** %657, i64 1
  store i8* %21, i8** %658, align 8
  %659 = getelementptr inbounds i8*, i8** %658, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %659, align 8
  %660 = getelementptr inbounds [9 x i8*], [9 x i8*]* %650, i64 1
  %661 = getelementptr inbounds [9 x i8*], [9 x i8*]* %660, i64 0, i64 0
  store i8* @g_1299, i8** %661, align 8
  %662 = getelementptr inbounds i8*, i8** %661, i64 1
  store i8* %21, i8** %662, align 8
  %663 = getelementptr inbounds i8*, i8** %662, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %663, align 8
  %664 = getelementptr inbounds i8*, i8** %663, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %664, align 8
  %665 = getelementptr inbounds i8*, i8** %664, i64 1
  store i8* %21, i8** %665, align 8
  %666 = getelementptr inbounds i8*, i8** %665, i64 1
  store i8* null, i8** %666, align 8
  %667 = getelementptr inbounds i8*, i8** %666, i64 1
  store i8* %21, i8** %667, align 8
  %668 = getelementptr inbounds i8*, i8** %667, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %668, align 8
  %669 = getelementptr inbounds i8*, i8** %668, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %669, align 8
  %670 = getelementptr inbounds [9 x i8*], [9 x i8*]* %660, i64 1
  %671 = getelementptr inbounds [9 x i8*], [9 x i8*]* %670, i64 0, i64 0
  store i8* %21, i8** %671, align 8
  %672 = getelementptr inbounds i8*, i8** %671, i64 1
  store i8* %21, i8** %672, align 8
  %673 = getelementptr inbounds i8*, i8** %672, i64 1
  store i8* @g_1299, i8** %673, align 8
  %674 = getelementptr inbounds i8*, i8** %673, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %674, align 8
  %675 = getelementptr inbounds i8*, i8** %674, i64 1
  store i8* %21, i8** %675, align 8
  %676 = getelementptr inbounds i8*, i8** %675, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %676, align 8
  %677 = getelementptr inbounds i8*, i8** %676, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %677, align 8
  %678 = getelementptr inbounds i8*, i8** %677, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %678, align 8
  %679 = getelementptr inbounds i8*, i8** %678, i64 1
  store i8* %21, i8** %679, align 8
  %680 = getelementptr inbounds [9 x i8*], [9 x i8*]* %670, i64 1
  %681 = getelementptr inbounds [9 x i8*], [9 x i8*]* %680, i64 0, i64 0
  store i8* @g_1299, i8** %681, align 8
  %682 = getelementptr inbounds i8*, i8** %681, i64 1
  store i8* %21, i8** %682, align 8
  %683 = getelementptr inbounds i8*, i8** %682, i64 1
  store i8* %21, i8** %683, align 8
  %684 = getelementptr inbounds i8*, i8** %683, i64 1
  store i8* @g_1299, i8** %684, align 8
  %685 = getelementptr inbounds i8*, i8** %684, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %685, align 8
  %686 = getelementptr inbounds i8*, i8** %685, i64 1
  store i8* %21, i8** %686, align 8
  %687 = getelementptr inbounds i8*, i8** %686, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %687, align 8
  %688 = getelementptr inbounds i8*, i8** %687, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %688, align 8
  %689 = getelementptr inbounds i8*, i8** %688, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %689, align 8
  %690 = getelementptr inbounds [9 x i8*], [9 x i8*]* %680, i64 1
  %691 = getelementptr inbounds [9 x i8*], [9 x i8*]* %690, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %691, align 8
  %692 = getelementptr inbounds i8*, i8** %691, i64 1
  store i8* %21, i8** %692, align 8
  %693 = getelementptr inbounds i8*, i8** %692, i64 1
  store i8* @g_1299, i8** %693, align 8
  %694 = getelementptr inbounds i8*, i8** %693, i64 1
  store i8* @g_1299, i8** %694, align 8
  %695 = getelementptr inbounds i8*, i8** %694, i64 1
  store i8* %21, i8** %695, align 8
  %696 = getelementptr inbounds i8*, i8** %695, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %696, align 8
  %697 = getelementptr inbounds i8*, i8** %696, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %697, align 8
  %698 = getelementptr inbounds i8*, i8** %697, i64 1
  store i8* %21, i8** %698, align 8
  %699 = getelementptr inbounds i8*, i8** %698, i64 1
  store i8* null, i8** %699, align 8
  %700 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %649, i64 1
  %701 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %700, i64 0, i64 0
  %702 = getelementptr inbounds [9 x i8*], [9 x i8*]* %701, i64 0, i64 0
  store i8* %21, i8** %702, align 8
  %703 = getelementptr inbounds i8*, i8** %702, i64 1
  store i8* %21, i8** %703, align 8
  %704 = getelementptr inbounds i8*, i8** %703, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %704, align 8
  %705 = getelementptr inbounds i8*, i8** %704, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %705, align 8
  %706 = getelementptr inbounds i8*, i8** %705, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %706, align 8
  %707 = getelementptr inbounds i8*, i8** %706, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %707, align 8
  %708 = getelementptr inbounds i8*, i8** %707, i64 1
  store i8* %21, i8** %708, align 8
  %709 = getelementptr inbounds i8*, i8** %708, i64 1
  store i8* %21, i8** %709, align 8
  %710 = getelementptr inbounds i8*, i8** %709, i64 1
  store i8* %21, i8** %710, align 8
  %711 = getelementptr inbounds [9 x i8*], [9 x i8*]* %701, i64 1
  %712 = getelementptr inbounds [9 x i8*], [9 x i8*]* %711, i64 0, i64 0
  store i8* null, i8** %712, align 8
  %713 = getelementptr inbounds i8*, i8** %712, i64 1
  store i8* @g_1299, i8** %713, align 8
  %714 = getelementptr inbounds i8*, i8** %713, i64 1
  store i8* %21, i8** %714, align 8
  %715 = getelementptr inbounds i8*, i8** %714, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %715, align 8
  %716 = getelementptr inbounds i8*, i8** %715, i64 1
  store i8* %21, i8** %716, align 8
  %717 = getelementptr inbounds i8*, i8** %716, i64 1
  store i8* %21, i8** %717, align 8
  %718 = getelementptr inbounds i8*, i8** %717, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %718, align 8
  %719 = getelementptr inbounds i8*, i8** %718, i64 1
  store i8* %21, i8** %719, align 8
  %720 = getelementptr inbounds i8*, i8** %719, i64 1
  store i8* @g_1299, i8** %720, align 8
  %721 = getelementptr inbounds [9 x i8*], [9 x i8*]* %711, i64 1
  %722 = getelementptr inbounds [9 x i8*], [9 x i8*]* %721, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %722, align 8
  %723 = getelementptr inbounds i8*, i8** %722, i64 1
  store i8* %21, i8** %723, align 8
  %724 = getelementptr inbounds i8*, i8** %723, i64 1
  store i8* null, i8** %724, align 8
  %725 = getelementptr inbounds i8*, i8** %724, i64 1
  store i8* %21, i8** %725, align 8
  %726 = getelementptr inbounds i8*, i8** %725, i64 1
  store i8* %21, i8** %726, align 8
  %727 = getelementptr inbounds i8*, i8** %726, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %727, align 8
  %728 = getelementptr inbounds i8*, i8** %727, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %728, align 8
  %729 = getelementptr inbounds i8*, i8** %728, i64 1
  store i8* %21, i8** %729, align 8
  %730 = getelementptr inbounds i8*, i8** %729, i64 1
  store i8* %21, i8** %730, align 8
  %731 = getelementptr inbounds [9 x i8*], [9 x i8*]* %721, i64 1
  %732 = getelementptr inbounds [9 x i8*], [9 x i8*]* %731, i64 0, i64 0
  %733 = bitcast [9 x i8*]* %731 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %733, i8* align 8 bitcast ([9 x i8*]* @constinit to i8*), i64 72, i1 false)
  %734 = getelementptr inbounds [9 x i8*], [9 x i8*]* %731, i64 1
  %735 = getelementptr inbounds [9 x i8*], [9 x i8*]* %734, i64 0, i64 0
  store i8* null, i8** %735, align 8
  %736 = getelementptr inbounds i8*, i8** %735, i64 1
  store i8* %21, i8** %736, align 8
  %737 = getelementptr inbounds i8*, i8** %736, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %737, align 8
  %738 = getelementptr inbounds i8*, i8** %737, i64 1
  store i8* %21, i8** %738, align 8
  %739 = getelementptr inbounds i8*, i8** %738, i64 1
  store i8* null, i8** %739, align 8
  %740 = getelementptr inbounds i8*, i8** %739, i64 1
  store i8* %21, i8** %740, align 8
  %741 = getelementptr inbounds i8*, i8** %740, i64 1
  store i8* %21, i8** %741, align 8
  %742 = getelementptr inbounds i8*, i8** %741, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %742, align 8
  %743 = getelementptr inbounds i8*, i8** %742, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %743, align 8
  %744 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %700, i64 1
  %745 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %744, i64 0, i64 0
  %746 = getelementptr inbounds [9 x i8*], [9 x i8*]* %745, i64 0, i64 0
  store i8* %21, i8** %746, align 8
  %747 = getelementptr inbounds i8*, i8** %746, i64 1
  store i8* @g_1299, i8** %747, align 8
  %748 = getelementptr inbounds i8*, i8** %747, i64 1
  store i8* null, i8** %748, align 8
  %749 = getelementptr inbounds i8*, i8** %748, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %749, align 8
  %750 = getelementptr inbounds i8*, i8** %749, i64 1
  store i8* null, i8** %750, align 8
  %751 = getelementptr inbounds i8*, i8** %750, i64 1
  store i8* @g_1299, i8** %751, align 8
  %752 = getelementptr inbounds i8*, i8** %751, i64 1
  store i8* %21, i8** %752, align 8
  %753 = getelementptr inbounds i8*, i8** %752, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %753, align 8
  %754 = getelementptr inbounds i8*, i8** %753, i64 1
  store i8* %21, i8** %754, align 8
  %755 = getelementptr inbounds [9 x i8*], [9 x i8*]* %745, i64 1
  %756 = getelementptr inbounds [9 x i8*], [9 x i8*]* %755, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %756, align 8
  %757 = getelementptr inbounds i8*, i8** %756, i64 1
  store i8* %21, i8** %757, align 8
  %758 = getelementptr inbounds i8*, i8** %757, i64 1
  store i8* %21, i8** %758, align 8
  %759 = getelementptr inbounds i8*, i8** %758, i64 1
  store i8* %21, i8** %759, align 8
  %760 = getelementptr inbounds i8*, i8** %759, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %760, align 8
  %761 = getelementptr inbounds i8*, i8** %760, i64 1
  store i8* %21, i8** %761, align 8
  %762 = getelementptr inbounds i8*, i8** %761, i64 1
  store i8* %21, i8** %762, align 8
  %763 = getelementptr inbounds i8*, i8** %762, i64 1
  store i8* %21, i8** %763, align 8
  %764 = getelementptr inbounds i8*, i8** %763, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %764, align 8
  %765 = getelementptr inbounds [9 x i8*], [9 x i8*]* %755, i64 1
  %766 = getelementptr inbounds [9 x i8*], [9 x i8*]* %765, i64 0, i64 0
  store i8* @g_1299, i8** %766, align 8
  %767 = getelementptr inbounds i8*, i8** %766, i64 1
  store i8* %21, i8** %767, align 8
  %768 = getelementptr inbounds i8*, i8** %767, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %768, align 8
  %769 = getelementptr inbounds i8*, i8** %768, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %769, align 8
  %770 = getelementptr inbounds i8*, i8** %769, i64 1
  store i8* %21, i8** %770, align 8
  %771 = getelementptr inbounds i8*, i8** %770, i64 1
  store i8* null, i8** %771, align 8
  %772 = getelementptr inbounds i8*, i8** %771, i64 1
  store i8* %21, i8** %772, align 8
  %773 = getelementptr inbounds i8*, i8** %772, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %773, align 8
  %774 = getelementptr inbounds i8*, i8** %773, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %774, align 8
  %775 = getelementptr inbounds [9 x i8*], [9 x i8*]* %765, i64 1
  %776 = getelementptr inbounds [9 x i8*], [9 x i8*]* %775, i64 0, i64 0
  store i8* %21, i8** %776, align 8
  %777 = getelementptr inbounds i8*, i8** %776, i64 1
  store i8* %21, i8** %777, align 8
  %778 = getelementptr inbounds i8*, i8** %777, i64 1
  store i8* @g_1299, i8** %778, align 8
  %779 = getelementptr inbounds i8*, i8** %778, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %779, align 8
  %780 = getelementptr inbounds i8*, i8** %779, i64 1
  store i8* %21, i8** %780, align 8
  %781 = getelementptr inbounds i8*, i8** %780, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %781, align 8
  %782 = getelementptr inbounds i8*, i8** %781, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %782, align 8
  %783 = getelementptr inbounds i8*, i8** %782, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %783, align 8
  %784 = getelementptr inbounds i8*, i8** %783, i64 1
  store i8* %21, i8** %784, align 8
  %785 = getelementptr inbounds [9 x i8*], [9 x i8*]* %775, i64 1
  %786 = getelementptr inbounds [9 x i8*], [9 x i8*]* %785, i64 0, i64 0
  store i8* @g_1299, i8** %786, align 8
  %787 = getelementptr inbounds i8*, i8** %786, i64 1
  store i8* %21, i8** %787, align 8
  %788 = getelementptr inbounds i8*, i8** %787, i64 1
  store i8* %21, i8** %788, align 8
  %789 = getelementptr inbounds i8*, i8** %788, i64 1
  store i8* @g_1299, i8** %789, align 8
  %790 = getelementptr inbounds i8*, i8** %789, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %790, align 8
  %791 = getelementptr inbounds i8*, i8** %790, i64 1
  store i8* %21, i8** %791, align 8
  %792 = getelementptr inbounds i8*, i8** %791, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %792, align 8
  %793 = getelementptr inbounds i8*, i8** %792, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %793, align 8
  %794 = getelementptr inbounds i8*, i8** %793, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %794, align 8
  %795 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %744, i64 1
  %796 = getelementptr inbounds [5 x [9 x i8*]], [5 x [9 x i8*]]* %795, i64 0, i64 0
  %797 = getelementptr inbounds [9 x i8*], [9 x i8*]* %796, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %797, align 8
  %798 = getelementptr inbounds i8*, i8** %797, i64 1
  store i8* %21, i8** %798, align 8
  %799 = getelementptr inbounds i8*, i8** %798, i64 1
  store i8* @g_1299, i8** %799, align 8
  %800 = getelementptr inbounds i8*, i8** %799, i64 1
  store i8* @g_1299, i8** %800, align 8
  %801 = getelementptr inbounds i8*, i8** %800, i64 1
  store i8* %21, i8** %801, align 8
  %802 = getelementptr inbounds i8*, i8** %801, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %802, align 8
  %803 = getelementptr inbounds i8*, i8** %802, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %803, align 8
  %804 = getelementptr inbounds i8*, i8** %803, i64 1
  store i8* %21, i8** %804, align 8
  %805 = getelementptr inbounds i8*, i8** %804, i64 1
  store i8* null, i8** %805, align 8
  %806 = getelementptr inbounds [9 x i8*], [9 x i8*]* %796, i64 1
  %807 = getelementptr inbounds [9 x i8*], [9 x i8*]* %806, i64 0, i64 0
  store i8* %21, i8** %807, align 8
  %808 = getelementptr inbounds i8*, i8** %807, i64 1
  store i8* %21, i8** %808, align 8
  %809 = getelementptr inbounds i8*, i8** %808, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %809, align 8
  %810 = getelementptr inbounds i8*, i8** %809, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %810, align 8
  %811 = getelementptr inbounds i8*, i8** %810, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %811, align 8
  %812 = getelementptr inbounds i8*, i8** %811, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 1, i64 0, i64 3), i8** %812, align 8
  %813 = getelementptr inbounds i8*, i8** %812, i64 1
  store i8* %21, i8** %813, align 8
  %814 = getelementptr inbounds i8*, i8** %813, i64 1
  store i8* %21, i8** %814, align 8
  %815 = getelementptr inbounds i8*, i8** %814, i64 1
  store i8* %21, i8** %815, align 8
  %816 = getelementptr inbounds [9 x i8*], [9 x i8*]* %806, i64 1
  %817 = getelementptr inbounds [9 x i8*], [9 x i8*]* %816, i64 0, i64 0
  store i8* null, i8** %817, align 8
  %818 = getelementptr inbounds i8*, i8** %817, i64 1
  store i8* @g_1299, i8** %818, align 8
  %819 = getelementptr inbounds i8*, i8** %818, i64 1
  store i8* %21, i8** %819, align 8
  %820 = getelementptr inbounds i8*, i8** %819, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %820, align 8
  %821 = getelementptr inbounds i8*, i8** %820, i64 1
  store i8* %21, i8** %821, align 8
  %822 = getelementptr inbounds i8*, i8** %821, i64 1
  store i8* %21, i8** %822, align 8
  %823 = getelementptr inbounds i8*, i8** %822, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), i8** %823, align 8
  %824 = getelementptr inbounds i8*, i8** %823, i64 1
  store i8* %21, i8** %824, align 8
  %825 = getelementptr inbounds i8*, i8** %824, i64 1
  store i8* @g_1299, i8** %825, align 8
  %826 = getelementptr inbounds [9 x i8*], [9 x i8*]* %816, i64 1
  %827 = getelementptr inbounds [9 x i8*], [9 x i8*]* %826, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 3), i8** %827, align 8
  %828 = getelementptr inbounds i8*, i8** %827, i64 1
  store i8* %21, i8** %828, align 8
  %829 = getelementptr inbounds i8*, i8** %828, i64 1
  store i8* null, i8** %829, align 8
  %830 = getelementptr inbounds i8*, i8** %829, i64 1
  store i8* %21, i8** %830, align 8
  %831 = getelementptr inbounds i8*, i8** %830, i64 1
  store i8* %21, i8** %831, align 8
  %832 = getelementptr inbounds i8*, i8** %831, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %832, align 8
  %833 = getelementptr inbounds i8*, i8** %832, i64 1
  store i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 4, i64 3, i64 1), i8** %833, align 8
  %834 = getelementptr inbounds i8*, i8** %833, i64 1
  store i8* %21, i8** %834, align 8
  %835 = getelementptr inbounds i8*, i8** %834, i64 1
  store i8* %21, i8** %835, align 8
  %836 = getelementptr inbounds [9 x i8*], [9 x i8*]* %826, i64 1
  %837 = getelementptr inbounds [9 x i8*], [9 x i8*]* %836, i64 0, i64 0
  %838 = bitcast [9 x i8*]* %836 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %838, i8* align 8 bitcast ([9 x i8*]* @constinit.37 to i8*), i64 72, i1 false)
  store i32 1207835926, i32* %68, align 4
  %839 = load i32**, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), align 8
  %840 = load i32*, i32** %839, align 8
  %841 = load i32****, i32***** @g_1516, align 8
  %842 = load i32***, i32**** %841, align 8
  %843 = load i32**, i32*** %842, align 8
  store i32* %840, i32** %843, align 8
  %844 = load i32, i32* %7, align 4
  %845 = icmp ne i32 %844, 0
  br i1 %845, label %922, label %846

846:                                              ; preds = %597
  %847 = load i32, i32* %7, align 4
  %848 = load i32, i32* %6, align 4
  %849 = sext i32 %848 to i64
  %850 = load i32, i32* %6, align 4
  %851 = load i8, i8* %5, align 1
  %852 = zext i8 %851 to i32
  %853 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_442, i64 0, i64 8), align 16
  %854 = icmp ne i64 %853, 0
  br i1 %854, label %855, label %870

855:                                              ; preds = %846
  %856 = load i16*, i16** @g_731, align 8
  %857 = load i16, i16* %856, align 2
  %858 = sext i16 %857 to i32
  %859 = load i32, i32* %22, align 4
  %860 = icmp ne i32 %859, 0
  %861 = zext i1 %860 to i32
  %862 = load i16*, i16** %12, align 8
  %863 = load i16, i16* %862, align 2
  %864 = zext i16 %863 to i64
  %865 = xor i64 %864, 65535
  %866 = trunc i64 %865 to i16
  store i16 %866, i16* %862, align 2
  %867 = zext i16 %866 to i32
  %868 = or i32 %858, %867
  %869 = icmp ne i32 %868, 0
  br label %870

870:                                              ; preds = %855, %846
  %871 = phi i1 [ false, %846 ], [ %869, %855 ]
  %872 = zext i1 %871 to i32
  %873 = sext i32 %872 to i64
  %874 = load i64***, i64**** @g_1029, align 8
  %875 = load i64**, i64*** %874, align 8
  %876 = load i64*, i64** %875, align 8
  store i64 %873, i64* %876, align 8
  %877 = icmp ne i64 %873, 7541515951986604623
  %878 = zext i1 %877 to i32
  %879 = getelementptr inbounds [7 x i32], [7 x i32]* %62, i64 0, i64 5
  %880 = load i32, i32* %879, align 4
  %881 = call i32 @safe_add_func_int32_t_s_s(i32 %878, i32 %880)
  %882 = icmp slt i32 %852, %881
  %883 = zext i1 %882 to i32
  %884 = sext i32 %883 to i64
  %885 = load i64*, i64** %64, align 8
  store i64 %884, i64* %885, align 8
  %886 = getelementptr inbounds [7 x i32], [7 x i32]* %62, i64 0, i64 2
  %887 = load i32, i32* %886, align 8
  %888 = sext i32 %887 to i64
  %889 = call i64 @safe_mod_func_int64_t_s_s(i64 %884, i64 %888)
  %890 = icmp eq i64 252, %889
  %891 = zext i1 %890 to i32
  %892 = sext i32 %891 to i64
  %893 = load i64*, i64** @g_1700, align 8
  store i64 %892, i64* %893, align 8
  %894 = load i32, i32* %65, align 4
  %895 = sext i32 %894 to i64
  %896 = or i64 %895, %892
  %897 = trunc i64 %896 to i32
  store i32 %897, i32* %65, align 4
  %898 = sext i32 %897 to i64
  %899 = call i64 @safe_div_func_uint64_t_u_u(i64 %849, i64 %898)
  %900 = icmp ne i64 %899, 0
  %901 = xor i1 %900, true
  %902 = zext i1 %901 to i32
  %903 = trunc i32 %902 to i16
  %904 = load i32, i32* %7, align 4
  %905 = trunc i32 %904 to i16
  %906 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %903, i16 zeroext %905)
  %907 = zext i16 %906 to i32
  %908 = load i32, i32* %7, align 4
  %909 = icmp sgt i32 %907, %908
  %910 = zext i1 %909 to i32
  %911 = call i32 @safe_mod_func_uint32_t_u_u(i32 %910, i32 5)
  %912 = trunc i32 %911 to i16
  %913 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %912, i16 signext -9)
  %914 = load i16*, i16** @g_731, align 8
  %915 = load i16, i16* %914, align 2
  %916 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %913, i16 zeroext %915)
  %917 = zext i16 %916 to i64
  %918 = load i8, i8* %5, align 1
  %919 = zext i8 %918 to i64
  %920 = call i64 @safe_add_func_int64_t_s_s(i64 %917, i64 %919)
  %921 = icmp ne i64 %920, 0
  br label %922

922:                                              ; preds = %870, %597
  %923 = phi i1 [ true, %597 ], [ %921, %870 ]
  %924 = zext i1 %923 to i32
  store i32 %924, i32* %7, align 4
  %925 = load i32, i32* %65, align 4
  %926 = trunc i32 %925 to i16
  %927 = load i32, i32* %65, align 4
  %928 = load i32***, i32**** %28, align 8
  %929 = load i32****, i32***** %66, align 8
  store i32*** %928, i32**** %929, align 8
  %930 = icmp eq i32*** %928, @g_930
  %931 = zext i1 %930 to i32
  %932 = icmp ne i32 %927, %931
  %933 = zext i1 %932 to i32
  %934 = sext i32 %933 to i64
  %935 = xor i64 -2859896019735512788, %934
  %936 = trunc i64 %935 to i16
  %937 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %926, i16 signext %936)
  %938 = trunc i16 %937 to i8
  %939 = load i32, i32* %65, align 4
  %940 = load i32, i32* %68, align 4
  %941 = and i32 %940, %939
  store i32 %941, i32* %68, align 4
  %942 = trunc i32 %941 to i8
  %943 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext -93, i8 zeroext %942)
  %944 = zext i8 %943 to i32
  %945 = getelementptr inbounds [7 x i32], [7 x i32]* %62, i64 0, i64 3
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  %948 = load i64*, i64** @g_1700, align 8
  %949 = load i64, i64* %948, align 8
  %950 = xor i64 %949, %947
  store i64 %950, i64* %948, align 8
  %951 = icmp ne i32* null, %6
  %952 = zext i1 %951 to i32
  %953 = sext i32 %952 to i64
  %954 = icmp ne i64 %950, %953
  %955 = zext i1 %954 to i32
  %956 = sext i32 %955 to i64
  %957 = or i64 %956, 1
  %958 = trunc i64 %957 to i32
  %959 = call i32 @safe_sub_func_int32_t_s_s(i32 %944, i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %938, i8 signext %960)
  %962 = sext i8 %961 to i32
  %963 = load i32, i32* %6, align 4
  %964 = xor i32 %962, %963
  %965 = load i32, i32* %65, align 4
  %966 = icmp eq i32 %964, %965
  %967 = zext i1 %966 to i32
  %968 = load i32, i32* %65, align 4
  store i32 %968, i32* %7, align 4
  br label %975

969:                                              ; preds = %591
  %970 = getelementptr inbounds [7 x i32], [7 x i32]* %62, i64 0, i64 5
  %971 = load i32, i32* %970, align 4
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %973, label %974

973:                                              ; preds = %969
  br label %983

974:                                              ; preds = %969
  br label %975

975:                                              ; preds = %974, %922
  %976 = load i32, i32* @g_58, align 4
  %977 = icmp ne i32 %976, 0
  br i1 %977, label %978, label %979

978:                                              ; preds = %975
  br label %84

979:                                              ; preds = %975
  br label %980

980:                                              ; preds = %979
  %981 = load i32, i32* %22, align 4
  %982 = add nsw i32 %981, 1
  store i32 %982, i32* %22, align 4
  br label %577

983:                                              ; preds = %973, %577
  br label %998

984:                                              ; preds = %151
  store i16 -19, i16* %24, align 2
  br label %985

985:                                              ; preds = %992, %984
  %986 = load i16, i16* %24, align 2
  %987 = zext i16 %986 to i32
  %988 = icmp eq i32 %987, 10
  br i1 %988, label %989, label %997

989:                                              ; preds = %985
  %990 = load i8, i8* %5, align 1
  %991 = zext i8 %990 to i16
  store i16 %991, i16* %4, align 2
  br label %1005

992:                                              ; No predecessors!
  %993 = load i16, i16* %24, align 2
  %994 = zext i16 %993 to i32
  %995 = call i32 @safe_add_func_int32_t_s_s(i32 %994, i32 2)
  %996 = trunc i32 %995 to i16
  store i16 %996, i16* %24, align 2
  br label %985

997:                                              ; preds = %985
  br label %998

998:                                              ; preds = %997, %983
  %999 = load i32, i32* @g_895, align 4
  %1000 = icmp ne i32 %999, 0
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %998
  br label %84

1002:                                             ; preds = %998
  %1003 = load i32, i32* %6, align 4
  %1004 = trunc i32 %1003 to i16
  store i16 %1004, i16* %4, align 2
  br label %1005

1005:                                             ; preds = %1002, %989, %352, %314
  %1006 = load i16, i16* %4, align 2
  ret i16 %1006
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_mod_func_uint64_t_u_u(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  br label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %10, %11
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %8, %7 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  br label %17

11:                                               ; preds = %2
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = srem i32 %13, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %10, %8 ], [ %16, %11 ]
  %19 = trunc i32 %18 to i16
  ret i16 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @func_24(i32 %0, i32 %1, i32 %2, i64 %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8**, align 8
  %15 = alloca [7 x [5 x i8***]], align 16
  %16 = alloca i32**, align 8
  %17 = alloca i16*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [1 x [3 x [2 x i32]]], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca [2 x [8 x [7 x i32*]]], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [4 x [3 x i16*]], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i16 %4, i16* %10, align 2
  store i32 -1803414318, i32* %11, align 4
  store i32 1955741649, i32* %12, align 4
  store i8 13, i8* %13, align 1
  store i8** null, i8*** %14, align 8
  %32 = getelementptr inbounds [7 x [5 x i8***]], [7 x [5 x i8***]]* %15, i64 0, i64 0
  %33 = getelementptr inbounds [5 x i8***], [5 x i8***]* %32, i64 0, i64 0
  store i8*** %14, i8**** %33, align 8
  %34 = getelementptr inbounds i8***, i8**** %33, i64 1
  store i8*** %14, i8**** %34, align 8
  %35 = getelementptr inbounds i8***, i8**** %34, i64 1
  store i8*** %14, i8**** %35, align 8
  %36 = getelementptr inbounds i8***, i8**** %35, i64 1
  store i8*** %14, i8**** %36, align 8
  %37 = getelementptr inbounds i8***, i8**** %36, i64 1
  store i8*** %14, i8**** %37, align 8
  %38 = getelementptr inbounds [5 x i8***], [5 x i8***]* %32, i64 1
  %39 = getelementptr inbounds [5 x i8***], [5 x i8***]* %38, i64 0, i64 0
  store i8*** %14, i8**** %39, align 8
  %40 = getelementptr inbounds i8***, i8**** %39, i64 1
  store i8*** %14, i8**** %40, align 8
  %41 = getelementptr inbounds i8***, i8**** %40, i64 1
  store i8*** %14, i8**** %41, align 8
  %42 = getelementptr inbounds i8***, i8**** %41, i64 1
  store i8*** %14, i8**** %42, align 8
  %43 = getelementptr inbounds i8***, i8**** %42, i64 1
  store i8*** %14, i8**** %43, align 8
  %44 = getelementptr inbounds [5 x i8***], [5 x i8***]* %38, i64 1
  %45 = getelementptr inbounds [5 x i8***], [5 x i8***]* %44, i64 0, i64 0
  store i8*** %14, i8**** %45, align 8
  %46 = getelementptr inbounds i8***, i8**** %45, i64 1
  store i8*** %14, i8**** %46, align 8
  %47 = getelementptr inbounds i8***, i8**** %46, i64 1
  store i8*** %14, i8**** %47, align 8
  %48 = getelementptr inbounds i8***, i8**** %47, i64 1
  store i8*** %14, i8**** %48, align 8
  %49 = getelementptr inbounds i8***, i8**** %48, i64 1
  store i8*** %14, i8**** %49, align 8
  %50 = getelementptr inbounds [5 x i8***], [5 x i8***]* %44, i64 1
  %51 = getelementptr inbounds [5 x i8***], [5 x i8***]* %50, i64 0, i64 0
  store i8*** %14, i8**** %51, align 8
  %52 = getelementptr inbounds i8***, i8**** %51, i64 1
  store i8*** %14, i8**** %52, align 8
  %53 = getelementptr inbounds i8***, i8**** %52, i64 1
  store i8*** %14, i8**** %53, align 8
  %54 = getelementptr inbounds i8***, i8**** %53, i64 1
  store i8*** %14, i8**** %54, align 8
  %55 = getelementptr inbounds i8***, i8**** %54, i64 1
  store i8*** %14, i8**** %55, align 8
  %56 = getelementptr inbounds [5 x i8***], [5 x i8***]* %50, i64 1
  %57 = getelementptr inbounds [5 x i8***], [5 x i8***]* %56, i64 0, i64 0
  store i8*** %14, i8**** %57, align 8
  %58 = getelementptr inbounds i8***, i8**** %57, i64 1
  store i8*** %14, i8**** %58, align 8
  %59 = getelementptr inbounds i8***, i8**** %58, i64 1
  store i8*** %14, i8**** %59, align 8
  %60 = getelementptr inbounds i8***, i8**** %59, i64 1
  store i8*** %14, i8**** %60, align 8
  %61 = getelementptr inbounds i8***, i8**** %60, i64 1
  store i8*** %14, i8**** %61, align 8
  %62 = getelementptr inbounds [5 x i8***], [5 x i8***]* %56, i64 1
  %63 = getelementptr inbounds [5 x i8***], [5 x i8***]* %62, i64 0, i64 0
  store i8*** %14, i8**** %63, align 8
  %64 = getelementptr inbounds i8***, i8**** %63, i64 1
  store i8*** %14, i8**** %64, align 8
  %65 = getelementptr inbounds i8***, i8**** %64, i64 1
  store i8*** %14, i8**** %65, align 8
  %66 = getelementptr inbounds i8***, i8**** %65, i64 1
  store i8*** %14, i8**** %66, align 8
  %67 = getelementptr inbounds i8***, i8**** %66, i64 1
  store i8*** %14, i8**** %67, align 8
  %68 = getelementptr inbounds [5 x i8***], [5 x i8***]* %62, i64 1
  %69 = getelementptr inbounds [5 x i8***], [5 x i8***]* %68, i64 0, i64 0
  store i8*** %14, i8**** %69, align 8
  %70 = getelementptr inbounds i8***, i8**** %69, i64 1
  store i8*** %14, i8**** %70, align 8
  %71 = getelementptr inbounds i8***, i8**** %70, i64 1
  store i8*** %14, i8**** %71, align 8
  %72 = getelementptr inbounds i8***, i8**** %71, i64 1
  store i8*** %14, i8**** %72, align 8
  %73 = getelementptr inbounds i8***, i8**** %72, i64 1
  store i8*** %14, i8**** %73, align 8
  store i32** null, i32*** %16, align 8
  store i16* @g_45, i16** %17, align 8
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %271, %5
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 21
  br i1 %76, label %77, label %276

77:                                               ; preds = %74
  store i32* null, i32** %21, align 8
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 3), i32** %22, align 8
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %23, align 8
  %78 = getelementptr inbounds [2 x [8 x [7 x i32*]]], [2 x [8 x [7 x i32*]]]* %24, i64 0, i64 0
  %79 = getelementptr inbounds [8 x [7 x i32*]], [8 x [7 x i32*]]* %78, i64 0, i64 0
  %80 = getelementptr inbounds [7 x i32*], [7 x i32*]* %79, i64 0, i64 0
  %81 = bitcast [7 x i32*]* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 bitcast ([7 x i32*]* @constinit.38 to i8*), i64 56, i1 false)
  %82 = getelementptr inbounds [7 x i32*], [7 x i32*]* %79, i64 1
  %83 = getelementptr inbounds [7 x i32*], [7 x i32*]* %82, i64 0, i64 0
  store i32* @g_895, i32** %83, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %86 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %85, i64 0, i64 2
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  store i32* %87, i32** %84, align 8
  %88 = getelementptr inbounds i32*, i32** %84, i64 1
  store i32* @g_118, i32** %88, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  store i32* @g_58, i32** %89, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* @g_118, i32** %90, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %93 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %92, i64 0, i64 2
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %93, i64 0, i64 0
  store i32* %94, i32** %91, align 8
  %95 = getelementptr inbounds i32*, i32** %91, i64 1
  store i32* @g_895, i32** %95, align 8
  %96 = getelementptr inbounds [7 x i32*], [7 x i32*]* %82, i64 1
  %97 = getelementptr inbounds [7 x i32*], [7 x i32*]* %96, i64 0, i64 0
  store i32* null, i32** %97, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  store i32* @g_895, i32** %98, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %99, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  store i32* null, i32** %100, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 1
  %102 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %103 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %102, i64 0, i64 2
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 0, i64 1
  store i32* %104, i32** %101, align 8
  %105 = getelementptr inbounds i32*, i32** %101, i64 1
  store i32* null, i32** %105, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  %107 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %108 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %107, i64 0, i64 2
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i64 0, i64 1
  store i32* %109, i32** %106, align 8
  %110 = getelementptr inbounds [7 x i32*], [7 x i32*]* %96, i64 1
  %111 = getelementptr inbounds [7 x i32*], [7 x i32*]* %110, i64 0, i64 0
  %112 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %113 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %112, i64 0, i64 2
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %113, i64 0, i64 0
  store i32* %114, i32** %111, align 8
  %115 = getelementptr inbounds i32*, i32** %111, i64 1
  store i32* @g_58, i32** %115, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* @g_58, i32** %116, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %119 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %118, i64 0, i64 2
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %119, i64 0, i64 0
  store i32* %120, i32** %117, align 8
  %121 = getelementptr inbounds i32*, i32** %117, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 4), i32** %121, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  store i32* null, i32** %122, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  store i32* @g_58, i32** %123, align 8
  %124 = getelementptr inbounds [7 x i32*], [7 x i32*]* %110, i64 1
  %125 = getelementptr inbounds [7 x i32*], [7 x i32*]* %124, i64 0, i64 0
  store i32* @g_118, i32** %125, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  store i32* null, i32** %126, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %127, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  %129 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %130 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %129, i64 0, i64 2
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 0, i64 0
  store i32* %131, i32** %128, align 8
  %132 = getelementptr inbounds i32*, i32** %128, i64 1
  store i32* @g_895, i32** %132, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  %134 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %135 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %134, i64 0, i64 2
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %135, i64 0, i64 0
  store i32* %136, i32** %133, align 8
  %137 = getelementptr inbounds i32*, i32** %133, i64 1
  store i32* @g_129, i32** %137, align 8
  %138 = getelementptr inbounds [7 x i32*], [7 x i32*]* %124, i64 1
  %139 = getelementptr inbounds [7 x i32*], [7 x i32*]* %138, i64 0, i64 0
  %140 = bitcast [7 x i32*]* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 bitcast ([7 x i32*]* @constinit.39 to i8*), i64 56, i1 false)
  %141 = getelementptr inbounds [7 x i32*], [7 x i32*]* %138, i64 1
  %142 = getelementptr inbounds [7 x i32*], [7 x i32*]* %141, i64 0, i64 0
  store i32* @g_129, i32** %142, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 1
  store i32* @g_58, i32** %143, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  store i32* @g_895, i32** %144, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  store i32* @g_58, i32** %145, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  store i32* @g_129, i32** %146, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  store i32* @g_895, i32** %147, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 1
  %149 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %150 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %149, i64 0, i64 2
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %150, i64 0, i64 1
  store i32* %151, i32** %148, align 8
  %152 = getelementptr inbounds [7 x i32*], [7 x i32*]* %141, i64 1
  %153 = getelementptr inbounds [7 x i32*], [7 x i32*]* %152, i64 0, i64 0
  %154 = bitcast [7 x i32*]* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 bitcast ([7 x i32*]* @constinit.40 to i8*), i64 56, i1 false)
  %155 = getelementptr inbounds [8 x [7 x i32*]], [8 x [7 x i32*]]* %78, i64 1
  %156 = getelementptr inbounds [8 x [7 x i32*]], [8 x [7 x i32*]]* %155, i64 0, i64 0
  %157 = getelementptr inbounds [7 x i32*], [7 x i32*]* %156, i64 0, i64 0
  %158 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %159 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %158, i64 0, i64 2
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %159, i64 0, i64 1
  store i32* %160, i32** %157, align 8
  %161 = getelementptr inbounds i32*, i32** %157, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 1), i32** %161, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 1
  store i32* null, i32** %162, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  %164 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %165 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %164, i64 0, i64 2
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %165, i64 0, i64 0
  store i32* %166, i32** %163, align 8
  %167 = getelementptr inbounds i32*, i32** %163, i64 1
  store i32* @g_129, i32** %167, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 3), i32** %168, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %169, align 8
  %170 = getelementptr inbounds [7 x i32*], [7 x i32*]* %156, i64 1
  %171 = getelementptr inbounds [7 x i32*], [7 x i32*]* %170, i64 0, i64 0
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 2), i32** %171, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %172, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 1
  %174 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %175 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %174, i64 0, i64 2
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %175, i64 0, i64 0
  store i32* %176, i32** %173, align 8
  %177 = getelementptr inbounds i32*, i32** %173, i64 1
  %178 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %179 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %178, i64 0, i64 2
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %179, i64 0, i64 0
  store i32* %180, i32** %177, align 8
  %181 = getelementptr inbounds i32*, i32** %177, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %181, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 2), i32** %182, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 1
  store i32* @g_58, i32** %183, align 8
  %184 = getelementptr inbounds [7 x i32*], [7 x i32*]* %170, i64 1
  %185 = getelementptr inbounds [7 x i32*], [7 x i32*]* %184, i64 0, i64 0
  %186 = bitcast [7 x i32*]* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %186, i8* align 8 bitcast ([7 x i32*]* @constinit.41 to i8*), i64 56, i1 false)
  %187 = getelementptr inbounds [7 x i32*], [7 x i32*]* %184, i64 1
  %188 = getelementptr inbounds [7 x i32*], [7 x i32*]* %187, i64 0, i64 0
  %189 = bitcast [7 x i32*]* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 bitcast ([7 x i32*]* @constinit.42 to i8*), i64 56, i1 false)
  %190 = getelementptr inbounds [7 x i32*], [7 x i32*]* %187, i64 1
  %191 = getelementptr inbounds [7 x i32*], [7 x i32*]* %190, i64 0, i64 0
  %192 = bitcast [7 x i32*]* %190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 bitcast ([7 x i32*]* @constinit.43 to i8*), i64 56, i1 false)
  %193 = getelementptr inbounds [7 x i32*], [7 x i32*]* %190, i64 1
  %194 = getelementptr inbounds [7 x i32*], [7 x i32*]* %193, i64 0, i64 0
  %195 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %196 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %195, i64 0, i64 2
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i64 0, i64 0
  store i32* %197, i32** %194, align 8
  %198 = getelementptr inbounds i32*, i32** %194, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %198, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 2), i32** %199, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 1
  store i32* @g_58, i32** %200, align 8
  %201 = getelementptr inbounds i32*, i32** %200, i64 1
  store i32* @g_58, i32** %201, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 1
  store i32* @g_118, i32** %202, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 1
  store i32* @g_58, i32** %203, align 8
  %204 = getelementptr inbounds [7 x i32*], [7 x i32*]* %193, i64 1
  %205 = getelementptr inbounds [7 x i32*], [7 x i32*]* %204, i64 0, i64 0
  store i32* null, i32** %205, align 8
  %206 = getelementptr inbounds i32*, i32** %205, i64 1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 1), i32** %206, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 1
  %208 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 0
  %209 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %208, i64 0, i64 2
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %209, i64 0, i64 1
  store i32* %210, i32** %207, align 8
  %211 = getelementptr inbounds i32*, i32** %207, i64 1
  store i32* @g_129, i32** %211, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 1
  store i32* @g_895, i32** %212, align 8
  %213 = getelementptr inbounds i32*, i32** %212, i64 1
  store i32* null, i32** %213, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 1
  store i32* @g_895, i32** %214, align 8
  %215 = getelementptr inbounds [7 x i32*], [7 x i32*]* %204, i64 1
  %216 = getelementptr inbounds [7 x i32*], [7 x i32*]* %215, i64 0, i64 0
  %217 = bitcast [7 x i32*]* %215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %217, i8* align 8 bitcast ([7 x i32*]* @constinit.44 to i8*), i64 56, i1 false)
  store i32 0, i32* %25, align 4
  br label %218

218:                                              ; preds = %247, %77
  %219 = load i32, i32* %25, align 4
  %220 = icmp slt i32 %219, 1
  br i1 %220, label %221, label %250

221:                                              ; preds = %218
  store i32 0, i32* %26, align 4
  br label %222

222:                                              ; preds = %243, %221
  %223 = load i32, i32* %26, align 4
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %246

225:                                              ; preds = %222
  store i32 0, i32* %27, align 4
  br label %226

226:                                              ; preds = %239, %225
  %227 = load i32, i32* %27, align 4
  %228 = icmp slt i32 %227, 2
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = load i32, i32* %25, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [1 x [3 x [2 x i32]]], [1 x [3 x [2 x i32]]]* %20, i64 0, i64 %231
  %233 = load i32, i32* %26, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %232, i64 0, i64 %234
  %236 = load i32, i32* %27, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %235, i64 0, i64 %237
  store i32 8, i32* %238, align 4
  br label %239

239:                                              ; preds = %229
  %240 = load i32, i32* %27, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %27, align 4
  br label %226

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %26, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %26, align 4
  br label %222

246:                                              ; preds = %222
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %25, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %25, align 4
  br label %218

250:                                              ; preds = %218
  store i32 -20, i32* %6, align 4
  br label %251

251:                                              ; preds = %256, %250
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, -24
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = bitcast [4 x [3 x i16*]]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %255, i8* align 16 bitcast ([4 x [3 x i16*]]* @__const.func_24.l_44 to i8*), i64 96, i1 false)
  store i32 134164168, i32* %29, align 4
  br label %256

256:                                              ; preds = %254
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @safe_sub_func_uint32_t_u_u(i32 %257, i32 4)
  store i32 %258, i32* %6, align 4
  br label %251

259:                                              ; preds = %251
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %271

263:                                              ; preds = %259
  %264 = load i8, i8* %13, align 1
  %265 = add i8 %264, 1
  store i8 %265, i8* %13, align 1
  %266 = load i32*, i32** @g_1622, align 8
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  br label %271

270:                                              ; preds = %263
  br label %271

271:                                              ; preds = %270, %269, %262
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = call i64 @safe_add_func_int64_t_s_s(i64 %273, i64 1)
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %8, align 4
  br label %74

276:                                              ; preds = %74
  %277 = load i8**, i8*** %14, align 8
  store i8** %277, i8*** getelementptr inbounds ([9 x [3 x [1 x i8**]]], [9 x [3 x [1 x i8**]]]* @g_1877, i64 0, i64 2, i64 1, i64 0), align 8
  %278 = icmp ne i8** %277, getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_1878, i64 0, i64 0)
  br i1 %278, label %279, label %306

279:                                              ; preds = %276
  %280 = load i32, i32* @g_1295, align 4
  %281 = load i64, i64* %9, align 8
  %282 = trunc i64 %281 to i8
  %283 = load i8**, i8*** @g_1129, align 8
  %284 = load i8*, i8** %283, align 8
  store i8 %282, i8* %284, align 1
  %285 = load i8, i8* %13, align 1
  %286 = zext i8 %285 to i32
  %287 = load i32**, i32*** %16, align 8
  %288 = icmp ne i32** %287, null
  %289 = zext i1 %288 to i32
  %290 = trunc i32 %289 to i16
  %291 = load i16*, i16** %17, align 8
  store i16 %290, i16* %291, align 2
  %292 = zext i16 %290 to i32
  %293 = icmp ne i32 %286, %292
  %294 = zext i1 %293 to i32
  %295 = trunc i32 %294 to i16
  %296 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %295, i16 zeroext 1)
  %297 = trunc i16 %296 to i8
  %298 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %282, i8 zeroext %297)
  %299 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %298, i32 5)
  %300 = load i64*, i64** @g_1700, align 8
  %301 = load i64, i64* %300, align 8
  %302 = and i64 6762186875295076220, %301
  %303 = load i8, i8* %13, align 1
  %304 = zext i8 %303 to i64
  %305 = icmp eq i64 %302, %304
  br label %306

306:                                              ; preds = %279, %276
  %307 = phi i1 [ false, %276 ], [ %305, %279 ]
  %308 = zext i1 %307 to i32
  %309 = trunc i32 %308 to i8
  %310 = load i8, i8* %13, align 1
  %311 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %309, i8 zeroext %310)
  %312 = zext i8 %311 to i32
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %306
  %315 = load i32, i32* %8, align 4
  %316 = icmp ne i32 %315, 0
  br label %317

317:                                              ; preds = %314, %306
  %318 = phi i1 [ false, %306 ], [ %316, %314 ]
  %319 = zext i1 %318 to i32
  %320 = load i8*****, i8****** @g_1614, align 8
  %321 = load i8****, i8***** %320, align 8
  %322 = load i8*****, i8****** @g_1614, align 8
  store i8**** %321, i8***** %322, align 8
  %323 = load i32*, i32** @g_1244, align 8
  store i32 1, i32* %323, align 4
  %324 = load i16, i16* %10, align 2
  ret i16 %324
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp uge i32 %5, 32
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 65535, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7, %2
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  br label %21

16:                                               ; preds = %7
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %18, %19
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %15, %13 ], [ %20, %16 ]
  %23 = trunc i32 %22 to i16
  ret i16 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @func_36(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*****, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [2 x i32*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32*****, align 8
  %20 = alloca [2 x [6 x [4 x i32]]], align 16
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i16, align 2
  %25 = alloca i32***, align 8
  %26 = alloca i32****, align 8
  %27 = alloca [5 x [5 x i32*****]], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i16, align 2
  %32 = alloca i64*****, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [4 x i32], align 16
  %36 = alloca i32, align 4
  %37 = alloca [8 x [10 x [3 x i64*]]], align 16
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i16*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i16**, align 8
  %46 = alloca i64*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i16*, align 8
  %49 = alloca [7 x [9 x [1 x i16**]]], align 16
  %50 = alloca i32, align 4
  %51 = alloca i32*, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32*, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32***** getelementptr inbounds ([9 x i32****], [9 x i32****]* @g_1369, i64 0, i64 6), i32****** %6, align 8
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %7, align 8
  store i16* null, i16** %8, align 8
  store i16** %8, i16*** %9, align 8
  store i32 -3, i32* %10, align 4
  store i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_111, i64 0, i64 0), i16** %11, align 8
  store i32* @g_895, i32** %12, align 8
  store i32* @g_118, i32** %13, align 8
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 3), i32** %14, align 8
  store i32 -1729717769, i32* %16, align 4
  store i8 -29, i8* %17, align 1
  store i32 0, i32* %18, align 4
  br label %58

58:                                               ; preds = %65, %2
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 %63
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %64, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %18, align 4
  br label %58

68:                                               ; preds = %58
  store i64 0, i64* @g_1399, align 8
  br label %69

69:                                               ; preds = %918, %68
  %70 = load i64, i64* @g_1399, align 8
  %71 = icmp ugt i64 %70, 34
  br i1 %71, label %72, label %921

72:                                               ; preds = %69
  store i32***** null, i32****** %19, align 8
  %73 = bitcast [2 x [6 x [4 x i32]]]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %73, i8* align 16 bitcast ([2 x [6 x [4 x i32]]]* @__const.func_36.l_1718 to i8*), i64 192, i1 false)
  store i64 -2311079523186893093, i64* %21, align 8
  store i8 -88, i8* %22, align 1
  store i8 1, i8* %23, align 1
  store i16 29322, i16* %24, align 2
  store i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i64 0, i64 0), i32**** %25, align 8
  store i32**** %25, i32***** %26, align 8
  %74 = getelementptr inbounds [5 x [5 x i32*****]], [5 x [5 x i32*****]]* %27, i64 0, i64 0
  %75 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %74, i64 0, i64 0
  store i32***** %26, i32****** %75, align 8
  %76 = getelementptr inbounds i32*****, i32****** %75, i64 1
  store i32***** %26, i32****** %76, align 8
  %77 = getelementptr inbounds i32*****, i32****** %76, i64 1
  store i32***** %26, i32****** %77, align 8
  %78 = getelementptr inbounds i32*****, i32****** %77, i64 1
  store i32***** %26, i32****** %78, align 8
  %79 = getelementptr inbounds i32*****, i32****** %78, i64 1
  store i32***** %26, i32****** %79, align 8
  %80 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %74, i64 1
  %81 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %80, i64 0, i64 0
  store i32***** %26, i32****** %81, align 8
  %82 = getelementptr inbounds i32*****, i32****** %81, i64 1
  store i32***** %26, i32****** %82, align 8
  %83 = getelementptr inbounds i32*****, i32****** %82, i64 1
  store i32***** %26, i32****** %83, align 8
  %84 = getelementptr inbounds i32*****, i32****** %83, i64 1
  store i32***** %26, i32****** %84, align 8
  %85 = getelementptr inbounds i32*****, i32****** %84, i64 1
  store i32***** %26, i32****** %85, align 8
  %86 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %80, i64 1
  %87 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %86, i64 0, i64 0
  store i32***** %26, i32****** %87, align 8
  %88 = getelementptr inbounds i32*****, i32****** %87, i64 1
  store i32***** %26, i32****** %88, align 8
  %89 = getelementptr inbounds i32*****, i32****** %88, i64 1
  store i32***** %26, i32****** %89, align 8
  %90 = getelementptr inbounds i32*****, i32****** %89, i64 1
  store i32***** %26, i32****** %90, align 8
  %91 = getelementptr inbounds i32*****, i32****** %90, i64 1
  store i32***** %26, i32****** %91, align 8
  %92 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %86, i64 1
  %93 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %92, i64 0, i64 0
  store i32***** %26, i32****** %93, align 8
  %94 = getelementptr inbounds i32*****, i32****** %93, i64 1
  store i32***** %26, i32****** %94, align 8
  %95 = getelementptr inbounds i32*****, i32****** %94, i64 1
  store i32***** %26, i32****** %95, align 8
  %96 = getelementptr inbounds i32*****, i32****** %95, i64 1
  store i32***** %26, i32****** %96, align 8
  %97 = getelementptr inbounds i32*****, i32****** %96, i64 1
  store i32***** %26, i32****** %97, align 8
  %98 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %92, i64 1
  %99 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %98, i64 0, i64 0
  store i32***** %26, i32****** %99, align 8
  %100 = getelementptr inbounds i32*****, i32****** %99, i64 1
  store i32***** %26, i32****** %100, align 8
  %101 = getelementptr inbounds i32*****, i32****** %100, i64 1
  store i32***** %26, i32****** %101, align 8
  %102 = getelementptr inbounds i32*****, i32****** %101, i64 1
  store i32***** %26, i32****** %102, align 8
  %103 = getelementptr inbounds i32*****, i32****** %102, i64 1
  store i32***** %26, i32****** %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp sle i64 55, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %72
  store i16 -26, i16* @g_242, align 2
  br label %108

108:                                              ; preds = %123, %107
  %109 = load i16, i16* @g_242, align 2
  %110 = zext i16 %109 to i32
  %111 = icmp sgt i32 %110, 10
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load i32*****, i32****** %19, align 8
  store i32***** %113, i32****** %19, align 8
  %114 = load i64*, i64** @g_1700, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i32*****, i32****** %6, align 8
  %117 = icmp ne i32***** %113, %116
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %119, -10
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** @g_1622, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %112
  %124 = load i16, i16* @g_242, align 2
  %125 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %124, i16 signext 8)
  store i16 %125, i16* @g_242, align 2
  br label %108

126:                                              ; preds = %108
  br label %520

127:                                              ; preds = %72
  store i16 -1, i16* %31, align 2
  store i64***** @g_669, i64****** %32, align 8
  store i32 0, i32* @g_1362, align 4
  br label %128

128:                                              ; preds = %133, %127
  %129 = load i32, i32* @g_1362, align 4
  %130 = icmp ule i32 %129, 3
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32*, i32** %7, align 8
  store i32* %132, i32** %3, align 8
  br label %937

133:                                              ; No predecessors!
  %134 = load i32, i32* @g_1362, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* @g_1362, align 4
  br label %128

136:                                              ; preds = %128
  %137 = getelementptr inbounds [2 x [6 x [4 x i32]]], [2 x [6 x [4 x i32]]]* %20, i64 0, i64 1
  %138 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* %137, i64 0, i64 1
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %138, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = load i16, i16* %31, align 2
  %142 = zext i16 %141 to i64
  %143 = load i64***, i64**** @g_1029, align 8
  %144 = load i64**, i64*** %143, align 8
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %145, align 8
  %147 = and i64 %146, %142
  store i64 %147, i64* %145, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i16, i16* %31, align 2
  %150 = zext i16 %149 to i32
  %151 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_442, i64 0, i64 9), align 8
  %152 = trunc i64 %151 to i16
  %153 = load i32, i32* %4, align 4
  %154 = trunc i32 %153 to i16
  %155 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %152, i16 zeroext %154)
  %156 = zext i16 %155 to i32
  %157 = load i32*, i32** @g_1244, align 8
  store i32 %156, i32* %157, align 4
  %158 = call i32 @safe_mod_func_uint32_t_u_u(i32 %150, i32 %156)
  %159 = trunc i32 %158 to i16
  %160 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext -1, i16 zeroext %159)
  %161 = load i16**, i16*** %9, align 8
  %162 = icmp eq i16** %161, null
  %163 = zext i1 %162 to i32
  %164 = trunc i32 %163 to i16
  %165 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %164, i32 13)
  %166 = sext i16 %165 to i64
  %167 = icmp slt i64 %166, 178
  %168 = zext i1 %167 to i32
  %169 = sext i32 %168 to i64
  %170 = icmp sle i64 %169, 227
  %171 = zext i1 %170 to i32
  %172 = trunc i32 %171 to i16
  %173 = load i32, i32* %4, align 4
  %174 = trunc i32 %173 to i16
  %175 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %172, i16 signext %174)
  %176 = load i32, i32* %5, align 4
  %177 = trunc i32 %176 to i16
  %178 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext -10, i16 zeroext %177)
  %179 = zext i16 %178 to i64
  %180 = call i64 @safe_mod_func_int64_t_s_s(i64 %147, i64 %179)
  br i1 false, label %181, label %184

181:                                              ; preds = %136
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181, %136
  %185 = load i32, i32* @g_895, align 4
  %186 = icmp ne i32 %185, 0
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi i1 [ true, %181 ], [ %186, %184 ]
  %189 = zext i1 %188 to i32
  %190 = trunc i32 %189 to i16
  %191 = load i16, i16* getelementptr inbounds ([5 x [2 x i16]], [5 x [2 x i16]]* @g_1196, i64 0, i64 1, i64 0), align 4
  %192 = sext i16 %191 to i32
  %193 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %190, i32 %192)
  %194 = trunc i16 %193 to i8
  %195 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %194)
  %196 = sext i8 %195 to i16
  %197 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %196, i32 2)
  %198 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %197, i32 0)
  %199 = sext i16 %198 to i32
  %200 = icmp sgt i32 %140, %199
  %201 = zext i1 %200 to i32
  %202 = load i32*, i32** %7, align 8
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %201
  store i32 %204, i32* %202, align 4
  store i32 0, i32* @g_58, align 4
  br label %205

205:                                              ; preds = %516, %187
  %206 = load i32, i32* @g_58, align 4
  %207 = icmp sle i32 %206, 3
  br i1 %207, label %208, label %519

208:                                              ; preds = %205
  store i32 -1, i32* %33, align 4
  store i32 642697172, i32* %34, align 4
  %209 = bitcast [4 x i32]* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %209, i8* align 16 bitcast ([4 x i32]* @__const.func_36.l_1773 to i8*), i64 16, i1 false)
  %210 = load i32, i32* @g_58, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [10 x i64], [10 x i64]* @g_442, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %314

216:                                              ; preds = %208
  %217 = load i32, i32* @g_58, align 4
  %218 = add nsw i32 %217, 5
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [10 x i64], [10 x i64]* @g_442, i64 0, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @g_58, align 4
  %223 = add nsw i32 %222, 6
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [10 x i64], [10 x i64]* @g_442, i64 0, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  br label %229

229:                                              ; preds = %228, %216
  %230 = phi i1 [ false, %216 ], [ true, %228 ]
  %231 = zext i1 %230 to i32
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* @g_1131, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i16, i16* %31, align 2
  %237 = zext i16 %236 to i32
  %238 = icmp ne i32 %237, 0
  br label %239

239:                                              ; preds = %235, %229
  %240 = phi i1 [ false, %229 ], [ %238, %235 ]
  %241 = zext i1 %240 to i32
  %242 = trunc i32 %241 to i16
  %243 = load i16, i16* %31, align 2
  %244 = load i32*****, i32****** %19, align 8
  %245 = icmp ne i32***** %244, null
  %246 = zext i1 %245 to i32
  %247 = trunc i32 %246 to i16
  %248 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %242, i16 signext %247)
  %249 = sext i16 %248 to i32
  %250 = load i16, i16* %31, align 2
  %251 = zext i16 %250 to i32
  %252 = call i32 @safe_add_func_uint32_t_u_u(i32 %249, i32 %251)
  %253 = load i32*, i32** @g_1622, align 8
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %252, %254
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %33, align 4
  %258 = xor i32 %257, %256
  store i32 %258, i32* %33, align 4
  %259 = load i32, i32* %4, align 4
  %260 = and i32 %258, %259
  %261 = trunc i32 %260 to i16
  %262 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %261, i16 zeroext 10758)
  %263 = icmp eq i16*** %9, %9
  %264 = zext i1 %263 to i32
  %265 = sext i32 %264 to i64
  %266 = or i64 4294967295, %265
  %267 = icmp eq i64 %266, 1
  %268 = zext i1 %267 to i32
  %269 = load i32, i32* %4, align 4
  %270 = call i32 @safe_mod_func_uint32_t_u_u(i32 %268, i32 %269)
  %271 = trunc i32 %270 to i16
  %272 = load i32, i32* %4, align 4
  %273 = trunc i32 %272 to i16
  %274 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %271, i16 signext %273)
  %275 = load i32, i32* %4, align 4
  %276 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -1, i32 %275)
  %277 = sext i8 %276 to i16
  %278 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %277, i16 signext 4169)
  %279 = sext i16 %278 to i32
  %280 = load i16*, i16** @g_731, align 8
  %281 = load i16, i16* %280, align 2
  %282 = sext i16 %281 to i32
  %283 = or i32 %282, %279
  %284 = trunc i32 %283 to i16
  store i16 %284, i16* %280, align 2
  %285 = sext i16 %284 to i32
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %239
  br label %288

288:                                              ; preds = %287, %239
  %289 = phi i1 [ true, %239 ], [ true, %287 ]
  %290 = zext i1 %289 to i32
  %291 = trunc i32 %290 to i8
  %292 = load i16, i16* %31, align 2
  %293 = trunc i16 %292 to i8
  %294 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %291, i8 signext %293)
  %295 = sext i8 %294 to i16
  %296 = load i32, i32* %4, align 4
  %297 = trunc i32 %296 to i16
  %298 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %295, i16 zeroext %297)
  %299 = zext i16 %298 to i64
  %300 = or i64 %299, -10
  %301 = load i32, i32* %34, align 4
  %302 = sext i32 %301 to i64
  %303 = and i64 %302, %300
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %34, align 4
  %305 = trunc i32 %304 to i8
  %306 = load i32, i32* %4, align 4
  %307 = trunc i32 %306 to i8
  %308 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %305, i8 signext %307)
  %309 = sext i8 %308 to i64
  %310 = load i64*, i64** @g_1700, align 8
  %311 = load i64, i64* %310, align 8
  %312 = and i64 %309, %311
  %313 = icmp ne i64 %312, 0
  br label %314

314:                                              ; preds = %288, %208
  %315 = phi i1 [ false, %208 ], [ %313, %288 ]
  %316 = zext i1 %315 to i32
  %317 = trunc i32 %316 to i16
  %318 = load i16, i16* %31, align 2
  %319 = zext i16 %318 to i32
  %320 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %317, i32 %319)
  %321 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %320, i16 zeroext 102)
  %322 = trunc i16 %321 to i8
  %323 = load i32, i32* %4, align 4
  %324 = trunc i32 %323 to i8
  %325 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %322, i8 zeroext %324)
  %326 = zext i8 %325 to i32
  %327 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 2
  store i32 %326, i32* %327, align 8
  %328 = load i32, i32* %4, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %314
  br label %516

331:                                              ; preds = %314
  store i8 3, i8* @g_1299, align 1
  br label %332

332:                                              ; preds = %510, %331
  %333 = load i8, i8* @g_1299, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp sge i32 %334, 0
  br i1 %335, label %336, label %515

336:                                              ; preds = %332
  %337 = bitcast [8 x [10 x [3 x i64*]]]* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %337, i8* align 16 bitcast ([8 x [10 x [3 x i64*]]]* @__const.func_36.l_1799 to i8*), i64 1920, i1 false)
  store i32 5, i32* %38, align 4
  %338 = load i32, i32* @g_58, align 4
  %339 = add nsw i32 %338, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 %340
  %342 = load i8, i8* @g_1299, align 1
  %343 = sext i8 %342 to i64
  %344 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* %341, i64 0, i64 %343
  %345 = load i32, i32* @g_58, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [8 x i8], [8 x i8]* %344, i64 0, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i64
  %350 = icmp ne i64 %349, -7
  %351 = zext i1 %350 to i32
  %352 = load i64*****, i64****** %32, align 8
  %353 = icmp eq i64***** %352, null
  %354 = zext i1 %353 to i32
  %355 = icmp sgt i32 %351, %354
  %356 = zext i1 %355 to i32
  %357 = load i8*****, i8****** @g_1614, align 8
  %358 = load i8****, i8***** %357, align 8
  %359 = load i32, i32* @g_58, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 %360
  %362 = load i8, i8* @g_1299, align 1
  %363 = sext i8 %362 to i64
  %364 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* %361, i64 0, i64 %363
  %365 = load i8, i8* @g_1299, align 1
  %366 = sext i8 %365 to i32
  %367 = add nsw i32 %366, 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [8 x i8], [8 x i8]* %364, i64 0, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = load i8*****, i8****** @g_1614, align 8
  %372 = load i8****, i8***** %371, align 8
  %373 = icmp ne i8**** %358, %372
  %374 = zext i1 %373 to i32
  %375 = call i32 @safe_add_func_uint32_t_u_u(i32 %356, i32 %374)
  %376 = load i32, i32* %33, align 4
  %377 = xor i32 %376, %375
  store i32 %377, i32* %33, align 4
  %378 = load i8, i8* @g_1299, align 1
  %379 = sext i8 %378 to i32
  %380 = add nsw i32 %379, 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 %381
  %383 = load i32, i32* @g_58, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* %382, i64 0, i64 %384
  %386 = load i8, i8* @g_1299, align 1
  %387 = sext i8 %386 to i32
  %388 = add nsw i32 %387, 2
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [8 x i8], [8 x i8]* %385, i64 0, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = icmp ne i8 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %336
  br label %510

394:                                              ; preds = %336
  %395 = load i8, i8* @g_1299, align 1
  %396 = sext i8 %395 to i32
  %397 = add nsw i32 %396, 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 %398
  %400 = load i32, i32* @g_58, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* %399, i64 0, i64 %401
  %403 = load i8, i8* @g_1299, align 1
  %404 = sext i8 %403 to i32
  %405 = add nsw i32 %404, 2
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [8 x i8], [8 x i8]* %402, i64 0, i64 %406
  %408 = load i8, i8* %407, align 1
  %409 = sext i8 %408 to i32
  %410 = load i32, i32* %4, align 4
  %411 = trunc i32 %410 to i8
  %412 = call i32* @func_97(i32 %409, i8 signext %411)
  %413 = load i32****, i32***** @g_1516, align 8
  %414 = load i32***, i32**** %413, align 8
  %415 = load i32**, i32*** %414, align 8
  store i32* %412, i32** %415, align 8
  %416 = load i8, i8* @g_1131, align 1
  %417 = zext i8 %416 to i32
  %418 = load i16*, i16** @g_731, align 8
  store i16 -29914, i16* %418, align 2
  %419 = load i32, i32* %5, align 4
  %420 = load i32, i32* %4, align 4
  %421 = trunc i32 %420 to i8
  %422 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %421, i32 4)
  %423 = sext i8 %422 to i32
  %424 = load i32*, i32** %7, align 8
  store i32 %423, i32* %424, align 4
  %425 = load i32, i32* %5, align 4
  %426 = trunc i32 %425 to i16
  %427 = load i16, i16* %31, align 2
  %428 = zext i16 %427 to i64
  %429 = and i64 %428, 694112350
  %430 = load i16*, i16** @g_731, align 8
  %431 = load i16, i16* %430, align 2
  %432 = sext i16 %431 to i64
  %433 = xor i64 %432, %429
  %434 = trunc i64 %433 to i16
  store i16 %434, i16* %430, align 2
  %435 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %426, i16 signext %434)
  %436 = sext i16 %435 to i64
  store i64 %436, i64* @g_307, align 8
  %437 = load i32, i32* @g_58, align 4
  %438 = add nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [10 x i64], [10 x i64]* @g_442, i64 0, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = trunc i64 %441 to i32
  %443 = call i32 @safe_sub_func_int32_t_s_s(i32 %423, i32 %442)
  %444 = trunc i32 %443 to i16
  %445 = load i32, i32* @g_1362, align 4
  %446 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %444, i32 %445)
  %447 = zext i16 %446 to i32
  %448 = load i32, i32* %4, align 4
  %449 = xor i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %459, label %451

451:                                              ; preds = %394
  %452 = load i32*****, i32****** %6, align 8
  %453 = load i32****, i32***** %452, align 8
  %454 = load i32***, i32**** %453, align 8
  %455 = load i32**, i32*** %454, align 8
  %456 = load i32*, i32** %455, align 8
  %457 = load i32, i32* %456, align 4
  %458 = icmp ne i32 %457, 0
  br label %459

459:                                              ; preds = %451, %394
  %460 = phi i1 [ true, %394 ], [ %458, %451 ]
  %461 = zext i1 %460 to i32
  %462 = icmp slt i32 %419, %461
  %463 = zext i1 %462 to i32
  store i32 %463, i32* %33, align 4
  %464 = trunc i32 %463 to i8
  %465 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %464, i8 zeroext 26)
  %466 = zext i8 %465 to i32
  %467 = icmp ne i32 %417, %466
  %468 = zext i1 %467 to i32
  %469 = trunc i32 %468 to i8
  %470 = load i8, i8* @g_1299, align 1
  %471 = sext i8 %470 to i64
  %472 = getelementptr inbounds [8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 %471
  %473 = load i8, i8* @g_1299, align 1
  %474 = sext i8 %473 to i64
  %475 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* %472, i64 0, i64 %474
  %476 = load i8, i8* @g_1299, align 1
  %477 = sext i8 %476 to i32
  %478 = add nsw i32 %477, 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [8 x i8], [8 x i8]* %475, i64 0, i64 %479
  store i8 %469, i8* %480, align 1
  %481 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %469, i8 signext 46)
  %482 = load i16, i16* %31, align 2
  %483 = zext i16 %482 to i64
  %484 = icmp sge i64 2877159626, %483
  br i1 %484, label %485, label %486

485:                                              ; preds = %459
  br label %486

486:                                              ; preds = %485, %459
  %487 = phi i1 [ false, %459 ], [ true, %485 ]
  %488 = zext i1 %487 to i32
  %489 = load i32, i32* %38, align 4
  %490 = call i32 @safe_div_func_uint32_t_u_u(i32 %488, i32 %489)
  %491 = call i32 @safe_mod_func_uint32_t_u_u(i32 %490, i32 -1)
  %492 = call i32 @safe_add_func_int32_t_s_s(i32 960487137, i32 %491)
  %493 = call i32 @safe_div_func_int32_t_s_s(i32 -2018778528, i32 %492)
  %494 = trunc i32 %493 to i16
  %495 = load i32, i32* @g_58, align 4
  %496 = add nsw i32 %495, 6
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [10 x i64], [10 x i64]* @g_442, i64 0, i64 %497
  %499 = load i64, i64* %498, align 8
  %500 = trunc i64 %499 to i16
  %501 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %494, i16 zeroext %500)
  %502 = zext i16 %501 to i32
  %503 = load i32, i32* %5, align 4
  %504 = trunc i32 %503 to i8
  %505 = call i32* @func_97(i32 %502, i8 signext %504)
  %506 = load i32*****, i32****** %6, align 8
  %507 = load i32****, i32***** %506, align 8
  %508 = load i32***, i32**** %507, align 8
  %509 = load i32**, i32*** %508, align 8
  store i32* %505, i32** %509, align 8
  br label %510

510:                                              ; preds = %486, %393
  %511 = load i8, i8* @g_1299, align 1
  %512 = sext i8 %511 to i32
  %513 = sub nsw i32 %512, 1
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* @g_1299, align 1
  br label %332

515:                                              ; preds = %332
  br label %516

516:                                              ; preds = %515, %330
  %517 = load i32, i32* @g_58, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* @g_58, align 4
  br label %205

519:                                              ; preds = %205
  br label %520

520:                                              ; preds = %519, %126
  %521 = load i64, i64* %21, align 8
  %522 = load i32, i32* %4, align 4
  %523 = zext i32 %522 to i64
  %524 = xor i64 %521, %523
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %527, label %526

526:                                              ; preds = %520
  br label %527

527:                                              ; preds = %526, %520
  %528 = phi i1 [ true, %520 ], [ true, %526 ]
  %529 = zext i1 %528 to i32
  %530 = load i8, i8* %22, align 1
  %531 = load i8, i8* @g_1131, align 1
  store i8 %531, i8* @g_1131, align 1
  %532 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %530, i8 zeroext %531)
  %533 = zext i8 %532 to i64
  %534 = load i8, i8* %23, align 1
  %535 = zext i8 %534 to i32
  %536 = load i32, i32* %5, align 4
  %537 = icmp sle i32 %535, %536
  %538 = zext i1 %537 to i32
  %539 = trunc i32 %538 to i16
  %540 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %539, i16 signext 6)
  %541 = trunc i16 %540 to i8
  %542 = load i32, i32* %4, align 4
  %543 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %541, i32 %542)
  %544 = sext i8 %543 to i64
  %545 = load i64*****, i64****** @g_1027, align 8
  %546 = load i64****, i64***** %545, align 8
  %547 = load i64***, i64**** %546, align 8
  %548 = load i64**, i64*** %547, align 8
  %549 = load i64*, i64** %548, align 8
  %550 = load i64, i64* %549, align 8
  %551 = xor i64 %544, %550
  %552 = icmp ne i64 %533, %551
  %553 = zext i1 %552 to i32
  %554 = xor i32 %529, %553
  %555 = icmp ne i32 %554, 0
  %556 = zext i1 %555 to i32
  %557 = trunc i32 %556 to i8
  %558 = load i32, i32* %10, align 4
  %559 = trunc i32 %558 to i8
  %560 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %557, i8 signext %559)
  %561 = sext i8 %560 to i32
  %562 = load i32*, i32** @g_1622, align 8
  %563 = load i32, i32* %562, align 4
  %564 = or i32 %563, %561
  store i32 %564, i32* %562, align 4
  store i8 -10, i8* @g_265, align 1
  br label %565

565:                                              ; preds = %914, %527
  %566 = load i8, i8* @g_265, align 1
  %567 = zext i8 %566 to i32
  %568 = icmp sge i32 %567, 6
  br i1 %568, label %569, label %917

569:                                              ; preds = %565
  store i16* null, i16** %42, align 8
  store i32 105939587, i32* %43, align 4
  store i32 236344616, i32* %44, align 4
  store i16** %8, i16*** %45, align 8
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_442, i64 0, i64 6), i64** %46, align 8
  store i8 0, i8* %22, align 1
  br label %570

570:                                              ; preds = %908, %569
  %571 = load i8, i8* %22, align 1
  %572 = sext i8 %571 to i32
  %573 = icmp sle i32 %572, 2
  br i1 %573, label %574, label %913

574:                                              ; preds = %570
  store i32 2079380538, i32* %47, align 4
  store i16* getelementptr inbounds ([5 x [2 x i16]], [5 x [2 x i16]]* @g_1196, i64 0, i64 0, i64 0), i16** %48, align 8
  %575 = getelementptr inbounds [7 x [9 x [1 x i16**]]], [7 x [9 x [1 x i16**]]]* %49, i64 0, i64 0
  %576 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %575, i64 0, i64 0
  %577 = getelementptr inbounds [1 x i16**], [1 x i16**]* %576, i64 0, i64 0
  store i16** null, i16*** %577, align 8
  %578 = getelementptr inbounds [1 x i16**], [1 x i16**]* %576, i64 1
  %579 = getelementptr inbounds [1 x i16**], [1 x i16**]* %578, i64 0, i64 0
  store i16** %48, i16*** %579, align 8
  %580 = getelementptr inbounds [1 x i16**], [1 x i16**]* %578, i64 1
  %581 = getelementptr inbounds [1 x i16**], [1 x i16**]* %580, i64 0, i64 0
  store i16** null, i16*** %581, align 8
  %582 = getelementptr inbounds [1 x i16**], [1 x i16**]* %580, i64 1
  %583 = getelementptr inbounds [1 x i16**], [1 x i16**]* %582, i64 0, i64 0
  store i16** %48, i16*** %583, align 8
  %584 = getelementptr inbounds [1 x i16**], [1 x i16**]* %582, i64 1
  %585 = getelementptr inbounds [1 x i16**], [1 x i16**]* %584, i64 0, i64 0
  store i16** %42, i16*** %585, align 8
  %586 = getelementptr inbounds [1 x i16**], [1 x i16**]* %584, i64 1
  %587 = getelementptr inbounds [1 x i16**], [1 x i16**]* %586, i64 0, i64 0
  store i16** %48, i16*** %587, align 8
  %588 = getelementptr inbounds [1 x i16**], [1 x i16**]* %586, i64 1
  %589 = getelementptr inbounds [1 x i16**], [1 x i16**]* %588, i64 0, i64 0
  store i16** null, i16*** %589, align 8
  %590 = getelementptr inbounds [1 x i16**], [1 x i16**]* %588, i64 1
  %591 = getelementptr inbounds [1 x i16**], [1 x i16**]* %590, i64 0, i64 0
  store i16** %48, i16*** %591, align 8
  %592 = getelementptr inbounds [1 x i16**], [1 x i16**]* %590, i64 1
  %593 = getelementptr inbounds [1 x i16**], [1 x i16**]* %592, i64 0, i64 0
  store i16** %42, i16*** %593, align 8
  %594 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %575, i64 1
  %595 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %594, i64 0, i64 0
  %596 = getelementptr inbounds [1 x i16**], [1 x i16**]* %595, i64 0, i64 0
  store i16** %48, i16*** %596, align 8
  %597 = getelementptr inbounds [1 x i16**], [1 x i16**]* %595, i64 1
  %598 = getelementptr inbounds [1 x i16**], [1 x i16**]* %597, i64 0, i64 0
  store i16** null, i16*** %598, align 8
  %599 = getelementptr inbounds [1 x i16**], [1 x i16**]* %597, i64 1
  %600 = getelementptr inbounds [1 x i16**], [1 x i16**]* %599, i64 0, i64 0
  store i16** %48, i16*** %600, align 8
  %601 = getelementptr inbounds [1 x i16**], [1 x i16**]* %599, i64 1
  %602 = getelementptr inbounds [1 x i16**], [1 x i16**]* %601, i64 0, i64 0
  store i16** null, i16*** %602, align 8
  %603 = getelementptr inbounds [1 x i16**], [1 x i16**]* %601, i64 1
  %604 = getelementptr inbounds [1 x i16**], [1 x i16**]* %603, i64 0, i64 0
  store i16** %42, i16*** %604, align 8
  %605 = getelementptr inbounds [1 x i16**], [1 x i16**]* %603, i64 1
  %606 = getelementptr inbounds [1 x i16**], [1 x i16**]* %605, i64 0, i64 0
  store i16** %42, i16*** %606, align 8
  %607 = getelementptr inbounds [1 x i16**], [1 x i16**]* %605, i64 1
  %608 = getelementptr inbounds [1 x i16**], [1 x i16**]* %607, i64 0, i64 0
  store i16** %48, i16*** %608, align 8
  %609 = getelementptr inbounds [1 x i16**], [1 x i16**]* %607, i64 1
  %610 = getelementptr inbounds [1 x i16**], [1 x i16**]* %609, i64 0, i64 0
  store i16** %42, i16*** %610, align 8
  %611 = getelementptr inbounds [1 x i16**], [1 x i16**]* %609, i64 1
  %612 = getelementptr inbounds [1 x i16**], [1 x i16**]* %611, i64 0, i64 0
  store i16** %42, i16*** %612, align 8
  %613 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %594, i64 1
  %614 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %613, i64 0, i64 0
  %615 = getelementptr inbounds [1 x i16**], [1 x i16**]* %614, i64 0, i64 0
  store i16** null, i16*** %615, align 8
  %616 = getelementptr inbounds [1 x i16**], [1 x i16**]* %614, i64 1
  %617 = getelementptr inbounds [1 x i16**], [1 x i16**]* %616, i64 0, i64 0
  store i16** %48, i16*** %617, align 8
  %618 = getelementptr inbounds [1 x i16**], [1 x i16**]* %616, i64 1
  %619 = getelementptr inbounds [1 x i16**], [1 x i16**]* %618, i64 0, i64 0
  store i16** null, i16*** %619, align 8
  %620 = getelementptr inbounds [1 x i16**], [1 x i16**]* %618, i64 1
  %621 = getelementptr inbounds [1 x i16**], [1 x i16**]* %620, i64 0, i64 0
  store i16** %48, i16*** %621, align 8
  %622 = getelementptr inbounds [1 x i16**], [1 x i16**]* %620, i64 1
  %623 = getelementptr inbounds [1 x i16**], [1 x i16**]* %622, i64 0, i64 0
  store i16** %42, i16*** %623, align 8
  %624 = getelementptr inbounds [1 x i16**], [1 x i16**]* %622, i64 1
  %625 = getelementptr inbounds [1 x i16**], [1 x i16**]* %624, i64 0, i64 0
  store i16** %48, i16*** %625, align 8
  %626 = getelementptr inbounds [1 x i16**], [1 x i16**]* %624, i64 1
  %627 = getelementptr inbounds [1 x i16**], [1 x i16**]* %626, i64 0, i64 0
  store i16** null, i16*** %627, align 8
  %628 = getelementptr inbounds [1 x i16**], [1 x i16**]* %626, i64 1
  %629 = getelementptr inbounds [1 x i16**], [1 x i16**]* %628, i64 0, i64 0
  store i16** %48, i16*** %629, align 8
  %630 = getelementptr inbounds [1 x i16**], [1 x i16**]* %628, i64 1
  %631 = getelementptr inbounds [1 x i16**], [1 x i16**]* %630, i64 0, i64 0
  store i16** %42, i16*** %631, align 8
  %632 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %613, i64 1
  %633 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %632, i64 0, i64 0
  %634 = getelementptr inbounds [1 x i16**], [1 x i16**]* %633, i64 0, i64 0
  store i16** %48, i16*** %634, align 8
  %635 = getelementptr inbounds [1 x i16**], [1 x i16**]* %633, i64 1
  %636 = getelementptr inbounds [1 x i16**], [1 x i16**]* %635, i64 0, i64 0
  store i16** null, i16*** %636, align 8
  %637 = getelementptr inbounds [1 x i16**], [1 x i16**]* %635, i64 1
  %638 = getelementptr inbounds [1 x i16**], [1 x i16**]* %637, i64 0, i64 0
  store i16** %48, i16*** %638, align 8
  %639 = getelementptr inbounds [1 x i16**], [1 x i16**]* %637, i64 1
  %640 = getelementptr inbounds [1 x i16**], [1 x i16**]* %639, i64 0, i64 0
  store i16** null, i16*** %640, align 8
  %641 = getelementptr inbounds [1 x i16**], [1 x i16**]* %639, i64 1
  %642 = getelementptr inbounds [1 x i16**], [1 x i16**]* %641, i64 0, i64 0
  store i16** %42, i16*** %642, align 8
  %643 = getelementptr inbounds [1 x i16**], [1 x i16**]* %641, i64 1
  %644 = getelementptr inbounds [1 x i16**], [1 x i16**]* %643, i64 0, i64 0
  store i16** %42, i16*** %644, align 8
  %645 = getelementptr inbounds [1 x i16**], [1 x i16**]* %643, i64 1
  %646 = getelementptr inbounds [1 x i16**], [1 x i16**]* %645, i64 0, i64 0
  store i16** %48, i16*** %646, align 8
  %647 = getelementptr inbounds [1 x i16**], [1 x i16**]* %645, i64 1
  %648 = getelementptr inbounds [1 x i16**], [1 x i16**]* %647, i64 0, i64 0
  store i16** %42, i16*** %648, align 8
  %649 = getelementptr inbounds [1 x i16**], [1 x i16**]* %647, i64 1
  %650 = getelementptr inbounds [1 x i16**], [1 x i16**]* %649, i64 0, i64 0
  store i16** %42, i16*** %650, align 8
  %651 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %632, i64 1
  %652 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %651, i64 0, i64 0
  %653 = getelementptr inbounds [1 x i16**], [1 x i16**]* %652, i64 0, i64 0
  store i16** null, i16*** %653, align 8
  %654 = getelementptr inbounds [1 x i16**], [1 x i16**]* %652, i64 1
  %655 = getelementptr inbounds [1 x i16**], [1 x i16**]* %654, i64 0, i64 0
  store i16** %48, i16*** %655, align 8
  %656 = getelementptr inbounds [1 x i16**], [1 x i16**]* %654, i64 1
  %657 = getelementptr inbounds [1 x i16**], [1 x i16**]* %656, i64 0, i64 0
  store i16** null, i16*** %657, align 8
  %658 = getelementptr inbounds [1 x i16**], [1 x i16**]* %656, i64 1
  %659 = getelementptr inbounds [1 x i16**], [1 x i16**]* %658, i64 0, i64 0
  store i16** %48, i16*** %659, align 8
  %660 = getelementptr inbounds [1 x i16**], [1 x i16**]* %658, i64 1
  %661 = getelementptr inbounds [1 x i16**], [1 x i16**]* %660, i64 0, i64 0
  store i16** %42, i16*** %661, align 8
  %662 = getelementptr inbounds [1 x i16**], [1 x i16**]* %660, i64 1
  %663 = getelementptr inbounds [1 x i16**], [1 x i16**]* %662, i64 0, i64 0
  store i16** %48, i16*** %663, align 8
  %664 = getelementptr inbounds [1 x i16**], [1 x i16**]* %662, i64 1
  %665 = getelementptr inbounds [1 x i16**], [1 x i16**]* %664, i64 0, i64 0
  store i16** null, i16*** %665, align 8
  %666 = getelementptr inbounds [1 x i16**], [1 x i16**]* %664, i64 1
  %667 = getelementptr inbounds [1 x i16**], [1 x i16**]* %666, i64 0, i64 0
  store i16** %48, i16*** %667, align 8
  %668 = getelementptr inbounds [1 x i16**], [1 x i16**]* %666, i64 1
  %669 = getelementptr inbounds [1 x i16**], [1 x i16**]* %668, i64 0, i64 0
  store i16** %42, i16*** %669, align 8
  %670 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %651, i64 1
  %671 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %670, i64 0, i64 0
  %672 = getelementptr inbounds [1 x i16**], [1 x i16**]* %671, i64 0, i64 0
  store i16** %48, i16*** %672, align 8
  %673 = getelementptr inbounds [1 x i16**], [1 x i16**]* %671, i64 1
  %674 = getelementptr inbounds [1 x i16**], [1 x i16**]* %673, i64 0, i64 0
  store i16** null, i16*** %674, align 8
  %675 = getelementptr inbounds [1 x i16**], [1 x i16**]* %673, i64 1
  %676 = getelementptr inbounds [1 x i16**], [1 x i16**]* %675, i64 0, i64 0
  store i16** %48, i16*** %676, align 8
  %677 = getelementptr inbounds [1 x i16**], [1 x i16**]* %675, i64 1
  %678 = getelementptr inbounds [1 x i16**], [1 x i16**]* %677, i64 0, i64 0
  store i16** null, i16*** %678, align 8
  %679 = getelementptr inbounds [1 x i16**], [1 x i16**]* %677, i64 1
  %680 = getelementptr inbounds [1 x i16**], [1 x i16**]* %679, i64 0, i64 0
  store i16** %42, i16*** %680, align 8
  %681 = getelementptr inbounds [1 x i16**], [1 x i16**]* %679, i64 1
  %682 = getelementptr inbounds [1 x i16**], [1 x i16**]* %681, i64 0, i64 0
  store i16** %42, i16*** %682, align 8
  %683 = getelementptr inbounds [1 x i16**], [1 x i16**]* %681, i64 1
  %684 = getelementptr inbounds [1 x i16**], [1 x i16**]* %683, i64 0, i64 0
  store i16** %48, i16*** %684, align 8
  %685 = getelementptr inbounds [1 x i16**], [1 x i16**]* %683, i64 1
  %686 = getelementptr inbounds [1 x i16**], [1 x i16**]* %685, i64 0, i64 0
  store i16** %42, i16*** %686, align 8
  %687 = getelementptr inbounds [1 x i16**], [1 x i16**]* %685, i64 1
  %688 = getelementptr inbounds [1 x i16**], [1 x i16**]* %687, i64 0, i64 0
  store i16** %42, i16*** %688, align 8
  %689 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %670, i64 1
  %690 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %689, i64 0, i64 0
  %691 = getelementptr inbounds [1 x i16**], [1 x i16**]* %690, i64 0, i64 0
  store i16** null, i16*** %691, align 8
  %692 = getelementptr inbounds [1 x i16**], [1 x i16**]* %690, i64 1
  %693 = getelementptr inbounds [1 x i16**], [1 x i16**]* %692, i64 0, i64 0
  store i16** %48, i16*** %693, align 8
  %694 = getelementptr inbounds [1 x i16**], [1 x i16**]* %692, i64 1
  %695 = getelementptr inbounds [1 x i16**], [1 x i16**]* %694, i64 0, i64 0
  store i16** null, i16*** %695, align 8
  %696 = getelementptr inbounds [1 x i16**], [1 x i16**]* %694, i64 1
  %697 = getelementptr inbounds [1 x i16**], [1 x i16**]* %696, i64 0, i64 0
  store i16** %48, i16*** %697, align 8
  %698 = getelementptr inbounds [1 x i16**], [1 x i16**]* %696, i64 1
  %699 = getelementptr inbounds [1 x i16**], [1 x i16**]* %698, i64 0, i64 0
  store i16** %42, i16*** %699, align 8
  %700 = getelementptr inbounds [1 x i16**], [1 x i16**]* %698, i64 1
  %701 = getelementptr inbounds [1 x i16**], [1 x i16**]* %700, i64 0, i64 0
  store i16** %48, i16*** %701, align 8
  %702 = getelementptr inbounds [1 x i16**], [1 x i16**]* %700, i64 1
  %703 = getelementptr inbounds [1 x i16**], [1 x i16**]* %702, i64 0, i64 0
  store i16** null, i16*** %703, align 8
  %704 = getelementptr inbounds [1 x i16**], [1 x i16**]* %702, i64 1
  %705 = getelementptr inbounds [1 x i16**], [1 x i16**]* %704, i64 0, i64 0
  store i16** %48, i16*** %705, align 8
  %706 = getelementptr inbounds [1 x i16**], [1 x i16**]* %704, i64 1
  %707 = getelementptr inbounds [1 x i16**], [1 x i16**]* %706, i64 0, i64 0
  store i16** %42, i16*** %707, align 8
  store i32 191971218, i32* %50, align 4
  store i32* @g_129, i32** %51, align 8
  %708 = load i16*, i16** @g_731, align 8
  %709 = load i16, i16* %708, align 2
  %710 = sext i16 %709 to i32
  store i32 %710, i32* %47, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %780

712:                                              ; preds = %574
  %713 = load i32, i32* %4, align 4
  %714 = load i32, i32* %4, align 4
  %715 = load i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), align 2
  %716 = sext i8 %715 to i32
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %735, label %718

718:                                              ; preds = %712
  %719 = load i16*, i16** %42, align 8
  %720 = load i16*, i16** %48, align 8
  store i16* %720, i16** %11, align 8
  %721 = icmp ne i16* %719, %720
  %722 = zext i1 %721 to i32
  %723 = load i32, i32* %4, align 4
  %724 = load i32, i32* %47, align 4
  %725 = getelementptr inbounds [2 x [6 x [4 x i32]]], [2 x [6 x [4 x i32]]]* %20, i64 0, i64 0
  %726 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* %725, i64 0, i64 5
  %727 = getelementptr inbounds [4 x i32], [4 x i32]* %726, i64 0, i64 0
  %728 = load i32, i32* %727, align 16
  %729 = icmp ne i32 %724, %728
  %730 = zext i1 %729 to i32
  store i32 %730, i32* %43, align 4
  %731 = icmp ugt i32 %723, %730
  %732 = zext i1 %731 to i32
  %733 = trunc i32 %732 to i16
  %734 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %733, i16 signext 0)
  br label %735

735:                                              ; preds = %718, %712
  %736 = phi i1 [ true, %712 ], [ false, %718 ]
  %737 = zext i1 %736 to i32
  %738 = sext i32 %737 to i64
  %739 = load i32, i32* %5, align 4
  %740 = sext i32 %739 to i64
  %741 = call i64 @safe_div_func_uint64_t_u_u(i64 %738, i64 %740)
  %742 = trunc i64 %741 to i8
  %743 = load i32, i32* %4, align 4
  %744 = trunc i32 %743 to i8
  %745 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %742, i8 signext %744)
  %746 = sext i8 %745 to i64
  %747 = icmp ule i64 %746, -1
  %748 = zext i1 %747 to i32
  %749 = sext i32 %748 to i64
  %750 = call i64 @safe_add_func_uint64_t_u_u(i64 2656456663283063401, i64 %749)
  %751 = trunc i64 %750 to i32
  %752 = load i32*, i32** @g_1244, align 8
  store i32 %751, i32* %752, align 4
  %753 = call i32 @safe_mod_func_uint32_t_u_u(i32 %714, i32 %751)
  %754 = load i32, i32* %5, align 4
  %755 = sext i32 %754 to i64
  %756 = icmp uge i64 4, %755
  %757 = zext i1 %756 to i32
  %758 = icmp eq i32 %757, 236344616
  %759 = zext i1 %758 to i32
  %760 = sext i32 %759 to i64
  %761 = call i64 @safe_div_func_int64_t_s_s(i64 %760, i64 236344616)
  %762 = icmp ne i64 %761, 0
  br i1 %762, label %766, label %763

763:                                              ; preds = %735
  %764 = load i32, i32* %47, align 4
  %765 = icmp ne i32 %764, 0
  br label %766

766:                                              ; preds = %763, %735
  %767 = phi i1 [ true, %735 ], [ %765, %763 ]
  %768 = zext i1 %767 to i32
  store i32 %768, i32* %50, align 4
  %769 = icmp ule i32 %713, %768
  %770 = zext i1 %769 to i32
  %771 = load i32, i32* %4, align 4
  %772 = icmp ult i32 %770, %771
  %773 = zext i1 %772 to i32
  %774 = load i16, i16* @g_45, align 2
  %775 = zext i16 %774 to i32
  %776 = xor i32 %775, %773
  %777 = trunc i32 %776 to i16
  store i16 %777, i16* @g_45, align 2
  %778 = zext i16 %777 to i32
  %779 = icmp ne i32 %778, 0
  br label %780

780:                                              ; preds = %766, %574
  %781 = phi i1 [ false, %574 ], [ %779, %766 ]
  %782 = zext i1 %781 to i32
  %783 = trunc i32 %782 to i8
  %784 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %783, i8 zeroext 1)
  %785 = icmp ne i8 %784, 0
  br i1 %785, label %786, label %800

786:                                              ; preds = %780
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %55, align 8
  store i16 0, i16* @g_242, align 2
  br label %787

787:                                              ; preds = %793, %786
  %788 = load i16, i16* @g_242, align 2
  %789 = zext i16 %788 to i32
  %790 = icmp sle i32 %789, 2
  br i1 %790, label %791, label %798

791:                                              ; preds = %787
  %792 = load i32*, i32** %55, align 8
  store i32* %792, i32** %51, align 8
  br label %793

793:                                              ; preds = %791
  %794 = load i16, i16* @g_242, align 2
  %795 = zext i16 %794 to i32
  %796 = add nsw i32 %795, 1
  %797 = trunc i32 %796 to i16
  store i16 %797, i16* @g_242, align 2
  br label %787

798:                                              ; preds = %787
  %799 = load i32*, i32** %55, align 8
  store i32* %799, i32** %3, align 8
  br label %937

800:                                              ; preds = %780
  store i8* %23, i8** %56, align 8
  %801 = load i32, i32* %5, align 4
  %802 = load i16**, i16*** %45, align 8
  %803 = icmp eq i16** %802, @g_1641
  %804 = zext i1 %803 to i32
  %805 = xor i32 %801, %804
  %806 = load i16, i16* getelementptr inbounds ([5 x [2 x i16]], [5 x [2 x i16]]* @g_1196, i64 0, i64 0, i64 1), align 2
  %807 = sext i16 %806 to i32
  %808 = load i8, i8* @g_1131, align 1
  %809 = add i8 %808, -1
  store i8 %809, i8* @g_1131, align 1
  %810 = zext i8 %808 to i32
  %811 = load i64*, i64** @g_1700, align 8
  %812 = load i64, i64* %811, align 8
  %813 = load i32, i32* %4, align 4
  %814 = load i32, i32* %43, align 4
  %815 = load i8*, i8** %56, align 8
  store i8 33, i8* %815, align 1
  %816 = load i32, i32* %5, align 4
  %817 = sext i32 %816 to i64
  %818 = xor i64 %817, -2
  %819 = icmp ne i64 33, %818
  %820 = zext i1 %819 to i32
  %821 = icmp sle i32 %814, %820
  %822 = zext i1 %821 to i32
  %823 = sext i32 %822 to i64
  %824 = load i64***, i64**** @g_1029, align 8
  %825 = load i64**, i64*** %824, align 8
  %826 = load i64*, i64** %825, align 8
  %827 = load i64, i64* %826, align 8
  %828 = and i64 %823, %827
  %829 = load i32, i32* %5, align 4
  %830 = trunc i32 %829 to i8
  %831 = load i32, i32* %4, align 4
  %832 = trunc i32 %831 to i8
  %833 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %830, i8 signext %832)
  %834 = sext i8 %833 to i32
  %835 = load i32, i32* %5, align 4
  %836 = icmp sgt i32 %834, %835
  %837 = zext i1 %836 to i32
  %838 = icmp eq i32 %813, %837
  br i1 %838, label %843, label %839

839:                                              ; preds = %800
  %840 = load i64*, i64** @g_1700, align 8
  %841 = load i64, i64* %840, align 8
  %842 = icmp ne i64 %841, 0
  br label %843

843:                                              ; preds = %839, %800
  %844 = phi i1 [ true, %800 ], [ %842, %839 ]
  %845 = zext i1 %844 to i32
  %846 = load i32, i32* %5, align 4
  %847 = or i32 %845, %846
  %848 = trunc i32 %847 to i8
  %849 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %848, i32 7)
  %850 = zext i8 %849 to i32
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %852, label %853

852:                                              ; preds = %843
  br label %853

853:                                              ; preds = %852, %843
  %854 = phi i1 [ false, %843 ], [ true, %852 ]
  %855 = zext i1 %854 to i32
  %856 = load i32, i32* %43, align 4
  %857 = xor i32 %855, %856
  %858 = load i64*, i64** %46, align 8
  %859 = icmp eq i64* %858, null
  %860 = zext i1 %859 to i32
  %861 = load i16, i16* %24, align 2
  %862 = sext i16 %861 to i32
  %863 = and i32 %860, %862
  %864 = sext i32 %863 to i64
  %865 = xor i64 %812, %864
  %866 = load i32, i32* %5, align 4
  %867 = sext i32 %866 to i64
  %868 = icmp ule i64 %865, %867
  %869 = zext i1 %868 to i32
  %870 = and i32 %810, %869
  br i1 false, label %871, label %874

871:                                              ; preds = %853
  %872 = load i32, i32* %5, align 4
  %873 = icmp ne i32 %872, 0
  br label %874

874:                                              ; preds = %871, %853
  %875 = phi i1 [ false, %853 ], [ %873, %871 ]
  %876 = zext i1 %875 to i32
  %877 = load i16*, i16** @g_731, align 8
  %878 = load i16, i16* %877, align 2
  %879 = sext i16 %878 to i32
  %880 = icmp sgt i32 %807, %879
  %881 = zext i1 %880 to i32
  %882 = icmp sgt i32 %805, %881
  %883 = zext i1 %882 to i32
  %884 = load i32*, i32** %51, align 8
  store i32 %883, i32* %884, align 4
  br i1 %882, label %885, label %893

885:                                              ; preds = %874
  %886 = getelementptr inbounds [5 x [5 x i32*****]], [5 x [5 x i32*****]]* %27, i64 0, i64 2
  %887 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %886, i64 0, i64 1
  store i32***** null, i32****** %887, align 8
  %888 = load i32*, i32** %7, align 8
  store i32 1, i32* %888, align 4
  %889 = load i16, i16* %24, align 2
  %890 = icmp ne i16 %889, 0
  br i1 %890, label %891, label %892

891:                                              ; preds = %885
  br label %922

892:                                              ; preds = %885
  br label %906

893:                                              ; preds = %874
  %894 = load i32*****, i32****** %6, align 8
  %895 = load i32****, i32***** %894, align 8
  %896 = load i32***, i32**** %895, align 8
  %897 = load i32**, i32*** %896, align 8
  store i32* %50, i32** %897, align 8
  %898 = load i32****, i32***** @g_1516, align 8
  %899 = load i32***, i32**** %898, align 8
  %900 = load i32**, i32*** %899, align 8
  %901 = load i32*, i32** %900, align 8
  %902 = load i32, i32* %901, align 4
  %903 = icmp ne i32 %902, 0
  br i1 %903, label %904, label %905

904:                                              ; preds = %893
  br label %913

905:                                              ; preds = %893
  br label %906

906:                                              ; preds = %905, %892
  br label %907

907:                                              ; preds = %906
  br label %908

908:                                              ; preds = %907
  %909 = load i8, i8* %22, align 1
  %910 = sext i8 %909 to i32
  %911 = add nsw i32 %910, 1
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %22, align 1
  br label %570

913:                                              ; preds = %904, %570
  br label %914

914:                                              ; preds = %913
  %915 = load i8, i8* @g_265, align 1
  %916 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %915, i8 zeroext 7)
  store i8 %916, i8* @g_265, align 1
  br label %565

917:                                              ; preds = %565
  br label %918

918:                                              ; preds = %917
  %919 = load i64, i64* @g_1399, align 8
  %920 = call i64 @safe_add_func_uint64_t_u_u(i64 %919, i64 8)
  store i64 %920, i64* @g_1399, align 8
  br label %69

921:                                              ; preds = %69
  br label %922

922:                                              ; preds = %921, %891
  store i32 0, i32* @g_115, align 4
  br label %923

923:                                              ; preds = %928, %922
  %924 = load i32, i32* @g_115, align 4
  %925 = icmp uge i32 %924, 41
  br i1 %925, label %926, label %933

926:                                              ; preds = %923
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %57, align 8
  %927 = load i32*, i32** %57, align 8
  store i32* %927, i32** %3, align 8
  br label %937

928:                                              ; No predecessors!
  %929 = load i32, i32* @g_115, align 4
  %930 = zext i32 %929 to i64
  %931 = call i64 @safe_add_func_uint64_t_u_u(i64 %930, i64 7)
  %932 = trunc i64 %931 to i32
  store i32 %932, i32* @g_115, align 4
  br label %923

933:                                              ; preds = %923
  %934 = load i8, i8* %17, align 1
  %935 = add i8 %934, 1
  store i8 %935, i8* %17, align 1
  %936 = load i32*, i32** getelementptr inbounds ([1 x [2 x [6 x i32*]]], [1 x [2 x [6 x i32*]]]* @g_1864, i64 0, i64 0, i64 1, i64 0), align 16
  store i32* %936, i32** %3, align 8
  br label %937

937:                                              ; preds = %933, %926, %798, %131
  %938 = load i32*, i32** %3, align 8
  ret i32* %938
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  br label %17

11:                                               ; preds = %2
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = srem i32 %13, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %10, %8 ], [ %16, %11 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 32
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 255, %13
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %7, %2
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  br label %24

19:                                               ; preds = %10
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %21, %22
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i32 [ %18, %16 ], [ %23, %19 ]
  %26 = trunc i32 %25 to i8
  ret i8 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_sub_func_int64_t_s_s(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = xor i64 %5, %6
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = xor i64 %9, %10
  %12 = and i64 %11, -9223372036854775808
  %13 = xor i64 %8, %12
  %14 = load i64, i64* %4, align 8
  %15 = sub nsw i64 %13, %14
  %16 = load i64, i64* %4, align 8
  %17 = xor i64 %15, %16
  %18 = and i64 %7, %17
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %3, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %23, %24
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i64 [ %21, %20 ], [ %25, %22 ]
  ret i64 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i32
  %9 = mul nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, -32768
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i16, i16* %3, align 2
  %18 = sext i16 %17 to i32
  br label %25

19:                                               ; preds = %12, %8
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = srem i32 %21, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = trunc i32 %26 to i16
  ret i16 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, -128
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  br label %25

19:                                               ; preds = %12, %8
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = sdiv i32 %21, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = trunc i32 %26 to i8
  ret i8 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8, %2
  %15 = load i16, i16* %3, align 2
  %16 = sext i16 %15 to i32
  br label %22

17:                                               ; preds = %11
  %18 = load i16, i16* %3, align 2
  %19 = sext i16 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %19, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i16
  ret i16 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = mul i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp uge i32 %9, 32
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i16, i16* %3, align 2
  %13 = sext i16 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 32767, %14
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %8, %2
  %18 = load i16, i16* %3, align 2
  %19 = sext i16 %18 to i32
  br label %25

20:                                               ; preds = %11
  %21 = load i16, i16* %3, align 2
  %22 = sext i16 %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %22, %23
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %19, %17 ], [ %24, %20 ]
  %27 = trunc i32 %26 to i16
  ret i16 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = mul nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = sub nsw i32 0, %4
  %6 = trunc i32 %5 to i16
  ret i16 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 127, %17
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %11, %8, %2
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  br label %28

23:                                               ; preds = %14
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %25, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i32 [ %22, %20 ], [ %27, %23 ]
  %30 = trunc i32 %29 to i8
  ret i8 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_add_func_uint32_t_u_u(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = sub nsw i32 0, %4
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_add_func_int64_t_s_s(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 9223372036854775807, %12
  %14 = icmp sgt i64 %11, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %10, %7, %2
  %16 = load i64, i64* %3, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 -9223372036854775808, %23
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %10
  %27 = load i64, i64* %3, align 8
  br label %32

28:                                               ; preds = %21, %18, %15
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %29, %30
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ]
  ret i64 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_div_func_uint64_t_u_u(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  br label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = udiv i64 %10, %11
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %8, %7 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_mod_func_int64_t_s_s(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, -9223372036854775808
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i64, i64* %3, align 8
  br label %19

15:                                               ; preds = %10, %7
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = srem i64 %16, %17
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i64 [ %14, %13 ], [ %18, %15 ]
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_add_func_int32_t_s_s(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 2147483647, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %10, %7, %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 -2147483648, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %10
  %27 = load i32, i32* %3, align 4
  br label %32

28:                                               ; preds = %21, %18, %15
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_div_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, -32768
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i16, i16* %3, align 2
  %18 = sext i16 %17 to i32
  br label %25

19:                                               ; preds = %12, %8
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = sdiv i32 %21, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = trunc i32 %26 to i16
  ret i16 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i16, i16* %3, align 2
  %16 = sext i16 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 32767, %17
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %11, %8, %2
  %21 = load i16, i16* %3, align 2
  %22 = sext i16 %21 to i32
  br label %28

23:                                               ; preds = %14
  %24 = load i16, i16* %3, align 2
  %25 = sext i16 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %25, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i32 [ %22, %20 ], [ %27, %23 ]
  %30 = trunc i32 %29 to i16
  ret i16 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  br label %17

11:                                               ; preds = %2
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = sdiv i32 %13, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %10, %8 ], [ %16, %11 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8, %2
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  br label %22

17:                                               ; preds = %11
  %18 = load i8, i8* %3, align 1
  %19 = sext i8 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %19, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  ret i8 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  br label %17

11:                                               ; preds = %2
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = sdiv i32 %13, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %10, %8 ], [ %16, %11 ]
  %19 = trunc i32 %18 to i16
  ret i16 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @func_97(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x [2 x [8 x i32]]], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i8], align 1
  %17 = alloca i32***, align 8
  %18 = alloca i32****, align 8
  %19 = alloca [9 x [2 x i32]], align 16
  %20 = alloca [9 x i32*], align 16
  %21 = alloca [5 x [2 x i32*]], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca [9 x i32*], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*****, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca [8 x i32*], align 16
  %37 = alloca i32, align 4
  %38 = alloca i32**, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32**, align 8
  %41 = alloca i64*, align 8
  %42 = alloca i16, align 2
  %43 = alloca [10 x i32*], align 16
  %44 = alloca i32, align 4
  %45 = alloca i8*, align 8
  %46 = alloca i16**, align 8
  %47 = alloca [10 x [8 x [3 x i32]]], align 16
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i8, align 1
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32*, align 8
  %55 = alloca [7 x [4 x i32]], align 16
  %56 = alloca i32*, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i16* @g_45, i16** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 1677819522, i32* %9, align 4
  store i32 -1725486833, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %60 = bitcast [2 x [2 x [8 x i32]]]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %60, i8* align 16 bitcast ([2 x [2 x [8 x i32]]]* @__const.func_97.l_682 to i8*), i64 128, i1 false)
  store i32 -2, i32* %13, align 4
  store i32 -8, i32* %14, align 4
  store i32 -8, i32* %15, align 4
  store i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i64 0, i64 0), i32**** %17, align 8
  store i32**** %17, i32***** %18, align 8
  %61 = bitcast [9 x [2 x i32]]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 bitcast ([9 x [2 x i32]]* @__const.func_97.l_708 to i8*), i64 72, i1 false)
  %62 = bitcast [9 x i32*]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([9 x i32*]* @__const.func_97.l_734 to i8*), i64 72, i1 false)
  %63 = getelementptr inbounds [5 x [2 x i32*]], [5 x [2 x i32*]]* %21, i64 0, i64 0
  %64 = getelementptr inbounds [2 x i32*], [2 x i32*]* %63, i64 0, i64 0
  store i32* %7, i32** %64, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* %7, i32** %65, align 8
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %63, i64 1
  %67 = getelementptr inbounds [2 x i32*], [2 x i32*]* %66, i64 0, i64 0
  %68 = getelementptr inbounds [2 x [2 x [8 x i32]]], [2 x [2 x [8 x i32]]]* %12, i64 0, i64 0
  %69 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %68, i64 0, i64 0
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %69, i64 0, i64 3
  store i32* %70, i32** %67, align 8
  %71 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* %7, i32** %71, align 8
  %72 = getelementptr inbounds [2 x i32*], [2 x i32*]* %66, i64 1
  %73 = getelementptr inbounds [2 x i32*], [2 x i32*]* %72, i64 0, i64 0
  store i32* %7, i32** %73, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = getelementptr inbounds [2 x [2 x [8 x i32]]], [2 x [2 x [8 x i32]]]* %12, i64 0, i64 0
  %76 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %75, i64 0, i64 0
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %76, i64 0, i64 3
  store i32* %77, i32** %74, align 8
  %78 = getelementptr inbounds [2 x i32*], [2 x i32*]* %72, i64 1
  %79 = getelementptr inbounds [2 x i32*], [2 x i32*]* %78, i64 0, i64 0
  store i32* %7, i32** %79, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* %7, i32** %80, align 8
  %81 = getelementptr inbounds [2 x i32*], [2 x i32*]* %78, i64 1
  %82 = getelementptr inbounds [2 x i32*], [2 x i32*]* %81, i64 0, i64 0
  %83 = getelementptr inbounds [2 x [2 x [8 x i32]]], [2 x [2 x [8 x i32]]]* %12, i64 0, i64 0
  %84 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %83, i64 0, i64 0
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %84, i64 0, i64 3
  store i32* %85, i32** %82, align 8
  %86 = getelementptr inbounds i32*, i32** %82, i64 1
  store i32* %7, i32** %86, align 8
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 2), i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %87

87:                                               ; preds = %94, %2
  %88 = load i32, i32* %23, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %23, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 %92
  store i8 -1, i8* %93, align 1
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %23, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %23, align 4
  br label %87

97:                                               ; preds = %87
  %98 = load i16*, i16** %6, align 8
  store i16 4, i16* %98, align 2
  br i1 false, label %99, label %108

99:                                               ; preds = %97
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  store i32* null, i32** %28, align 8
  %100 = bitcast [9 x i32*]* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %100, i8* align 16 bitcast ([9 x i32*]* @__const.func_97.l_676 to i8*), i64 72, i1 false)
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = add i8 %102, -1
  store i8 %103, i8* %101, align 1
  %104 = load i32, i32* %4, align 4
  %105 = getelementptr inbounds [2 x [2 x [8 x i32]]], [2 x [2 x [8 x i32]]]* %12, i64 0, i64 0
  %106 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %105, i64 0, i64 0
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %106, i64 0, i64 3
  store i32 %104, i32* %107, align 4
  br label %460

108:                                              ; preds = %97
  store i32* %7, i32** %31, align 8
  store i32***** %18, i32****** %32, align 8
  store i64 -8, i64* %33, align 8
  store i64 -1541609869214341832, i64* %34, align 8
  store i32 1, i32* %35, align 4
  %109 = getelementptr inbounds [8 x i32*], [8 x i32*]* %36, i64 0, i64 0
  store i32* %35, i32** %109, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  store i32* %35, i32** %110, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* %35, i32** %111, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  store i32* %35, i32** %112, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  store i32* %35, i32** %113, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  store i32* %35, i32** %114, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  store i32* %35, i32** %115, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* %35, i32** %116, align 8
  %117 = load i32*, i32** %31, align 8
  store i32* %117, i32** @g_590, align 8
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds [2 x [2 x [8 x i32]]], [2 x [2 x [8 x i32]]]* %12, i64 0, i64 1
  %120 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %119, i64 0, i64 0
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %120, i64 0, i64 2
  store i32 %118, i32* %121, align 8
  %122 = call i32 @safe_div_func_int32_t_s_s(i32 -1, i32 %118)
  %123 = load i32, i32* %4, align 4
  %124 = xor i32 %123, -1
  %125 = load i32*, i32** %31, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i8, i8* %5, align 1
  %128 = load i32****, i32***** %18, align 8
  %129 = load i32*****, i32****** %32, align 8
  store i32**** %128, i32***** %129, align 8
  %130 = icmp ne i32**** %128, %17
  %131 = zext i1 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = load i64**, i64*** @g_393, align 8
  %134 = load i64*, i64** %133, align 8
  store i64 %132, i64* %134, align 8
  %135 = call i64 @safe_div_func_int64_t_s_s(i64 %132, i64 2)
  %136 = trunc i64 %135 to i8
  %137 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %136, i32 0)
  %138 = sext i8 %137 to i64
  %139 = icmp slt i64 87, %138
  %140 = zext i1 %139 to i32
  %141 = trunc i32 %140 to i16
  %142 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* %19, i64 0, i64 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %142, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = trunc i32 %144 to i16
  %146 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %141, i16 zeroext %145)
  %147 = trunc i16 %146 to i8
  %148 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %127, i8 signext %147)
  %149 = sext i8 %148 to i32
  %150 = load i32, i32* %4, align 4
  %151 = icmp sgt i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = icmp ne i32 %126, %152
  %154 = zext i1 %153 to i32
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* @g_118, align 4
  %157 = sext i32 %156 to i64
  %158 = call i64 @safe_sub_func_uint64_t_u_u(i64 %155, i64 %157)
  %159 = trunc i64 %158 to i32
  %160 = call i32 @safe_div_func_int32_t_s_s(i32 %124, i32 %159)
  %161 = load i32****, i32***** %18, align 8
  %162 = load i32***, i32**** %161, align 8
  %163 = icmp ne i32*** %162, getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i64 0, i64 1)
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %4, align 4
  %166 = load i8, i8* %5, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sge i32 %165, %167
  br i1 %168, label %169, label %440

169:                                              ; preds = %108
  store i32** null, i32*** %38, align 8
  store i32* @g_58, i32** %39, align 8
  store i32** %39, i32*** %40, align 8
  store i64* null, i64** %41, align 8
  %170 = load i32****, i32***** %18, align 8
  %171 = load i32***, i32**** %170, align 8
  %172 = load i32**, i32*** %171, align 8
  store i32* %4, i32** %172, align 8
  %173 = load i32**, i32*** %40, align 8
  store i32* %4, i32** %173, align 8
  %174 = load i32**, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), align 8
  %175 = load i32*, i32** %174, align 8
  %176 = load i32*****, i32****** %32, align 8
  %177 = load i32****, i32***** %176, align 8
  %178 = load i32***, i32**** %177, align 8
  %179 = load i32**, i32*** %178, align 8
  store i32* %175, i32** %179, align 8
  %180 = load i32***, i32**** %17, align 8
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = load i32, i32* %4, align 4
  %186 = load i16*, i16** %6, align 8
  store i16 23389, i16* %186, align 2
  %187 = load i32, i32* %4, align 4
  %188 = trunc i32 %187 to i16
  %189 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 23389, i16 zeroext %188)
  %190 = zext i16 %189 to i32
  %191 = call i32 @safe_add_func_uint32_t_u_u(i32 %185, i32 %190)
  %192 = zext i32 %191 to i64
  %193 = call i64 @safe_add_func_uint64_t_u_u(i64 %184, i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %363

195:                                              ; preds = %169
  store i16 0, i16* %42, align 2
  store i32 0, i32* %44, align 4
  br label %196

196:                                              ; preds = %203, %195
  %197 = load i32, i32* %44, align 4
  %198 = icmp slt i32 %197, 10
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load i32, i32* %44, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [10 x i32*], [10 x i32*]* %43, i64 0, i64 %201
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %202, align 8
  br label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %44, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %44, align 4
  br label %196

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %231, %206
  %208 = load i32****, i32***** %18, align 8
  %209 = load i32***, i32**** %208, align 8
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %207
  store i8 0, i8* @g_265, align 1
  br label %215

215:                                              ; preds = %223, %214
  %216 = load i8, i8* @g_265, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp slt i32 %217, 7
  br i1 %218, label %219, label %228

219:                                              ; preds = %215
  %220 = load i8, i8* @g_265, align 1
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds [7 x i32], [7 x i32]* @g_112, i64 0, i64 %221
  store i32 1128781516, i32* %222, align 4
  br label %223

223:                                              ; preds = %219
  %224 = load i8, i8* @g_265, align 1
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %225, 1
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* @g_265, align 1
  br label %215

228:                                              ; preds = %215
  %229 = load i32, i32* %4, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  br label %207

232:                                              ; preds = %228
  br label %272

233:                                              ; preds = %207
  store i8* @g_265, i8** %45, align 8
  store i16** @g_731, i16*** %46, align 8
  %234 = load i16, i16* %42, align 2
  %235 = trunc i16 %234 to i8
  %236 = load i32, i32* %4, align 4
  %237 = load i32****, i32***** %18, align 8
  %238 = load i32***, i32**** %237, align 8
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %240, align 4
  %242 = trunc i32 %241 to i8
  %243 = load i32*, i32** %39, align 8
  %244 = load i32, i32* %243, align 4
  %245 = trunc i32 %244 to i8
  %246 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %242, i8 signext %245)
  %247 = sext i8 %246 to i64
  %248 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %247)
  %249 = trunc i64 %248 to i8
  %250 = load i8*, i8** %45, align 8
  store i8 %249, i8* %250, align 1
  %251 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %235, i8 zeroext %249)
  %252 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %251)
  %253 = sext i8 %252 to i32
  %254 = load i32***, i32**** %17, align 8
  %255 = load i32**, i32*** %254, align 8
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @safe_add_func_uint32_t_u_u(i32 %253, i32 %257)
  %259 = load i16*, i16** %6, align 8
  %260 = load i16, i16* %259, align 2
  %261 = add i16 %260, 1
  store i16 %261, i16* %259, align 2
  %262 = load i16**, i16*** getelementptr inbounds ([4 x [10 x [6 x i16**]]], [4 x [10 x [6 x i16**]]]* @g_730, i64 0, i64 0, i64 7, i64 5), align 8
  %263 = load i16**, i16*** %46, align 8
  %264 = icmp eq i16** %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* @g_58, align 4
  %267 = and i32 %265, %266
  %268 = load i32****, i32***** %18, align 8
  %269 = load i32***, i32**** %268, align 8
  %270 = load i32**, i32*** %269, align 8
  %271 = load i32*, i32** %270, align 8
  store i32 %267, i32* %271, align 4
  br label %272

272:                                              ; preds = %233, %232
  store i32 0, i32* %10, align 4
  br label %273

273:                                              ; preds = %359, %272
  %274 = load i32, i32* %10, align 4
  %275 = icmp sle i32 %274, 1
  br i1 %275, label %276, label %362

276:                                              ; preds = %273
  %277 = bitcast [10 x [8 x [3 x i32]]]* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %277, i8* align 16 bitcast ([10 x [8 x [3 x i32]]]* @__const.func_97.l_751 to i8*), i64 960, i1 false)
  %278 = load i8, i8* %5, align 1
  %279 = icmp ne i8 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = getelementptr inbounds [9 x i32*], [9 x i32*]* %20, i64 0, i64 1
  %282 = load i32*, i32** %281, align 8
  store i32* %282, i32** %3, align 8
  br label %462

283:                                              ; preds = %276
  %284 = load i8, i8* %5, align 1
  %285 = icmp ne i8 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %362

287:                                              ; preds = %283
  %288 = load i32**, i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_201, i32 0, i32 0), align 8
  store i32* %4, i32** %288, align 8
  %289 = load i8, i8* %5, align 1
  %290 = icmp ne i8 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %287
  br label %362

292:                                              ; preds = %287
  br label %293

293:                                              ; preds = %292
  %294 = load i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 0, i64 2, i64 5), align 1
  %295 = sext i8 %294 to i64
  %296 = load i8, i8* %5, align 1
  %297 = sext i8 %296 to i32
  %298 = load i8, i8* %5, align 1
  %299 = sext i8 %298 to i16
  %300 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %299, i32 4)
  %301 = zext i16 %300 to i32
  %302 = and i32 %297, %301
  %303 = trunc i32 %302 to i8
  %304 = load i32****, i32***** %18, align 8
  %305 = load i32***, i32**** %304, align 8
  %306 = load i32**, i32*** %305, align 8
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %307, align 4
  %309 = load i8, i8* %5, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp sge i32 %308, %310
  br i1 %311, label %317, label %312

312:                                              ; preds = %293
  %313 = load i64**, i64*** @g_393, align 8
  %314 = load i64*, i64** %313, align 8
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br label %317

317:                                              ; preds = %312, %293
  %318 = phi i1 [ true, %293 ], [ %316, %312 ]
  %319 = zext i1 %318 to i32
  %320 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %303, i32 %319)
  %321 = sext i8 %320 to i32
  %322 = call i32 @safe_div_func_int32_t_s_s(i32 6, i32 %321)
  %323 = load i32*****, i32****** @g_746, align 8
  %324 = load i32*****, i32****** %32, align 8
  %325 = icmp eq i32***** %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i64, i64* %33, align 8
  %328 = trunc i64 %327 to i32
  %329 = call i32 @safe_mod_func_uint32_t_u_u(i32 %326, i32 %328)
  %330 = icmp ult i32 %322, %329
  %331 = zext i1 %330 to i32
  %332 = sext i32 %331 to i64
  %333 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %332)
  %334 = load i64, i64* %34, align 8
  %335 = call i64 @safe_add_func_uint64_t_u_u(i64 %333, i64 %334)
  %336 = icmp ugt i64 %295, %335
  %337 = zext i1 %336 to i32
  %338 = load i32, i32* @g_108, align 4
  %339 = icmp ne i32 %337, %338
  %340 = zext i1 %339 to i32
  %341 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* %47, i64 0, i64 4
  %342 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %341, i64 0, i64 7
  %343 = getelementptr inbounds [3 x i32], [3 x i32]* %342, i64 0, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %344, %340
  store i32 %345, i32* %343, align 4
  store i16 0, i16* @g_242, align 2
  br label %346

346:                                              ; preds = %353, %317
  %347 = load i16, i16* @g_242, align 2
  %348 = zext i16 %347 to i32
  %349 = icmp sle i32 %348, 3
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = getelementptr inbounds [10 x i32*], [10 x i32*]* %43, i64 0, i64 7
  %352 = load i32*, i32** %351, align 8
  store i32* %352, i32** %3, align 8
  br label %462

353:                                              ; No predecessors!
  %354 = load i16, i16* @g_242, align 2
  %355 = zext i16 %354 to i32
  %356 = add nsw i32 %355, 1
  %357 = trunc i32 %356 to i16
  store i16 %357, i16* @g_242, align 2
  br label %346

358:                                              ; preds = %346
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  br label %273

362:                                              ; preds = %291, %286, %273
  br label %436

363:                                              ; preds = %169
  %364 = load i32**, i32*** %40, align 8
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %365, align 4
  %367 = load i32*, i32** @g_202, align 8
  store i32 %366, i32* %367, align 4
  store i32 2, i32* %4, align 4
  br label %368

368:                                              ; preds = %432, %363
  %369 = load i32, i32* %4, align 4
  %370 = icmp sge i32 %369, 0
  br i1 %370, label %371, label %435

371:                                              ; preds = %368
  store i8 -10, i8* %51, align 1
  store i32 841247228, i32* %52, align 4
  %372 = load i8, i8* %51, align 1
  %373 = zext i8 %372 to i32
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %371
  %376 = load i32, i32* %4, align 4
  %377 = icmp ne i32 %376, 0
  br label %378

378:                                              ; preds = %375, %371
  %379 = phi i1 [ true, %371 ], [ %377, %375 ]
  %380 = zext i1 %379 to i32
  %381 = trunc i32 %380 to i16
  %382 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %381)
  %383 = zext i16 %382 to i32
  %384 = load i32, i32* %52, align 4
  %385 = xor i32 %384, %383
  store i32 %385, i32* %52, align 4
  store i32 2, i32* @g_129, align 4
  br label %386

386:                                              ; preds = %428, %378
  %387 = load i32, i32* @g_129, align 4
  %388 = icmp sge i32 %387, 0
  br i1 %388, label %389, label %431

389:                                              ; preds = %386
  store i32 -1624072543, i32* %53, align 4
  store i32* @g_108, i32** %54, align 8
  %390 = load i32, i32* %4, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  br label %431

393:                                              ; preds = %389
  %394 = load i32***, i32**** %17, align 8
  %395 = load i32**, i32*** %394, align 8
  store i32* %4, i32** %395, align 8
  %396 = load i32, i32* %53, align 4
  %397 = add i32 %396, 1
  store i32 %397, i32* %53, align 4
  %398 = load i64*, i64** %41, align 8
  %399 = icmp ne i64* null, %398
  %400 = zext i1 %399 to i32
  %401 = sext i32 %400 to i64
  %402 = icmp eq i64 %401, 0
  %403 = zext i1 %402 to i32
  %404 = trunc i32 %403 to i8
  %405 = load i32*, i32** %54, align 8
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, 1
  store i32 %407, i32* %405, align 4
  %408 = call i32 @safe_sub_func_uint32_t_u_u(i32 0, i32 %406)
  %409 = trunc i32 %408 to i8
  %410 = load i32, i32* %4, align 4
  %411 = trunc i32 %410 to i8
  %412 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %409, i8 zeroext %411)
  %413 = load i16*, i16** @g_731, align 8
  %414 = load i16, i16* %413, align 2
  %415 = sext i16 %414 to i32
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %393
  %418 = load i64, i64* @g_187, align 8
  %419 = icmp ne i64 %418, 0
  br label %420

420:                                              ; preds = %417, %393
  %421 = phi i1 [ true, %393 ], [ %419, %417 ]
  %422 = zext i1 %421 to i32
  %423 = trunc i32 %422 to i8
  %424 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %404, i8 signext %423)
  %425 = sext i8 %424 to i32
  %426 = load i32, i32* %35, align 4
  %427 = and i32 %426, %425
  store i32 %427, i32* %35, align 4
  br label %428

428:                                              ; preds = %420
  %429 = load i32, i32* @g_129, align 4
  %430 = sub nsw i32 %429, 1
  store i32 %430, i32* @g_129, align 4
  br label %386

431:                                              ; preds = %392, %386
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %4, align 4
  %434 = sub nsw i32 %433, 1
  store i32 %434, i32* %4, align 4
  br label %368

435:                                              ; preds = %368
  br label %436

436:                                              ; preds = %435, %362
  %437 = load i32*, i32** @g_202, align 8
  %438 = load i32, i32* %437, align 4
  %439 = load i32*, i32** %39, align 8
  store i32 %438, i32* %439, align 4
  br label %459

440:                                              ; preds = %108
  %441 = bitcast [7 x [4 x i32]]* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %441, i8* align 16 bitcast ([7 x [4 x i32]]* @__const.func_97.l_771 to i8*), i64 112, i1 false)
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 4), i32** %56, align 8
  store i32 -780807691, i32* %35, align 4
  %442 = load i8, i8* %5, align 1
  %443 = sext i8 %442 to i32
  %444 = getelementptr inbounds [7 x [4 x i32]], [7 x [4 x i32]]* %55, i64 0, i64 3
  %445 = getelementptr inbounds [4 x i32], [4 x i32]* %444, i64 0, i64 1
  store i32 %443, i32* %445, align 4
  store i32 13, i32* @g_118, align 4
  br label %446

446:                                              ; preds = %455, %440
  %447 = load i32, i32* @g_118, align 4
  %448 = icmp ne i32 %447, 23
  br i1 %448, label %449, label %458

449:                                              ; preds = %446
  store i32* %35, i32** %59, align 8
  %450 = load i32, i32* %4, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %449
  br label %458

453:                                              ; preds = %449
  %454 = load i32*, i32** %56, align 8
  store i32* %454, i32** %3, align 8
  br label %462

455:                                              ; No predecessors!
  %456 = load i32, i32* @g_118, align 4
  %457 = call i32 @safe_add_func_int32_t_s_s(i32 %456, i32 2)
  store i32 %457, i32* @g_118, align 4
  br label %446

458:                                              ; preds = %452, %446
  br label %459

459:                                              ; preds = %458, %436
  br label %460

460:                                              ; preds = %459, %99
  %461 = load i32*, i32** %22, align 8
  store i32* %461, i32** %3, align 8
  br label %462

462:                                              ; preds = %460, %453, %350, %280
  %463 = load i32*, i32** %3, align 8
  ret i32* %463
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_div_func_int32_t_s_s(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, -2147483648
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %3, align 4
  br label %19

15:                                               ; preds = %10, %7
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %16, %17
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_div_func_uint32_t_u_u(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  br label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = udiv i32 %10, %11
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_div_func_int64_t_s_s(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, -9223372036854775808
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i64, i64* %3, align 8
  br label %19

15:                                               ; preds = %10, %7
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = sdiv i64 %16, %17
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i64 [ %14, %13 ], [ %18, %15 ]
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_add_func_uint64_t_u_u(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %5, %6
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_sub_func_uint64_t_u_u(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = sub i64 %5, %6
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp uge i32 %9, 32
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 127, %14
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %8, %2
  %18 = load i8, i8* %3, align 1
  %19 = sext i8 %18 to i32
  br label %25

20:                                               ; preds = %11
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %22, %23
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %19, %17 ], [ %24, %20 ]
  %27 = trunc i32 %26 to i8
  ret i8 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_unary_minus_func_uint64_t_u(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = sub i64 0, %3
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, -128
  br i1 %11, label %12, label %19

12:              
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  br label %25

19:                                               ; preds = %12, %8
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = srem i32 %21, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = trunc i32 %26 to i8
  ret i8 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp uge i32 %5, 32
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  br label %15

10:                                               ; preds = %2
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %12, %13
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ %9, %7 ], [ %14, %10 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_8bytes(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = lshr i64 %3, 0
  %5 = and i64 %4, 255
  %6 = trunc i64 %5 to i8
  call void @crc32_byte(i8 zeroext %6)
  %7 = load i64, i64* %2, align 8
  %8 = lshr i64 %7, 8
  %9 = and i64 %8, 255
  %10 = trunc i64 %9 to i8
  call void @crc32_byte(i8 zeroext %10)
  %11 = load i64, i64* %2, align 8
  %12 = lshr i64 %11, 16
  %13 = and i64 %12, 255
  %14 = trunc i64 %13 to i8
  call void @crc32_byte(i8 zeroext %14)
  %15 = load i64, i64* %2, align 8
  %16 = lshr i64 %15, 24
  %17 = and i64 %16, 255
  %18 = trunc i64 %17 to i8
  call void @crc32_byte(i8 zeroext %18)
  %19 = load i64, i64* %2, align 8
  %20 = lshr i64 %19, 32
  %21 = and i64 %20, 255
  %22 = trunc i64 %21 to i8
  call void @crc32_byte(i8 zeroext %22)
  %23 = load i64, i64* %2, align 8
  %24 = lshr i64 %23, 40
  %25 = and i64 %24, 255
  %26 = trunc i64 %25 to i8
  call void @crc32_byte(i8 zeroext %26)
  %27 = load i64, i64* %2, align 8
  %28 = lshr i64 %27, 48
  %29 = and i64 %28, 255
  %30 = trunc i64 %29 to i8
  call void @crc32_byte(i8 zeroext %30)
  %31 = load i64, i64* %2, align 8
  %32 = lshr i64 %31, 56
  %33 = and i64 %32, 255
  %34 = trunc i64 %33 to i8
  call void @crc32_byte(i8 zeroext %34)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_byte(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i32, i32* @crc32_context, align 4
  %4 = lshr i32 %3, 8
  %5 = and i32 %4, 16777215
  %6 = load i32, i32* @crc32_context, align 4
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = xor i32 %6, %8
  %10 = and i32 %9, 255
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %5, %13
  store i32 %14, i32* @crc32_context, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
