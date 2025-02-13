/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Sat Oct 26 18:57:32 2024
/////////////////////////////////////////////////////////////


module Ramen ( clk, rst_n, in_valid, selling, portion, ramen_type, 
        out_valid_order, success, out_valid_tot, sold_num, total_gain );
  input [1:0] ramen_type;
  output [27:0] sold_num;
  output [14:0] total_gain;
  input clk, rst_n, in_valid, selling, portion;
  output out_valid_order, success, out_valid_tot;
  wire   portion_store, N75, N76, N77, can_sell_store, N777, N778, N779, N780,
         N781, N782, N783, N784, N785, N786, N787, N788, N789, N791, N792,
         N793, N794, N795, N796, N797, N798, N799, N800, N801, N802, N803,
         N804, N805, N807, N808, N809, N810, N811, N812, N813, N814, N815,
         N816, N817, N818, N819, N820, N821, N822, N823, N824, N825, N826,
         N827, N828, N829, N830, N831, N832, N833, N834, N835, N836, N837,
         N838, N839, N840, N843, N846, N847, N848, N849, N850, N851, N852,
         N853, N854, N855, N856, N857, N858, N859, N860, N861, N862, N863,
         N864, N865, N866, N867, N868, N869, N870, N871, N872, N873, N983,
         N984, N985, N986, N987, N988, N989, N990, N991, N992, N993, N994,
         N995, N996, C60_DATA2_1, C60_DATA2_2, C60_DATA2_3, C60_DATA2_4,
         C60_DATA2_5, C59_DATA2_1, C59_DATA2_2, C59_DATA2_3, C59_DATA2_4,
         C59_DATA2_5, C58_DATA2_2, C58_DATA2_3, C58_DATA2_4, C58_DATA2_5,
         C58_DATA2_6, C58_DATA2_7, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, DP_OP_241J1_122_7686_n81,
         DP_OP_241J1_122_7686_n80, DP_OP_241J1_122_7686_n79,
         DP_OP_241J1_122_7686_n75, DP_OP_241J1_122_7686_n74,
         DP_OP_241J1_122_7686_n67, DP_OP_241J1_122_7686_n66,
         DP_OP_241J1_122_7686_n65, DP_OP_241J1_122_7686_n64,
         DP_OP_241J1_122_7686_n58, DP_OP_241J1_122_7686_n56,
         DP_OP_241J1_122_7686_n55, DP_OP_241J1_122_7686_n53,
         DP_OP_241J1_122_7686_n52, DP_OP_241J1_122_7686_n51,
         DP_OP_241J1_122_7686_n48, DP_OP_241J1_122_7686_n47,
         DP_OP_241J1_122_7686_n46, DP_OP_241J1_122_7686_n45,
         DP_OP_241J1_122_7686_n44, DP_OP_241J1_122_7686_n41,
         DP_OP_241J1_122_7686_n39, DP_OP_241J1_122_7686_n38,
         DP_OP_241J1_122_7686_n37, DP_OP_241J1_122_7686_n34,
         DP_OP_241J1_122_7686_n33, DP_OP_241J1_122_7686_n32,
         DP_OP_241J1_122_7686_n31, DP_OP_241J1_122_7686_n30,
         DP_OP_241J1_122_7686_n29, DP_OP_241J1_122_7686_n28,
         DP_OP_241J1_122_7686_n27, DP_OP_241J1_122_7686_n26,
         DP_OP_241J1_122_7686_n25, DP_OP_241J1_122_7686_n24,
         DP_OP_241J1_122_7686_n23, DP_OP_241J1_122_7686_n22,
         DP_OP_241J1_122_7686_n19, DP_OP_241J1_122_7686_n18,
         DP_OP_241J1_122_7686_n17, DP_OP_181J1_123_6436_n45,
         DP_OP_181J1_123_6436_n10, DP_OP_181J1_123_6436_n9,
         DP_OP_181J1_123_6436_n8, DP_OP_181J1_123_6436_n7,
         DP_OP_181J1_123_6436_n6, DP_OP_194J1_126_163_n24,
         DP_OP_194J1_126_163_n23, DP_OP_194J1_126_163_n22,
         DP_OP_194J1_126_163_n14, DP_OP_194J1_126_163_n13,
         DP_OP_194J1_126_163_n12, DP_OP_194J1_126_163_n11,
         DP_OP_194J1_126_163_n10, DP_OP_194J1_126_163_n9,
         DP_OP_194J1_126_163_n8, DP_OP_194J1_126_163_n7,
         DP_OP_194J1_126_163_n6, DP_OP_211J1_131_5924_n16,
         DP_OP_211J1_131_5924_n15, DP_OP_211J1_131_5924_n12,
         DP_OP_211J1_131_5924_n11, DP_OP_211J1_131_5924_n10,
         DP_OP_211J1_131_5924_n9, DP_OP_211J1_131_5924_n8,
         DP_OP_211J1_131_5924_n7, DP_OP_211J1_131_5924_n6,
         DP_OP_226J1_136_3393_n13, DP_OP_226J1_136_3393_n9,
         DP_OP_226J1_136_3393_n8, DP_OP_226J1_136_3393_n7,
         DP_OP_226J1_136_3393_n6, DP_OP_226J1_136_3393_n5,
         DP_OP_226J1_136_3393_n4, DP_OP_241J1_141_1356_n14,
         DP_OP_241J1_141_1356_n11, DP_OP_241J1_141_1356_n10,
         DP_OP_241J1_141_1356_n9, DP_OP_241J1_141_1356_n8,
         DP_OP_241J1_141_1356_n7, DP_OP_241J1_141_1356_n6,
         DP_OP_241J1_141_1356_n5, intadd_0_A_6_, intadd_0_A_5_, intadd_0_A_4_,
         intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_,
         intadd_0_B_6_, intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_CI, intadd_0_SUM_6_,
         intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1,
         intadd_1_CI, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2,
         intadd_1_n1, intadd_2_CI, intadd_2_SUM_5_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n6, intadd_2_n5,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763;
  wire   [1:0] state;
  wire   [13:1] noodle;
  wire   [2:0] cnt;
  wire   [1:0] ramen_type_store;
  wire   [2:0] out_total_cnt;
  wire   [15:1] broth;
  wire   [13:1] tonkotsu_soup;
  wire   [10:0] soy_sause;
  wire   [9:0] miso;
  wire   [7:4] noodle_remain;
  wire   [9:2] broth_remain;
  wire   [6:0] TONKOTSU_num;
  wire   [6:0] TONKOTSU_SOY_num;
  wire   [6:0] MISO_num;
  wire   [6:0] MISO_SOY_num;

  DFFRHQXL state_reg_0_ ( .D(n717), .CK(clk), .RN(n400), .Q(state[0]) );
  DFFRHQXL cnt_reg_2_ ( .D(N77), .CK(clk), .RN(n400), .Q(cnt[2]) );
  DFFRHQXL state_reg_1_ ( .D(n718), .CK(clk), .RN(n400), .Q(state[1]) );
  DFFRHQXL out_total_cnt_reg_0_ ( .D(n287), .CK(clk), .RN(n400), .Q(
        out_total_cnt[0]) );
  DFFRHQXL out_total_cnt_reg_1_ ( .D(n288), .CK(clk), .RN(rst_n), .Q(
        out_total_cnt[1]) );
  DFFRHQXL out_total_cnt_reg_2_ ( .D(n286), .CK(clk), .RN(rst_n), .Q(
        out_total_cnt[2]) );
  DFFRHQXL cnt_reg_0_ ( .D(N75), .CK(clk), .RN(n400), .Q(cnt[0]) );
  DFFRHQXL cnt_reg_1_ ( .D(N76), .CK(clk), .RN(n400), .Q(cnt[1]) );
  DFFRHQXL ramen_type_store_reg_0_ ( .D(n285), .CK(clk), .RN(n400), .Q(
        ramen_type_store[0]) );
  DFFRHQXL ramen_type_store_reg_1_ ( .D(n284), .CK(clk), .RN(n400), .Q(
        ramen_type_store[1]) );
  DFFRHQXL portion_store_reg ( .D(n283), .CK(clk), .RN(rst_n), .Q(
        portion_store) );
  DFFRHQXL soy_sause_reg_0_ ( .D(N830), .CK(clk), .RN(rst_n), .Q(soy_sause[0])
         );
  DFFRHQXL soy_sause_reg_1_ ( .D(N831), .CK(clk), .RN(rst_n), .Q(soy_sause[1])
         );
  DFFRHQXL soy_sause_reg_5_ ( .D(N835), .CK(clk), .RN(rst_n), .Q(soy_sause[5])
         );
  DFFRHQXL soy_sause_reg_9_ ( .D(N839), .CK(clk), .RN(rst_n), .Q(soy_sause[9])
         );
  DFFRHQXL noodle_reg_1_ ( .D(N777), .CK(clk), .RN(rst_n), .Q(noodle[1]) );
  DFFRHQXL noodle_reg_2_ ( .D(N778), .CK(clk), .RN(n400), .Q(noodle[2]) );
  DFFRHQXL noodle_reg_3_ ( .D(N779), .CK(clk), .RN(n400), .Q(noodle[3]) );
  DFFRHQXL noodle_reg_4_ ( .D(N780), .CK(clk), .RN(n400), .Q(noodle[4]) );
  DFFRHQXL noodle_reg_8_ ( .D(N784), .CK(clk), .RN(n400), .Q(noodle[8]) );
  DFFRHQXL noodle_reg_12_ ( .D(N788), .CK(clk), .RN(n400), .Q(noodle[12]) );
  DFFRHQXL MISO_SOY_num_reg_0_ ( .D(n282), .CK(clk), .RN(n400), .Q(
        MISO_SOY_num[0]) );
  DFFRHQXL MISO_SOY_num_reg_1_ ( .D(n281), .CK(clk), .RN(n400), .Q(
        MISO_SOY_num[1]) );
  DFFRHQXL MISO_SOY_num_reg_2_ ( .D(n280), .CK(clk), .RN(n400), .Q(
        MISO_SOY_num[2]) );
  DFFRHQXL MISO_SOY_num_reg_3_ ( .D(n279), .CK(clk), .RN(n400), .Q(
        MISO_SOY_num[3]) );
  DFFRHQXL MISO_SOY_num_reg_4_ ( .D(n278), .CK(clk), .RN(n400), .Q(
        MISO_SOY_num[4]) );
  DFFRHQXL MISO_SOY_num_reg_5_ ( .D(n277), .CK(clk), .RN(n400), .Q(
        MISO_SOY_num[5]) );
  DFFRHQXL MISO_SOY_num_reg_6_ ( .D(n276), .CK(clk), .RN(n400), .Q(
        MISO_SOY_num[6]) );
  DFFRHQXL MISO_num_reg_0_ ( .D(n275), .CK(clk), .RN(n400), .Q(MISO_num[0]) );
  DFFRHQXL MISO_num_reg_1_ ( .D(n274), .CK(clk), .RN(n400), .Q(MISO_num[1]) );
  DFFRHQXL MISO_num_reg_2_ ( .D(n273), .CK(clk), .RN(n400), .Q(MISO_num[2]) );
  DFFRHQXL MISO_num_reg_3_ ( .D(n272), .CK(clk), .RN(n400), .Q(MISO_num[3]) );
  DFFRHQXL MISO_num_reg_4_ ( .D(n271), .CK(clk), .RN(n400), .Q(MISO_num[4]) );
  DFFRHQXL MISO_num_reg_5_ ( .D(n270), .CK(clk), .RN(n400), .Q(MISO_num[5]) );
  DFFRHQXL MISO_num_reg_6_ ( .D(n269), .CK(clk), .RN(n400), .Q(MISO_num[6]) );
  DFFRHQXL TONKOTSU_SOY_num_reg_0_ ( .D(n268), .CK(clk), .RN(n400), .Q(
        TONKOTSU_SOY_num[0]) );
  DFFRHQXL TONKOTSU_SOY_num_reg_1_ ( .D(n267), .CK(clk), .RN(n400), .Q(
        TONKOTSU_SOY_num[1]) );
  DFFRHQXL TONKOTSU_SOY_num_reg_2_ ( .D(n266), .CK(clk), .RN(n400), .Q(
        TONKOTSU_SOY_num[2]) );
  DFFRHQXL TONKOTSU_SOY_num_reg_3_ ( .D(n265), .CK(clk), .RN(n400), .Q(
        TONKOTSU_SOY_num[3]) );
  DFFRHQXL TONKOTSU_SOY_num_reg_4_ ( .D(n264), .CK(clk), .RN(n400), .Q(
        TONKOTSU_SOY_num[4]) );
  DFFRHQXL TONKOTSU_SOY_num_reg_5_ ( .D(n263), .CK(clk), .RN(n400), .Q(
        TONKOTSU_SOY_num[5]) );
  DFFRHQXL TONKOTSU_SOY_num_reg_6_ ( .D(n262), .CK(clk), .RN(n400), .Q(
        TONKOTSU_SOY_num[6]) );
  DFFRHQXL TONKOTSU_num_reg_0_ ( .D(n261), .CK(clk), .RN(n400), .Q(
        TONKOTSU_num[0]) );
  DFFRHQXL TONKOTSU_num_reg_1_ ( .D(n260), .CK(clk), .RN(n400), .Q(
        TONKOTSU_num[1]) );
  DFFRHQXL TONKOTSU_num_reg_2_ ( .D(n259), .CK(clk), .RN(n400), .Q(
        TONKOTSU_num[2]) );
  DFFRHQXL TONKOTSU_num_reg_3_ ( .D(n258), .CK(clk), .RN(n400), .Q(
        TONKOTSU_num[3]) );
  DFFRHQXL TONKOTSU_num_reg_4_ ( .D(n257), .CK(clk), .RN(n400), .Q(
        TONKOTSU_num[4]) );
  DFFRHQXL TONKOTSU_num_reg_5_ ( .D(n256), .CK(clk), .RN(n400), .Q(
        TONKOTSU_num[5]) );
  DFFRHQXL TONKOTSU_num_reg_6_ ( .D(n255), .CK(clk), .RN(n305), .Q(
        TONKOTSU_num[6]) );
  DFFRHQXL broth_reg_14_ ( .D(N804), .CK(clk), .RN(n305), .Q(broth[14]) );
  DFFRHQXL broth_reg_12_ ( .D(N802), .CK(clk), .RN(n305), .Q(broth[12]) );
  DFFRHQXL broth_reg_11_ ( .D(N801), .CK(clk), .RN(n305), .Q(broth[11]) );
  DFFRHQXL broth_reg_10_ ( .D(N800), .CK(clk), .RN(n305), .Q(broth[10]) );
  DFFRHQXL broth_reg_9_ ( .D(N799), .CK(clk), .RN(n305), .Q(broth[9]) );
  DFFRHQXL broth_reg_8_ ( .D(N798), .CK(clk), .RN(n305), .Q(broth[8]) );
  DFFRHQXL broth_reg_7_ ( .D(N797), .CK(clk), .RN(n305), .Q(broth[7]) );
  DFFRHQXL broth_reg_6_ ( .D(N796), .CK(clk), .RN(n305), .Q(broth[6]) );
  DFFRHQXL broth_reg_4_ ( .D(N794), .CK(clk), .RN(n305), .Q(broth[4]) );
  DFFRHQXL broth_reg_2_ ( .D(N792), .CK(clk), .RN(n305), .Q(broth[2]) );
  DFFRHQXL broth_reg_1_ ( .D(N791), .CK(clk), .RN(n305), .Q(broth[1]) );
  DFFRHQXL tonkotsu_soup_reg_12_ ( .D(N818), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[12]) );
  DFFRHQXL tonkotsu_soup_reg_11_ ( .D(N817), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[11]) );
  DFFRHQXL tonkotsu_soup_reg_10_ ( .D(N816), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[10]) );
  DFFRHQXL tonkotsu_soup_reg_7_ ( .D(N813), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[7]) );
  DFFRHQXL tonkotsu_soup_reg_6_ ( .D(N812), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[6]) );
  DFFRHQXL tonkotsu_soup_reg_4_ ( .D(N810), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[4]) );
  DFFRHQXL tonkotsu_soup_reg_2_ ( .D(N808), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[2]) );
  DFFRHQXL tonkotsu_soup_reg_1_ ( .D(N807), .CK(clk), .RN(n305), .Q(
        tonkotsu_soup[1]) );
  DFFRHQXL miso_reg_4_ ( .D(N824), .CK(clk), .RN(n305), .Q(miso[4]) );
  DFFRHQXL miso_reg_2_ ( .D(N822), .CK(clk), .RN(n305), .Q(miso[2]) );
  DFFRHQXL miso_reg_1_ ( .D(N821), .CK(clk), .RN(n305), .Q(miso[1]) );
  DFFRHQXL miso_reg_0_ ( .D(N820), .CK(clk), .RN(n304), .Q(miso[0]) );
  DFFRHQXL can_sell_store_reg ( .D(n254), .CK(clk), .RN(n400), .Q(
        can_sell_store) );
  CMPR42X1 DP_OP_241J1_122_7686_U34 ( .A(DP_OP_241J1_122_7686_n55), .B(
        DP_OP_241J1_122_7686_n58), .C(DP_OP_241J1_122_7686_n67), .D(
        DP_OP_241J1_122_7686_n81), .ICI(DP_OP_241J1_122_7686_n56), .S(
        DP_OP_241J1_122_7686_n53), .ICO(DP_OP_241J1_122_7686_n51), .CO(
        DP_OP_241J1_122_7686_n52) );
  CMPR42X1 DP_OP_241J1_122_7686_U31 ( .A(DP_OP_241J1_122_7686_n48), .B(
        DP_OP_241J1_122_7686_n51), .C(DP_OP_241J1_122_7686_n66), .D(
        DP_OP_241J1_122_7686_n80), .ICI(intadd_2_n1), .S(
        DP_OP_241J1_122_7686_n46), .ICO(DP_OP_241J1_122_7686_n44), .CO(
        DP_OP_241J1_122_7686_n45) );
  CMPR42X1 DP_OP_241J1_122_7686_U28 ( .A(DP_OP_241J1_122_7686_n47), .B(
        DP_OP_241J1_122_7686_n41), .C(DP_OP_241J1_122_7686_n44), .D(
        DP_OP_241J1_122_7686_n65), .ICI(DP_OP_241J1_122_7686_n79), .S(
        DP_OP_241J1_122_7686_n39), .ICO(DP_OP_241J1_122_7686_n37), .CO(
        DP_OP_241J1_122_7686_n38) );
  CMPR42X1 DP_OP_241J1_122_7686_U25 ( .A(DP_OP_241J1_122_7686_n81), .B(
        DP_OP_241J1_122_7686_n34), .C(DP_OP_241J1_122_7686_n64), .D(
        intadd_1_n1), .ICI(DP_OP_241J1_122_7686_n37), .S(
        DP_OP_241J1_122_7686_n32), .ICO(DP_OP_241J1_122_7686_n30), .CO(
        DP_OP_241J1_122_7686_n31) );
  CMPR42X1 DP_OP_241J1_122_7686_U22 ( .A(DP_OP_241J1_122_7686_n81), .B(
        DP_OP_241J1_122_7686_n29), .C(DP_OP_241J1_122_7686_n80), .D(
        DP_OP_241J1_122_7686_n33), .ICI(DP_OP_241J1_122_7686_n30), .S(
        DP_OP_241J1_122_7686_n28), .ICO(DP_OP_241J1_122_7686_n26), .CO(
        DP_OP_241J1_122_7686_n27) );
  CMPR42X1 DP_OP_241J1_122_7686_U20 ( .A(DP_OP_241J1_122_7686_n75), .B(
        DP_OP_241J1_122_7686_n25), .C(DP_OP_241J1_122_7686_n80), .D(
        DP_OP_241J1_122_7686_n26), .ICI(DP_OP_241J1_122_7686_n79), .S(
        DP_OP_241J1_122_7686_n24), .ICO(DP_OP_241J1_122_7686_n22), .CO(
        DP_OP_241J1_122_7686_n23) );
  CMPR42X1 DP_OP_241J1_122_7686_U18 ( .A(DP_OP_241J1_122_7686_n25), .B(
        DP_OP_241J1_122_7686_n74), .C(intadd_1_n1), .D(
        DP_OP_241J1_122_7686_n22), .ICI(DP_OP_241J1_122_7686_n79), .S(
        DP_OP_241J1_122_7686_n19), .ICO(DP_OP_241J1_122_7686_n17), .CO(
        DP_OP_241J1_122_7686_n18) );
  DFFRHQXL success_reg ( .D(N843), .CK(clk), .RN(n305), .Q(success) );
  DFFRHQXL out_valid_order_reg ( .D(n721), .CK(clk), .RN(n305), .Q(
        out_valid_order) );
  DFFRHQXL sold_num_reg_27_ ( .D(N873), .CK(clk), .RN(n305), .Q(sold_num[27])
         );
  DFFRHQXL sold_num_reg_26_ ( .D(N872), .CK(clk), .RN(n305), .Q(sold_num[26])
         );
  DFFRHQXL sold_num_reg_25_ ( .D(N871), .CK(clk), .RN(n305), .Q(sold_num[25])
         );
  DFFRHQXL sold_num_reg_24_ ( .D(N870), .CK(clk), .RN(n305), .Q(sold_num[24])
         );
  DFFRHQXL sold_num_reg_23_ ( .D(N869), .CK(clk), .RN(n305), .Q(sold_num[23])
         );
  DFFRHQXL sold_num_reg_22_ ( .D(N868), .CK(clk), .RN(n305), .Q(sold_num[22])
         );
  DFFRHQXL sold_num_reg_21_ ( .D(N867), .CK(clk), .RN(n305), .Q(sold_num[21])
         );
  DFFRHQXL sold_num_reg_20_ ( .D(N866), .CK(clk), .RN(n304), .Q(sold_num[20])
         );
  DFFRHQXL sold_num_reg_19_ ( .D(N865), .CK(clk), .RN(n304), .Q(sold_num[19])
         );
  DFFRHQXL sold_num_reg_18_ ( .D(N864), .CK(clk), .RN(n304), .Q(sold_num[18])
         );
  DFFRHQXL sold_num_reg_17_ ( .D(N863), .CK(clk), .RN(n304), .Q(sold_num[17])
         );
  DFFRHQXL sold_num_reg_16_ ( .D(N862), .CK(clk), .RN(n304), .Q(sold_num[16])
         );
  DFFRHQXL sold_num_reg_15_ ( .D(N861), .CK(clk), .RN(n304), .Q(sold_num[15])
         );
  DFFRHQXL sold_num_reg_14_ ( .D(N860), .CK(clk), .RN(n400), .Q(sold_num[14])
         );
  DFFRHQXL sold_num_reg_13_ ( .D(N859), .CK(clk), .RN(n400), .Q(sold_num[13])
         );
  DFFRHQXL sold_num_reg_1_ ( .D(N847), .CK(clk), .RN(n400), .Q(sold_num[1]) );
  DFFRHQXL sold_num_reg_0_ ( .D(N846), .CK(clk), .RN(n400), .Q(sold_num[0]) );
  DFFRHQXL out_valid_tot_reg ( .D(n720), .CK(clk), .RN(n400), .Q(out_valid_tot) );
  DFFRHQXL total_gain_reg_14_ ( .D(N996), .CK(clk), .RN(n400), .Q(
        total_gain[14]) );
  DFFRHQXL total_gain_reg_13_ ( .D(N995), .CK(clk), .RN(n400), .Q(
        total_gain[13]) );
  DFFRHQXL total_gain_reg_12_ ( .D(N994), .CK(clk), .RN(n400), .Q(
        total_gain[12]) );
  DFFRHQXL total_gain_reg_11_ ( .D(N993), .CK(clk), .RN(n400), .Q(
        total_gain[11]) );
  DFFRHQXL total_gain_reg_10_ ( .D(N992), .CK(clk), .RN(n400), .Q(
        total_gain[10]) );
  ADDFXL intadd_1_U5 ( .A(MISO_num[3]), .B(TONKOTSU_num[3]), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_2_) );
  ADDFXL intadd_1_U4 ( .A(MISO_num[4]), .B(TONKOTSU_num[4]), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(DP_OP_241J1_122_7686_n81) );
  ADDFXL intadd_1_U3 ( .A(MISO_num[5]), .B(TONKOTSU_num[5]), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(DP_OP_241J1_122_7686_n80) );
  ADDFXL intadd_1_U2 ( .A(MISO_num[6]), .B(TONKOTSU_num[6]), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(DP_OP_241J1_122_7686_n79) );
  ADDFXL intadd_2_U2 ( .A(MISO_SOY_num[6]), .B(TONKOTSU_SOY_num[6]), .CI(
        intadd_2_n2), .CO(intadd_2_n1), .S(intadd_2_SUM_5_) );
  ADDFXL intadd_2_U3 ( .A(MISO_SOY_num[5]), .B(TONKOTSU_SOY_num[5]), .CI(
        intadd_2_n3), .CO(intadd_2_n2), .S(DP_OP_241J1_122_7686_n74) );
  ADDFXL intadd_1_U7 ( .A(MISO_num[1]), .B(TONKOTSU_num[1]), .CI(intadd_1_CI), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_0_) );
  ADDFXL intadd_1_U6 ( .A(MISO_num[2]), .B(TONKOTSU_num[2]), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_1_) );
  ADDFXL DP_OP_181J1_123_6436_U14 ( .A(portion_store), .B(noodle[5]), .CI(
        DP_OP_181J1_123_6436_n9), .CO(DP_OP_181J1_123_6436_n8), .S(
        noodle_remain[5]) );
  ADDFXL DP_OP_181J1_123_6436_U13 ( .A(portion_store), .B(noodle[6]), .CI(
        DP_OP_181J1_123_6436_n8), .CO(DP_OP_181J1_123_6436_n7), .S(
        noodle_remain[6]) );
  ADDFXL intadd_2_U5 ( .A(MISO_SOY_num[3]), .B(TONKOTSU_SOY_num[3]), .CI(
        intadd_2_n5), .CO(intadd_2_n4), .S(intadd_2_SUM_2_) );
  ADDFXL intadd_2_U4 ( .A(MISO_SOY_num[4]), .B(TONKOTSU_SOY_num[4]), .CI(
        intadd_2_n4), .CO(intadd_2_n3), .S(DP_OP_241J1_122_7686_n75) );
  ADDFXL intadd_2_U6 ( .A(MISO_SOY_num[2]), .B(TONKOTSU_SOY_num[2]), .CI(
        intadd_2_n6), .CO(intadd_2_n5), .S(intadd_2_SUM_1_) );
  ADDFXL intadd_2_U7 ( .A(MISO_SOY_num[1]), .B(TONKOTSU_SOY_num[1]), .CI(
        intadd_2_CI), .CO(intadd_2_n6), .S(intadd_2_SUM_0_) );
  ADDFXL DP_OP_181J1_123_6436_U12 ( .A(DP_OP_181J1_123_6436_n45), .B(noodle[7]), .CI(DP_OP_181J1_123_6436_n7), .CO(DP_OP_181J1_123_6436_n6), .S(
        noodle_remain[7]) );
  ADDFXL DP_OP_181J1_123_6436_U15 ( .A(DP_OP_181J1_123_6436_n45), .B(noodle[4]), .CI(DP_OP_181J1_123_6436_n10), .CO(DP_OP_181J1_123_6436_n9), .S(
        noodle_remain[4]) );
  ADDFXL DP_OP_226J1_136_3393_U12 ( .A(n727), .B(miso[1]), .CI(
        DP_OP_226J1_136_3393_n9), .CO(DP_OP_226J1_136_3393_n8), .S(C59_DATA2_1) );
  ADDFXL DP_OP_226J1_136_3393_U9 ( .A(n733), .B(miso[4]), .CI(
        DP_OP_226J1_136_3393_n6), .CO(DP_OP_226J1_136_3393_n5), .S(C59_DATA2_4) );
  ADDFXL DP_OP_226J1_136_3393_U11 ( .A(DP_OP_226J1_136_3393_n13), .B(miso[2]), 
        .CI(DP_OP_226J1_136_3393_n8), .CO(DP_OP_226J1_136_3393_n7), .S(
        C59_DATA2_2) );
  ADDFXL DP_OP_241J1_141_1356_U10 ( .A(DP_OP_241J1_141_1356_n11), .B(
        soy_sause[5]), .CI(DP_OP_241J1_141_1356_n6), .CO(
        DP_OP_241J1_141_1356_n5), .S(C60_DATA2_5) );
  ADDFXL DP_OP_241J1_141_1356_U14 ( .A(n726), .B(soy_sause[1]), .CI(
        DP_OP_241J1_141_1356_n10), .CO(DP_OP_241J1_141_1356_n9), .S(
        C60_DATA2_1) );
  ADDFXL DP_OP_226J1_136_3393_U10 ( .A(n730), .B(miso[3]), .CI(
        DP_OP_226J1_136_3393_n7), .CO(DP_OP_226J1_136_3393_n6), .S(C59_DATA2_3) );
  ADDFXL DP_OP_226J1_136_3393_U8 ( .A(DP_OP_194J1_126_163_n24), .B(miso[5]), 
        .CI(DP_OP_226J1_136_3393_n5), .CO(DP_OP_226J1_136_3393_n4), .S(
        C59_DATA2_5) );
  ADDFXL DP_OP_241J1_141_1356_U11 ( .A(n732), .B(soy_sause[4]), .CI(
        DP_OP_241J1_141_1356_n7), .CO(DP_OP_241J1_141_1356_n6), .S(C60_DATA2_4) );
  ADDFXL DP_OP_211J1_131_5924_U16 ( .A(n723), .B(tonkotsu_soup[3]), .CI(
        DP_OP_211J1_131_5924_n11), .CO(DP_OP_211J1_131_5924_n10), .S(
        C58_DATA2_3) );
  ADDFXL DP_OP_211J1_131_5924_U14 ( .A(DP_OP_211J1_131_5924_n16), .B(
        tonkotsu_soup[5]), .CI(DP_OP_211J1_131_5924_n9), .CO(
        DP_OP_211J1_131_5924_n8), .S(C58_DATA2_5) );
  ADDFXL DP_OP_241J1_141_1356_U13 ( .A(DP_OP_241J1_141_1356_n14), .B(
        soy_sause[2]), .CI(DP_OP_241J1_141_1356_n9), .CO(
        DP_OP_241J1_141_1356_n8), .S(C60_DATA2_2) );
  ADDFXL DP_OP_241J1_141_1356_U12 ( .A(n729), .B(soy_sause[3]), .CI(
        DP_OP_241J1_141_1356_n8), .CO(DP_OP_241J1_141_1356_n7), .S(C60_DATA2_3) );
  ADDFXL DP_OP_211J1_131_5924_U17 ( .A(n724), .B(tonkotsu_soup[2]), .CI(
        DP_OP_211J1_131_5924_n12), .CO(DP_OP_211J1_131_5924_n11), .S(
        C58_DATA2_2) );
  ADDFXL DP_OP_211J1_131_5924_U15 ( .A(n728), .B(tonkotsu_soup[4]), .CI(
        DP_OP_211J1_131_5924_n10), .CO(DP_OP_211J1_131_5924_n9), .S(
        C58_DATA2_4) );
  ADDFXL DP_OP_211J1_131_5924_U13 ( .A(DP_OP_211J1_131_5924_n15), .B(
        tonkotsu_soup[6]), .CI(DP_OP_211J1_131_5924_n8), .CO(
        DP_OP_211J1_131_5924_n7), .S(C58_DATA2_6) );
  ADDFXL DP_OP_211J1_131_5924_U12 ( .A(n731), .B(tonkotsu_soup[7]), .CI(
        DP_OP_211J1_131_5924_n7), .CO(DP_OP_211J1_131_5924_n6), .S(C58_DATA2_7) );
  ADDFXL DP_OP_194J1_126_163_U16 ( .A(DP_OP_194J1_126_163_n23), .B(broth[5]), 
        .CI(DP_OP_194J1_126_163_n11), .CO(DP_OP_194J1_126_163_n10), .S(
        broth_remain[5]) );
  ADDFXL DP_OP_194J1_126_163_U18 ( .A(DP_OP_194J1_126_163_n22), .B(broth[3]), 
        .CI(DP_OP_194J1_126_163_n13), .CO(DP_OP_194J1_126_163_n12), .S(
        broth_remain[3]) );
  ADDFXL DP_OP_194J1_126_163_U17 ( .A(n725), .B(broth[4]), .CI(
        DP_OP_194J1_126_163_n12), .CO(DP_OP_194J1_126_163_n11), .S(
        broth_remain[4]) );
  ADDFXL DP_OP_194J1_126_163_U19 ( .A(DP_OP_194J1_126_163_n23), .B(broth[2]), 
        .CI(DP_OP_194J1_126_163_n14), .CO(DP_OP_194J1_126_163_n13), .S(
        broth_remain[2]) );
  ADDFXL DP_OP_194J1_126_163_U14 ( .A(n722), .B(broth[7]), .CI(
        DP_OP_194J1_126_163_n9), .CO(DP_OP_194J1_126_163_n8), .S(
        broth_remain[7]) );
  ADDFXL DP_OP_194J1_126_163_U13 ( .A(n719), .B(broth[8]), .CI(
        DP_OP_194J1_126_163_n8), .CO(DP_OP_194J1_126_163_n7), .S(
        broth_remain[8]) );
  ADDFXL DP_OP_194J1_126_163_U12 ( .A(DP_OP_194J1_126_163_n24), .B(broth[9]), 
        .CI(DP_OP_194J1_126_163_n7), .CO(DP_OP_194J1_126_163_n6), .S(
        broth_remain[9]) );
  ADDFXL DP_OP_194J1_126_163_U15 ( .A(n738), .B(broth[6]), .CI(
        DP_OP_194J1_126_163_n10), .CO(DP_OP_194J1_126_163_n9), .S(
        broth_remain[6]) );
  DFFSX1 soy_sause_reg_4_ ( .D(N834), .CK(clk), .SN(n304), .Q(soy_sause[4]), 
        .QN(n760) );
  DFFSX1 noodle_reg_7_ ( .D(N783), .CK(clk), .SN(n304), .Q(noodle[7]), .QN(
        n761) );
  DFFSX1 noodle_reg_6_ ( .D(N782), .CK(clk), .SN(n304), .Q(noodle[6]), .QN(
        n763) );
  DFFSX1 noodle_reg_5_ ( .D(N781), .CK(clk), .SN(n304), .Q(noodle[5]), .QN(
        n762) );
  DFFSX1 broth_reg_5_ ( .D(N795), .CK(clk), .SN(n304), .Q(broth[5]), .QN(n736)
         );
  DFFSX1 broth_reg_3_ ( .D(N793), .CK(clk), .SN(n305), .Q(broth[3]), .QN(n737)
         );
  DFFSX1 noodle_reg_9_ ( .D(N785), .CK(clk), .SN(n304), .Q(noodle[9]), .QN(
        n759) );
  DFFSX1 noodle_reg_10_ ( .D(N786), .CK(clk), .SN(n304), .Q(noodle[10]), .QN(
        n758) );
  DFFSX1 miso_reg_5_ ( .D(N825), .CK(clk), .SN(n305), .Q(miso[5]), .QN(n743)
         );
  DFFSX1 miso_reg_3_ ( .D(N823), .CK(clk), .SN(n305), .Q(miso[3]), .QN(n744)
         );
  DFFSX1 soy_sause_reg_3_ ( .D(N833), .CK(clk), .SN(n304), .Q(soy_sause[3]), 
        .QN(n749) );
  DFFSX1 soy_sause_reg_2_ ( .D(N832), .CK(clk), .SN(n304), .Q(soy_sause[2]), 
        .QN(n750) );
  DFFSX1 noodle_reg_11_ ( .D(N787), .CK(clk), .SN(n304), .Q(noodle[11]), .QN(
        n757) );
  DFFSX1 soy_sause_reg_6_ ( .D(N836), .CK(clk), .SN(n304), .Q(soy_sause[6]), 
        .QN(n748) );
  DFFSX1 tonkotsu_soup_reg_5_ ( .D(N811), .CK(clk), .SN(n305), .Q(
        tonkotsu_soup[5]), .QN(n754) );
  DFFSX1 tonkotsu_soup_reg_3_ ( .D(N809), .CK(clk), .SN(n305), .Q(
        tonkotsu_soup[3]), .QN(n755) );
  DFFSX1 miso_reg_6_ ( .D(N826), .CK(clk), .SN(n305), .Q(miso[6]), .QN(n742)
         );
  DFFSX1 soy_sause_reg_7_ ( .D(N837), .CK(clk), .SN(n304), .Q(soy_sause[7]), 
        .QN(n747) );
  DFFSX1 miso_reg_7_ ( .D(N827), .CK(clk), .SN(n305), .Q(miso[7]), .QN(n741)
         );
  DFFSX1 noodle_reg_13_ ( .D(N789), .CK(clk), .SN(n304), .Q(noodle[13]), .QN(
        n756) );
  DFFSX1 soy_sause_reg_8_ ( .D(N838), .CK(clk), .SN(n304), .Q(soy_sause[8]), 
        .QN(n746) );
  DFFSX1 miso_reg_8_ ( .D(N828), .CK(clk), .SN(n305), .Q(miso[8]), .QN(n740)
         );
  DFFSX1 tonkotsu_soup_reg_8_ ( .D(N814), .CK(clk), .SN(n305), .Q(
        tonkotsu_soup[8]), .QN(n753) );
  DFFSX1 miso_reg_9_ ( .D(N829), .CK(clk), .SN(n305), .Q(miso[9]), .QN(n739)
         );
  DFFSX1 tonkotsu_soup_reg_9_ ( .D(N815), .CK(clk), .SN(n305), .Q(
        tonkotsu_soup[9]), .QN(n752) );
  DFFSX1 soy_sause_reg_10_ ( .D(N840), .CK(clk), .SN(n304), .Q(soy_sause[10]), 
        .QN(n745) );
  DFFSX1 broth_reg_13_ ( .D(N803), .CK(clk), .SN(n304), .Q(broth[13]), .QN(
        n735) );
  DFFSX1 tonkotsu_soup_reg_13_ ( .D(N819), .CK(clk), .SN(n305), .Q(
        tonkotsu_soup[13]), .QN(n751) );
  DFFSX1 broth_reg_15_ ( .D(N805), .CK(clk), .SN(n304), .Q(broth[15]), .QN(
        n734) );
  DFFRHQXL sold_num_reg_2_ ( .D(N848), .CK(clk), .RN(n305), .Q(sold_num[2]) );
  DFFRHQXL total_gain_reg_1_ ( .D(N983), .CK(clk), .RN(rst_n), .Q(
        total_gain[1]) );
  ADDFXL intadd_0_U3 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_5_) );
  DFFRHQXL sold_num_reg_12_ ( .D(N858), .CK(clk), .RN(n400), .Q(sold_num[12])
         );
  DFFRHQXL sold_num_reg_11_ ( .D(N857), .CK(clk), .RN(n304), .Q(sold_num[11])
         );
  DFFRHQXL sold_num_reg_10_ ( .D(N856), .CK(clk), .RN(n304), .Q(sold_num[10])
         );
  DFFRHQXL sold_num_reg_9_ ( .D(N855), .CK(clk), .RN(n400), .Q(sold_num[9]) );
  DFFRHQXL sold_num_reg_8_ ( .D(N854), .CK(clk), .RN(n304), .Q(sold_num[8]) );
  DFFRHQXL sold_num_reg_7_ ( .D(N853), .CK(clk), .RN(n304), .Q(sold_num[7]) );
  DFFRHQXL sold_num_reg_6_ ( .D(N852), .CK(clk), .RN(n304), .Q(sold_num[6]) );
  DFFRHQXL sold_num_reg_5_ ( .D(N851), .CK(clk), .RN(n304), .Q(sold_num[5]) );
  DFFRHQXL sold_num_reg_4_ ( .D(N850), .CK(clk), .RN(n304), .Q(sold_num[4]) );
  DFFRHQXL sold_num_reg_3_ ( .D(N849), .CK(clk), .RN(n304), .Q(sold_num[3]) );
  DFFRHQXL total_gain_reg_9_ ( .D(N991), .CK(clk), .RN(n304), .Q(total_gain[9]) );
  DFFRHQXL total_gain_reg_8_ ( .D(N990), .CK(clk), .RN(n304), .Q(total_gain[8]) );
  DFFRHQXL total_gain_reg_7_ ( .D(N989), .CK(clk), .RN(n304), .Q(total_gain[7]) );
  DFFRHQXL total_gain_reg_6_ ( .D(N988), .CK(clk), .RN(n304), .Q(total_gain[6]) );
  DFFRHQXL total_gain_reg_5_ ( .D(N987), .CK(clk), .RN(n304), .Q(total_gain[5]) );
  DFFRHQXL total_gain_reg_4_ ( .D(N986), .CK(clk), .RN(n304), .Q(total_gain[4]) );
  DFFRHQXL total_gain_reg_3_ ( .D(N985), .CK(clk), .RN(n304), .Q(total_gain[3]) );
  DFFRHQXL total_gain_reg_2_ ( .D(N984), .CK(clk), .RN(n400), .Q(total_gain[2]) );
  ADDFXL intadd_0_U2 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_6_) );
  ADDFXL intadd_0_U5 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_3_) );
  ADDFXL intadd_0_U8 ( .A(intadd_0_A_0_), .B(DP_OP_241J1_122_7686_n65), .CI(
        intadd_0_CI), .CO(intadd_0_n7), .S(intadd_0_SUM_0_) );
  ADDFXL intadd_0_U4 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_4_) );
  ADDFXL intadd_0_U7 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_1_) );
  ADDFXL intadd_0_U6 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_2_) );
  NOR2XL U419 ( .A(tonkotsu_soup[4]), .B(tonkotsu_soup[3]), .Y(n328) );
  NOR2XL U420 ( .A(n626), .B(n630), .Y(n338) );
  NOR2XL U421 ( .A(n358), .B(tonkotsu_soup[7]), .Y(n340) );
  NOR2XL U422 ( .A(n667), .B(n676), .Y(intadd_1_CI) );
  NOR2XL U423 ( .A(n599), .B(n600), .Y(n337) );
  NOR2XL U424 ( .A(n654), .B(n547), .Y(n321) );
  NOR2XL U425 ( .A(intadd_2_SUM_2_), .B(n651), .Y(DP_OP_241J1_122_7686_n58) );
  NOR2XL U426 ( .A(n388), .B(n762), .Y(n390) );
  NOR2XL U427 ( .A(n662), .B(n671), .Y(intadd_2_CI) );
  NOR2XL U428 ( .A(n572), .B(n576), .Y(n729) );
  NOR2XL U429 ( .A(n408), .B(n317), .Y(n653) );
  NOR2XL U430 ( .A(n432), .B(DP_OP_181J1_123_6436_n45), .Y(n575) );
  NOR2XL U431 ( .A(n653), .B(intadd_2_SUM_2_), .Y(DP_OP_241J1_122_7686_n25) );
  NOR2XL U432 ( .A(out_total_cnt[2]), .B(out_total_cnt[0]), .Y(n431) );
  NOR2XL U433 ( .A(n570), .B(DP_OP_181J1_123_6436_n45), .Y(n719) );
  NOR2XL U434 ( .A(n678), .B(n496), .Y(n475) );
  NOR2XL U435 ( .A(n570), .B(n461), .Y(n445) );
  NOR2XL U436 ( .A(n572), .B(n575), .Y(n726) );
  NOR2XL U437 ( .A(n654), .B(n426), .Y(n425) );
  NOR2XL U438 ( .A(intadd_0_n1), .B(n569), .Y(n568) );
  NOR2XL U439 ( .A(n557), .B(n507), .Y(n602) );
  NOR2XL U440 ( .A(n715), .B(n713), .Y(n495) );
  NOR2XL U441 ( .A(n708), .B(n706), .Y(n491) );
  NOR2XL U442 ( .A(TONKOTSU_SOY_num[3]), .B(n493), .Y(n708) );
  NOR2XL U443 ( .A(n698), .B(n696), .Y(n443) );
  NOR2XL U444 ( .A(n691), .B(n689), .Y(n499) );
  NOR2XL U445 ( .A(n688), .B(n686), .Y(n454) );
  NOR2XL U446 ( .A(cnt[1]), .B(cnt[0]), .Y(n545) );
  NOR2XL U447 ( .A(state[0]), .B(state[1]), .Y(n406) );
  NOR2XL U448 ( .A(n680), .B(n655), .Y(N984) );
  NOR2XL U449 ( .A(n659), .B(n680), .Y(N986) );
  NOR2XL U450 ( .A(n701), .B(n680), .Y(N858) );
  NOR2XL U451 ( .A(intadd_0_SUM_3_), .B(n680), .Y(N992) );
  NOR2XL U452 ( .A(n673), .B(n680), .Y(N864) );
  NOR2XL U453 ( .A(cnt[0]), .B(n682), .Y(N75) );
  BUFXL U454 ( .A(n400), .Y(n304) );
  NOR2X1 U455 ( .A(intadd_0_SUM_6_), .B(n680), .Y(N995) );
  NOR2X1 U456 ( .A(intadd_0_SUM_5_), .B(n680), .Y(N994) );
  NOR2X1 U457 ( .A(intadd_0_SUM_4_), .B(n680), .Y(N993) );
  NOR2X1 U458 ( .A(n705), .B(n703), .Y(n451) );
  NOR2X1 U459 ( .A(n695), .B(n693), .Y(n441) );
  NOR2X1 U460 ( .A(n712), .B(n710), .Y(n457) );
  OAI211XL U461 ( .A0(n650), .A1(n736), .B0(n463), .C0(n561), .Y(N795) );
  OAI211XL U462 ( .A0(n650), .A1(n762), .B0(n474), .C0(n561), .Y(N781) );
  OAI211XL U463 ( .A0(n650), .A1(n763), .B0(n473), .C0(n561), .Y(N782) );
  OAI211XL U464 ( .A0(n650), .A1(n737), .B0(n462), .C0(n561), .Y(N793) );
  OAI211XL U465 ( .A0(n650), .A1(n759), .B0(n469), .C0(n561), .Y(N785) );
  OAI211XL U466 ( .A0(n650), .A1(n761), .B0(n466), .C0(n561), .Y(N783) );
  OAI211XL U467 ( .A0(n650), .A1(n758), .B0(n472), .C0(n561), .Y(N786) );
  NOR2X1 U468 ( .A(intadd_0_SUM_2_), .B(n680), .Y(N991) );
  NOR2X1 U469 ( .A(TONKOTSU_num[3]), .B(n497), .Y(n715) );
  NOR2X1 U470 ( .A(MISO_num[1]), .B(n448), .Y(n695) );
  NOR2X1 U471 ( .A(MISO_num[3]), .B(n448), .Y(n698) );
  NOR2X1 U472 ( .A(MISO_SOY_num[1]), .B(n501), .Y(n688) );
  NOR2X1 U473 ( .A(TONKOTSU_SOY_num[1]), .B(n493), .Y(n705) );
  NOR2X1 U474 ( .A(MISO_SOY_num[3]), .B(n501), .Y(n691) );
  NOR2X1 U475 ( .A(n554), .B(n507), .Y(n612) );
  INVX1 U476 ( .A(n507), .Y(n647) );
  NOR2X1 U477 ( .A(intadd_0_SUM_1_), .B(n680), .Y(N990) );
  NOR2X1 U478 ( .A(n433), .B(n461), .Y(n476) );
  NOR2X1 U479 ( .A(n432), .B(n461), .Y(n481) );
  NOR2X1 U480 ( .A(intadd_0_SUM_0_), .B(n680), .Y(N989) );
  NOR2X1 U481 ( .A(n610), .B(n461), .Y(n486) );
  OAI2BB1X1 U482 ( .A0N(n460), .A1N(n459), .B0(n561), .Y(n650) );
  NOR2X1 U483 ( .A(n661), .B(n415), .Y(n414) );
  NOR2X1 U484 ( .A(n430), .B(n429), .Y(n428) );
  NOR2X1 U485 ( .A(n627), .B(n571), .Y(n724) );
  NOR2X1 U486 ( .A(n547), .B(n651), .Y(n546) );
  NOR2X1 U487 ( .A(n675), .B(n680), .Y(N866) );
  NOR2X1 U488 ( .A(n680), .B(n654), .Y(N983) );
  NOR2X1 U489 ( .A(n573), .B(n576), .Y(n730) );
  NOR2X1 U490 ( .A(n672), .B(n680), .Y(N862) );
  NOR2X1 U491 ( .A(n664), .B(n680), .Y(N850) );
  NOR2X1 U492 ( .A(n674), .B(n680), .Y(N865) );
  NOR2X1 U493 ( .A(n671), .B(n680), .Y(N860) );
  NOR2X1 U494 ( .A(n573), .B(n719), .Y(n727) );
  NOR2X1 U495 ( .A(n669), .B(n680), .Y(N857) );
  NOR2X1 U496 ( .A(n670), .B(n680), .Y(N859) );
  NOR2X1 U497 ( .A(n663), .B(n680), .Y(N848) );
  NOR2X1 U498 ( .A(n677), .B(n680), .Y(N869) );
  NOR2X1 U499 ( .A(n662), .B(n680), .Y(N846) );
  NOR2X1 U500 ( .A(n681), .B(n680), .Y(N873) );
  NOR2X1 U501 ( .A(n563), .B(n575), .Y(n728) );
  NOR2X1 U502 ( .A(n668), .B(n680), .Y(N855) );
  NOR2X1 U503 ( .A(n679), .B(n680), .Y(N872) );
  NOR2X1 U504 ( .A(n667), .B(n680), .Y(N853) );
  NOR2X1 U505 ( .A(n678), .B(n680), .Y(N871) );
  NOR2X1 U506 ( .A(n676), .B(n680), .Y(N867) );
  NOR2X1 U507 ( .A(n665), .B(n680), .Y(N851) );
  NOR2X1 U508 ( .A(n666), .B(n680), .Y(N852) );
  AND3XL U509 ( .A(n578), .B(DP_OP_194J1_126_163_n24), .C(n577), .Y(n733) );
  NOR2X1 U510 ( .A(broth[9]), .B(n371), .Y(n384) );
  NOR2X1 U511 ( .A(soy_sause[5]), .B(n361), .Y(n354) );
  NOR2X1 U512 ( .A(n433), .B(portion_store), .Y(n563) );
  NOR2X1 U513 ( .A(n432), .B(portion_store), .Y(n574) );
  NOR2X1 U514 ( .A(n570), .B(portion_store), .Y(n399) );
  NOR2X1 U515 ( .A(n610), .B(portion_store), .Y(n420) );
  NOR2X1 U516 ( .A(out_total_cnt[1]), .B(n401), .Y(n397) );
  NOR2X1 U517 ( .A(n610), .B(DP_OP_181J1_123_6436_n45), .Y(n576) );
  NAND2X1 U518 ( .A(out_total_cnt[1]), .B(n431), .Y(n561) );
  NOR2X1 U519 ( .A(state[1]), .B(n314), .Y(n459) );
  NOR2X1 U520 ( .A(state[0]), .B(n311), .Y(n721) );
  BUFXL U521 ( .A(n400), .Y(n305) );
  NOR2X1 U522 ( .A(broth[12]), .B(broth[11]), .Y(n322) );
  NOR2X1 U523 ( .A(noodle[12]), .B(noodle[8]), .Y(n352) );
  NOR2X1 U524 ( .A(cnt[2]), .B(cnt[0]), .Y(n308) );
  BUFXL U525 ( .A(rst_n), .Y(n400) );
  INVXL U526 ( .A(1'b1), .Y(total_gain[0]) );
  AOI21XL U528 ( .A0(n408), .A1(n317), .B0(n653), .Y(n320) );
  OR2XL U529 ( .A(n574), .B(n420), .Y(n572) );
  INVXL U530 ( .A(intadd_2_SUM_1_), .Y(n408) );
  AOI21XL U531 ( .A0(n547), .A1(n651), .B0(n546), .Y(DP_OP_241J1_122_7686_n55)
         );
  INVXL U532 ( .A(n419), .Y(DP_OP_241J1_122_7686_n56) );
  INVXL U533 ( .A(intadd_2_n1), .Y(DP_OP_241J1_122_7686_n64) );
  OR2XL U534 ( .A(n399), .B(n420), .Y(n573) );
  INVXL U535 ( .A(n399), .Y(n578) );
  OR2XL U536 ( .A(n574), .B(n576), .Y(n571) );
  OR2XL U537 ( .A(n433), .B(DP_OP_181J1_123_6436_n45), .Y(n723) );
  AND2XL U538 ( .A(n578), .B(n738), .Y(n725) );
  NAND2BXL U539 ( .AN(ramen_type_store[0]), .B(ramen_type_store[1]), .Y(n570)
         );
  OR2XL U540 ( .A(DP_OP_211J1_131_5924_n6), .B(tonkotsu_soup[8]), .Y(n558) );
  INVXL U541 ( .A(n572), .Y(DP_OP_241J1_141_1356_n14) );
  AOI22XL U542 ( .A0(MISO_SOY_num[0]), .A1(n671), .B0(TONKOTSU_SOY_num[0]), 
        .B1(n662), .Y(n654) );
  NAND2XL U543 ( .A(n408), .B(n651), .Y(n424) );
  INVXL U544 ( .A(DP_OP_241J1_122_7686_n75), .Y(DP_OP_241J1_122_7686_n67) );
  INVXL U545 ( .A(n316), .Y(n318) );
  OAI21XL U546 ( .A0(intadd_2_SUM_0_), .A1(n321), .B0(n317), .Y(n316) );
  NAND2XL U547 ( .A(intadd_2_SUM_0_), .B(n321), .Y(n317) );
  OR2XL U548 ( .A(n582), .B(broth[12]), .Y(n548) );
  OR2XL U549 ( .A(n510), .B(miso[7]), .Y(n528) );
  INVXL U550 ( .A(n571), .Y(DP_OP_211J1_131_5924_n16) );
  OR2XL U551 ( .A(n467), .B(noodle[9]), .Y(n470) );
  OR2XL U552 ( .A(DP_OP_181J1_123_6436_n6), .B(noodle[8]), .Y(n467) );
  INVXL U553 ( .A(n725), .Y(DP_OP_194J1_126_163_n22) );
  MXI2XL U554 ( .A(intadd_2_SUM_0_), .B(n655), .S0(n410), .Y(n656) );
  AOI22XL U555 ( .A0(intadd_2_SUM_1_), .A1(n422), .B0(n409), .B1(n424), .Y(
        n657) );
  INVXL U556 ( .A(n413), .Y(n660) );
  NAND2XL U557 ( .A(n728), .B(n564), .Y(n627) );
  AND2XL U558 ( .A(n728), .B(n723), .Y(n731) );
  OR2XL U559 ( .A(n558), .B(tonkotsu_soup[9]), .Y(n621) );
  OR2XL U560 ( .A(n621), .B(tonkotsu_soup[10]), .Y(n618) );
  OR2XL U561 ( .A(n618), .B(tonkotsu_soup[11]), .Y(n615) );
  AND2XL U562 ( .A(n570), .B(DP_OP_181J1_123_6436_n45), .Y(n722) );
  OR2XL U563 ( .A(DP_OP_194J1_126_163_n6), .B(broth[10]), .Y(n585) );
  OR2XL U564 ( .A(n585), .B(broth[11]), .Y(n582) );
  OR2XL U565 ( .A(n548), .B(broth[13]), .Y(n579) );
  OR2XL U566 ( .A(n502), .B(noodle[11]), .Y(n634) );
  NAND2XL U567 ( .A(ramen_type_store[1]), .B(ramen_type_store[0]), .Y(n610) );
  AND2XL U568 ( .A(n544), .B(n552), .Y(n682) );
  NAND2XL U569 ( .A(n327), .B(n607), .Y(n361) );
  NOR4XL U570 ( .A(soy_sause[7]), .B(soy_sause[6]), .C(soy_sause[8]), .D(
        soy_sause[10]), .Y(n327) );
  INVXL U571 ( .A(n334), .Y(n358) );
  OR2XL U572 ( .A(soy_sause[1]), .B(soy_sause[2]), .Y(n362) );
  AOI31XL U573 ( .A0(tonkotsu_soup[6]), .A1(tonkotsu_soup[5]), .A2(n331), .B0(
        n330), .Y(n357) );
  NAND2XL U574 ( .A(n328), .B(n626), .Y(n331) );
  INVXL U575 ( .A(n340), .Y(n330) );
  NOR3XL U576 ( .A(tonkotsu_soup[10]), .B(tonkotsu_soup[9]), .C(n329), .Y(n334) );
  OR4XL U577 ( .A(tonkotsu_soup[11]), .B(tonkotsu_soup[13]), .C(
        tonkotsu_soup[12]), .D(tonkotsu_soup[8]), .Y(n329) );
  NAND3XL U578 ( .A(soy_sause[1]), .B(soy_sause[2]), .C(soy_sause[3]), .Y(n336) );
  NAND2XL U579 ( .A(n323), .B(n322), .Y(n371) );
  NOR4XL U580 ( .A(broth[13]), .B(broth[15]), .C(broth[14]), .D(broth[10]), 
        .Y(n323) );
  NOR4XL U581 ( .A(miso[9]), .B(miso[8]), .C(miso[7]), .D(miso[6]), .Y(n377)
         );
  OAI22XL U582 ( .A0(n367), .A1(n723), .B0(n366), .B1(n365), .Y(n368) );
  AOI31XL U583 ( .A0(tonkotsu_soup[6]), .A1(tonkotsu_soup[7]), .A2(n359), .B0(
        n358), .Y(n367) );
  OAI2BB1XL U584 ( .A0N(n364), .A1N(n363), .B0(n575), .Y(n365) );
  INVXL U585 ( .A(n357), .Y(n369) );
  AOI22XL U586 ( .A0(n356), .A1(n355), .B0(n354), .B1(n353), .Y(n370) );
  OAI211XL U587 ( .A0(miso[0]), .A1(n375), .B0(miso[3]), .C0(miso[4]), .Y(n355) );
  OAI211XL U588 ( .A0(soy_sause[0]), .A1(n362), .B0(soy_sause[3]), .C0(
        soy_sause[4]), .Y(n353) );
  AOI32XL U589 ( .A0(n374), .A1(n373), .A2(n372), .B0(n592), .B1(n373), .Y(
        n379) );
  INVXL U590 ( .A(n371), .Y(n373) );
  NAND2XL U591 ( .A(n377), .B(n376), .Y(n378) );
  OAI211XL U592 ( .A0(miso[3]), .A1(n375), .B0(miso[5]), .C0(miso[4]), .Y(n376) );
  AOI2BB1XL U593 ( .A0N(broth[2]), .A1N(broth[3]), .B0(n380), .Y(n381) );
  NAND2XL U594 ( .A(n334), .B(n333), .Y(n360) );
  OAI31XL U595 ( .A0(tonkotsu_soup[6]), .A1(tonkotsu_soup[5]), .A2(n332), .B0(
        tonkotsu_soup[7]), .Y(n333) );
  AOI2BB1XL U596 ( .A0N(tonkotsu_soup[3]), .A1N(n338), .B0(n632), .Y(n332) );
  AOI22XL U597 ( .A0(n356), .A1(n341), .B0(n340), .B1(n339), .Y(n342) );
  OAI21XL U598 ( .A0(n613), .A1(n336), .B0(n354), .Y(n343) );
  NOR2BXL U599 ( .AN(broth[5]), .B(n325), .Y(n326) );
  NOR3XL U600 ( .A(broth[4]), .B(broth[6]), .C(broth[5]), .Y(n374) );
  NAND2XL U601 ( .A(broth[7]), .B(broth[8]), .Y(n380) );
  NOR2BXL U602 ( .AN(n377), .B(miso[5]), .Y(n356) );
  AOI21XL U603 ( .A0(n654), .A1(n547), .B0(n321), .Y(n410) );
  INVXL U604 ( .A(intadd_2_SUM_2_), .Y(n658) );
  AOI22XL U605 ( .A0(MISO_num[0]), .A1(n676), .B0(TONKOTSU_num[0]), .B1(n667), 
        .Y(n651) );
  OAI2BB1XL U606 ( .A0N(intadd_2_SUM_2_), .A1N(n653), .B0(n652), .Y(
        DP_OP_241J1_122_7686_n29) );
  NAND4XL U607 ( .A(broth[4]), .B(broth[6]), .C(broth[5]), .D(n381), .Y(n382)
         );
  OAI211XL U608 ( .A0(broth[8]), .A1(n379), .B0(n719), .C0(n378), .Y(n383) );
  AOI31XL U609 ( .A0(n576), .A1(n370), .A2(n369), .B0(n368), .Y(n385) );
  AOI31XL U610 ( .A0(n350), .A1(n763), .A2(n762), .B0(n761), .Y(n387) );
  AOI32XL U611 ( .A0(noodle[1]), .A1(noodle[4]), .A2(noodle[2]), .B0(noodle[3]), .B1(noodle[4]), .Y(n350) );
  AOI22XL U612 ( .A0(n384), .A1(n346), .B0(n345), .B1(n344), .Y(n347) );
  OAI31XL U613 ( .A0(broth[7]), .A1(broth[6]), .A2(n326), .B0(broth[8]), .Y(
        n346) );
  OAI211XL U614 ( .A0(soy_sause[4]), .A1(n343), .B0(n420), .C0(n342), .Y(n344)
         );
  AOI22XL U615 ( .A0(n335), .A1(n574), .B0(n563), .B1(n360), .Y(n345) );
  OAI21XL U616 ( .A0(n374), .A1(n380), .B0(n384), .Y(n349) );
  OAI2BB1XL U617 ( .A0N(n324), .A1N(n337), .B0(n356), .Y(n348) );
  AND2XL U618 ( .A(miso[3]), .B(miso[4]), .Y(n324) );
  NAND2XL U619 ( .A(n352), .B(n351), .Y(n389) );
  NOR4XL U620 ( .A(noodle[11]), .B(noodle[10]), .C(noodle[13]), .D(noodle[9]), 
        .Y(n351) );
  NAND2XL U621 ( .A(n570), .B(portion_store), .Y(n738) );
  NAND2XL U622 ( .A(n554), .B(n557), .Y(n433) );
  NAND2XL U623 ( .A(n557), .B(ramen_type_store[0]), .Y(n432) );
  NOR2X1 U624 ( .A(n669), .B(n444), .Y(n447) );
  NAND2XL U625 ( .A(n460), .B(n561), .Y(n461) );
  OR2XL U626 ( .A(n461), .B(n544), .Y(n507) );
  NOR3XL U627 ( .A(noodle[4]), .B(noodle[3]), .C(noodle[2]), .Y(n388) );
  OR2XL U628 ( .A(n525), .B(soy_sause[7]), .Y(n538) );
  OR2XL U629 ( .A(DP_OP_226J1_136_3393_n4), .B(miso[6]), .Y(n510) );
  OR2XL U630 ( .A(DP_OP_241J1_141_1356_n5), .B(soy_sause[6]), .Y(n525) );
  OR2XL U631 ( .A(n470), .B(noodle[10]), .Y(n502) );
  NOR3XL U632 ( .A(n575), .B(n574), .C(n576), .Y(n732) );
  ADDFXL U633 ( .A(intadd_2_SUM_1_), .B(n412), .CI(n411), .CO(n417), .S(n427)
         );
  INVXL U634 ( .A(intadd_1_SUM_1_), .Y(n412) );
  ADDFXL U635 ( .A(n418), .B(n417), .CI(n416), .CO(n419), .S(n413) );
  INVXL U636 ( .A(intadd_1_SUM_2_), .Y(n416) );
  AOI22XL U637 ( .A0(intadd_2_SUM_2_), .A1(n422), .B0(n651), .B1(n658), .Y(
        n418) );
  INVXL U638 ( .A(DP_OP_241J1_122_7686_n74), .Y(DP_OP_241J1_122_7686_n66) );
  INVXL U639 ( .A(DP_OP_241J1_122_7686_n32), .Y(intadd_0_B_3_) );
  MXI2XL U640 ( .A(DP_OP_241J1_122_7686_n65), .B(intadd_2_SUM_5_), .S0(
        DP_OP_241J1_122_7686_n18), .Y(n565) );
  XOR2XL U641 ( .A(intadd_1_n1), .B(DP_OP_241J1_122_7686_n17), .Y(n566) );
  INVXL U642 ( .A(DP_OP_241J1_122_7686_n25), .Y(n652) );
  NAND2XL U643 ( .A(n431), .B(n397), .Y(n680) );
  AOI211XL U644 ( .A0(noodle[6]), .A1(n390), .B0(noodle[7]), .C0(n389), .Y(
        n391) );
  AOI31XL U645 ( .A0(n399), .A1(n349), .A2(n348), .B0(n347), .Y(n393) );
  OAI21XL U646 ( .A0(n387), .A1(n389), .B0(n386), .Y(n392) );
  INVXL U647 ( .A(n573), .Y(DP_OP_226J1_136_3393_n13) );
  OAI2BB1XL U648 ( .A0N(ramen_type_store[1]), .A1N(n650), .B0(n561), .Y(n604)
         );
  INVXL U649 ( .A(n421), .Y(DP_OP_211J1_131_5924_n15) );
  NAND3BXL U650 ( .AN(n571), .B(n564), .C(n723), .Y(n421) );
  AND2XL U651 ( .A(n570), .B(n647), .Y(n631) );
  OAI2BB1XL U652 ( .A0N(n570), .A1N(n650), .B0(n561), .Y(n633) );
  INVXL U653 ( .A(n434), .Y(n479) );
  OAI21XL U654 ( .A0(n475), .A1(n497), .B0(n494), .Y(n434) );
  NAND2XL U655 ( .A(n476), .B(n679), .Y(n478) );
  NOR2X1 U656 ( .A(n677), .B(n458), .Y(n716) );
  OAI21XL U657 ( .A0(n716), .A1(n497), .B0(n494), .Y(n713) );
  INVXL U658 ( .A(n476), .Y(n497) );
  NAND2XL U659 ( .A(n494), .B(n456), .Y(n710) );
  NAND2XL U660 ( .A(n561), .B(n497), .Y(n494) );
  NAND2XL U661 ( .A(n476), .B(n676), .Y(n456) );
  NOR2X1 U662 ( .A(n673), .B(n492), .Y(n480) );
  INVXL U663 ( .A(n438), .Y(n484) );
  OAI21XL U664 ( .A0(n480), .A1(n493), .B0(n490), .Y(n438) );
  NAND2XL U665 ( .A(n481), .B(n674), .Y(n483) );
  NOR2X1 U666 ( .A(n672), .B(n452), .Y(n709) );
  OAI21XL U667 ( .A0(n709), .A1(n493), .B0(n490), .Y(n706) );
  INVXL U668 ( .A(n481), .Y(n493) );
  NAND2XL U669 ( .A(n490), .B(n450), .Y(n703) );
  NAND2XL U670 ( .A(n561), .B(n493), .Y(n490) );
  NAND2XL U671 ( .A(n481), .B(n671), .Y(n450) );
  OAI21XL U672 ( .A0(n447), .A1(n448), .B0(n446), .Y(n700) );
  NAND2XL U673 ( .A(n445), .B(n447), .Y(n702) );
  NOR2X1 U674 ( .A(n668), .B(n442), .Y(n699) );
  OAI21XL U675 ( .A0(n699), .A1(n448), .B0(n446), .Y(n696) );
  INVXL U676 ( .A(n445), .Y(n448) );
  NAND2XL U677 ( .A(n446), .B(n440), .Y(n693) );
  NAND2XL U678 ( .A(n561), .B(n448), .Y(n446) );
  NAND2XL U679 ( .A(n445), .B(n667), .Y(n440) );
  NOR2X1 U680 ( .A(n664), .B(n500), .Y(n485) );
  INVXL U681 ( .A(n436), .Y(n489) );
  OAI21XL U682 ( .A0(n485), .A1(n501), .B0(n498), .Y(n436) );
  NAND2XL U683 ( .A(n486), .B(n665), .Y(n488) );
  NOR2X1 U684 ( .A(n663), .B(n455), .Y(n692) );
  OAI21XL U685 ( .A0(n692), .A1(n501), .B0(n498), .Y(n689) );
  INVXL U686 ( .A(n486), .Y(n501) );
  NAND2XL U687 ( .A(n498), .B(n453), .Y(n686) );
  NAND2XL U688 ( .A(n561), .B(n501), .Y(n498) );
  NAND2XL U689 ( .A(n486), .B(n662), .Y(n453) );
  OR2XL U690 ( .A(n538), .B(soy_sause[8]), .Y(n605) );
  OAI2BB1XL U691 ( .A0N(ramen_type_store[0]), .A1N(n650), .B0(n561), .Y(n614)
         );
  NAND2BXL U692 ( .AN(n718), .B(n717), .Y(n552) );
  NOR4XL U693 ( .A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .D(n552), .Y(n556) );
  INVXL U694 ( .A(n459), .Y(n544) );
  NAND2XL U695 ( .A(state[0]), .B(state[1]), .Y(n401) );
  NAND4XL U696 ( .A(noodle[11]), .B(noodle[10]), .C(n388), .D(n307), .Y(n313)
         );
  NAND2XL U697 ( .A(cnt[1]), .B(n308), .Y(n394) );
  OAI211XL U698 ( .A0(n650), .A1(n734), .B0(n551), .C0(n561), .Y(N805) );
  NAND2XL U699 ( .A(n550), .B(n647), .Y(n551) );
  OR2XL U700 ( .A(n579), .B(broth[14]), .Y(n549) );
  OAI211XL U701 ( .A0(n633), .A1(n751), .B0(n562), .C0(n561), .Y(N819) );
  NAND2XL U702 ( .A(n560), .B(n631), .Y(n562) );
  XNOR2XL U703 ( .A(tonkotsu_soup[13]), .B(n559), .Y(n560) );
  OR2XL U704 ( .A(n615), .B(tonkotsu_soup[12]), .Y(n559) );
  OAI211XL U705 ( .A0(n650), .A1(n735), .B0(n537), .C0(n561), .Y(N803) );
  NAND2XL U706 ( .A(n536), .B(n647), .Y(n537) );
  XNOR2XL U707 ( .A(broth[13]), .B(n548), .Y(n536) );
  OAI211XL U708 ( .A0(n614), .A1(n745), .B0(n541), .C0(n561), .Y(N840) );
  NAND2XL U709 ( .A(n540), .B(n612), .Y(n541) );
  XNOR2XL U710 ( .A(soy_sause[10]), .B(n539), .Y(n540) );
  OR2XL U711 ( .A(n605), .B(soy_sause[9]), .Y(n539) );
  OAI211XL U712 ( .A0(n633), .A1(n752), .B0(n535), .C0(n561), .Y(N815) );
  NAND2XL U713 ( .A(n534), .B(n631), .Y(n535) );
  OAI211XL U714 ( .A0(n604), .A1(n739), .B0(n531), .C0(n561), .Y(N829) );
  NAND2XL U715 ( .A(n530), .B(n602), .Y(n531) );
  XNOR2XL U716 ( .A(miso[9]), .B(n529), .Y(n530) );
  OR2XL U717 ( .A(n528), .B(miso[8]), .Y(n529) );
  OAI211XL U718 ( .A0(n633), .A1(n753), .B0(n533), .C0(n561), .Y(N814) );
  NAND2XL U719 ( .A(n532), .B(n631), .Y(n533) );
  OAI211XL U720 ( .A0(n604), .A1(n740), .B0(n512), .C0(n561), .Y(N828) );
  NAND2XL U721 ( .A(n511), .B(n602), .Y(n512) );
  OAI211XL U722 ( .A0(n614), .A1(n746), .B0(n527), .C0(n561), .Y(N838) );
  NAND2XL U723 ( .A(n526), .B(n612), .Y(n527) );
  XNOR2XL U724 ( .A(soy_sause[8]), .B(n538), .Y(n526) );
  OAI211XL U725 ( .A0(n650), .A1(n756), .B0(n505), .C0(n561), .Y(N789) );
  NAND2XL U726 ( .A(n504), .B(n647), .Y(n505) );
  XNOR2XL U727 ( .A(noodle[13]), .B(n503), .Y(n504) );
  OR2XL U728 ( .A(n634), .B(noodle[12]), .Y(n503) );
  OAI211XL U729 ( .A0(n604), .A1(n741), .B0(n509), .C0(n561), .Y(N827) );
  NAND2XL U730 ( .A(n508), .B(n602), .Y(n509) );
  XNOR2XL U731 ( .A(miso[7]), .B(n510), .Y(n508) );
  OAI211XL U732 ( .A0(n614), .A1(n747), .B0(n520), .C0(n561), .Y(N837) );
  NAND2XL U733 ( .A(n519), .B(n612), .Y(n520) );
  XNOR2XL U734 ( .A(soy_sause[7]), .B(n525), .Y(n519) );
  OAI211XL U735 ( .A0(n604), .A1(n742), .B0(n515), .C0(n561), .Y(N826) );
  NAND2XL U736 ( .A(n514), .B(n602), .Y(n515) );
  XNOR2XL U737 ( .A(miso[6]), .B(DP_OP_226J1_136_3393_n4), .Y(n514) );
  OAI211XL U738 ( .A0(n633), .A1(n755), .B0(n561), .C0(n524), .Y(N809) );
  OAI211XL U739 ( .A0(n633), .A1(n754), .B0(n523), .C0(n561), .Y(N811) );
  OAI211XL U740 ( .A0(n614), .A1(n748), .B0(n522), .C0(n561), .Y(N836) );
  NAND2XL U741 ( .A(n521), .B(n612), .Y(n522) );
  XNOR2XL U742 ( .A(soy_sause[6]), .B(DP_OP_241J1_141_1356_n5), .Y(n521) );
  OAI211XL U743 ( .A0(n650), .A1(n757), .B0(n465), .C0(n561), .Y(N787) );
  NAND2XL U744 ( .A(n464), .B(n647), .Y(n465) );
  XNOR2XL U745 ( .A(noodle[11]), .B(n502), .Y(n464) );
  OAI211XL U746 ( .A0(n614), .A1(n750), .B0(n518), .C0(n561), .Y(N832) );
  OAI211XL U747 ( .A0(n614), .A1(n749), .B0(n517), .C0(n561), .Y(N833) );
  OAI211XL U748 ( .A0(n604), .A1(n744), .B0(n516), .C0(n561), .Y(N823) );
  OAI211XL U749 ( .A0(n604), .A1(n743), .B0(n513), .C0(n561), .Y(N825) );
  XNOR2XL U750 ( .A(noodle[10]), .B(n470), .Y(n471) );
  XNOR2XL U751 ( .A(noodle[9]), .B(n467), .Y(n468) );
  OAI211XL U752 ( .A0(n614), .A1(n760), .B0(n506), .C0(n561), .Y(N834) );
  AOI211XL U753 ( .A0(n430), .A1(n429), .B0(n680), .C0(n428), .Y(N987) );
  MXI2XL U754 ( .A(DP_OP_241J1_122_7686_n67), .B(DP_OP_241J1_122_7686_n75), 
        .S0(n427), .Y(n429) );
  AOI211XL U755 ( .A0(n661), .A1(n415), .B0(n680), .C0(n414), .Y(N988) );
  AOI22XL U756 ( .A0(DP_OP_241J1_122_7686_n74), .A1(n660), .B0(n413), .B1(
        DP_OP_241J1_122_7686_n66), .Y(n415) );
  AOI211XL U757 ( .A0(intadd_0_n1), .A1(n569), .B0(n680), .C0(n568), .Y(N996)
         );
  MXI2XL U758 ( .A(DP_OP_241J1_122_7686_n25), .B(n652), .S0(n567), .Y(n569) );
  XOR2XL U759 ( .A(n566), .B(n565), .Y(n567) );
  INVXL U760 ( .A(n680), .Y(n720) );
  AND2XL U761 ( .A(MISO_SOY_num[1]), .B(n720), .Y(N847) );
  AND2XL U762 ( .A(MISO_SOY_num[3]), .B(n720), .Y(N849) );
  AND2XL U763 ( .A(MISO_num[1]), .B(n720), .Y(N854) );
  AND2XL U764 ( .A(MISO_num[3]), .B(n720), .Y(N856) );
  AND2XL U765 ( .A(TONKOTSU_SOY_num[1]), .B(n720), .Y(N861) );
  AND2XL U766 ( .A(TONKOTSU_SOY_num[3]), .B(n720), .Y(N863) );
  AND2XL U767 ( .A(TONKOTSU_num[1]), .B(n720), .Y(N868) );
  AND2XL U768 ( .A(TONKOTSU_num[3]), .B(n720), .Y(N870) );
  OAI2BB2XL U769 ( .B0(n604), .B1(n603), .A0N(n602), .A1N(n601), .Y(N820) );
  OAI2BB2XL U770 ( .B0(n604), .B1(n600), .A0N(n602), .A1N(C59_DATA2_1), .Y(
        N821) );
  OAI2BB2XL U771 ( .B0(n604), .B1(n599), .A0N(n602), .A1N(C59_DATA2_2), .Y(
        N822) );
  OAI2BB2XL U772 ( .B0(n604), .B1(n598), .A0N(n602), .A1N(C59_DATA2_4), .Y(
        N824) );
  OAI2BB2XL U773 ( .B0(n633), .B1(n630), .A0N(n631), .A1N(n629), .Y(N807) );
  OAI2BB2XL U774 ( .B0(n633), .B1(n626), .A0N(n631), .A1N(C58_DATA2_2), .Y(
        N808) );
  OAI2BB2XL U775 ( .B0(n633), .B1(n632), .A0N(n631), .A1N(C58_DATA2_4), .Y(
        N810) );
  OAI2BB2XL U776 ( .B0(n633), .B1(n625), .A0N(n631), .A1N(C58_DATA2_6), .Y(
        N812) );
  OAI2BB2XL U777 ( .B0(n633), .B1(n624), .A0N(n631), .A1N(C58_DATA2_7), .Y(
        N813) );
  OAI2BB2XL U778 ( .B0(n633), .B1(n623), .A0N(n631), .A1N(n622), .Y(N816) );
  XNOR2XL U779 ( .A(tonkotsu_soup[10]), .B(n621), .Y(n622) );
  OAI2BB2XL U780 ( .B0(n633), .B1(n620), .A0N(n631), .A1N(n619), .Y(N817) );
  OAI2BB2XL U781 ( .B0(n633), .B1(n617), .A0N(n631), .A1N(n616), .Y(N818) );
  XNOR2XL U782 ( .A(tonkotsu_soup[12]), .B(n615), .Y(n616) );
  OAI2BB2XL U783 ( .B0(n650), .B1(n596), .A0N(n595), .A1N(n647), .Y(N791) );
  OAI2BB2XL U784 ( .B0(n650), .B1(n594), .A0N(broth_remain[2]), .A1N(n647), 
        .Y(N792) );
  OAI2BB2XL U785 ( .B0(n650), .B1(n597), .A0N(broth_remain[4]), .A1N(n647), 
        .Y(N794) );
  OAI2BB2XL U786 ( .B0(n650), .B1(n593), .A0N(n647), .A1N(broth_remain[6]), 
        .Y(N796) );
  OAI2BB2XL U787 ( .B0(n650), .B1(n592), .A0N(n647), .A1N(broth_remain[7]), 
        .Y(N797) );
  OAI2BB2XL U788 ( .B0(n650), .B1(n591), .A0N(n647), .A1N(broth_remain[8]), 
        .Y(N798) );
  OAI2BB2XL U789 ( .B0(n650), .B1(n590), .A0N(n647), .A1N(broth_remain[9]), 
        .Y(N799) );
  OAI2BB2XL U790 ( .B0(n650), .B1(n589), .A0N(n647), .A1N(n588), .Y(N800) );
  OAI2BB2XL U791 ( .B0(n650), .B1(n587), .A0N(n647), .A1N(n586), .Y(N801) );
  OAI2BB2XL U792 ( .B0(n650), .B1(n584), .A0N(n647), .A1N(n583), .Y(N802) );
  OAI2BB2XL U793 ( .B0(n650), .B1(n581), .A0N(n647), .A1N(n580), .Y(N804) );
  AOI32XL U794 ( .A0(n479), .A1(TONKOTSU_num[6]), .A2(n478), .B0(n477), .B1(
        n681), .Y(n255) );
  OAI22XL U795 ( .A0(n479), .A1(n679), .B0(n478), .B1(n435), .Y(n256) );
  OAI32XL U796 ( .A0(TONKOTSU_num[4]), .A1(n497), .A2(n496), .B0(n495), .B1(
        n678), .Y(n257) );
  OAI2BB1XL U797 ( .A0N(n716), .A1N(n715), .B0(n714), .Y(n258) );
  OAI32XL U798 ( .A0(TONKOTSU_num[2]), .A1(n497), .A2(n458), .B0(n457), .B1(
        n677), .Y(n259) );
  OAI2BB1XL U799 ( .A0N(TONKOTSU_num[0]), .A1N(n712), .B0(n711), .Y(n260) );
  AOI32XL U800 ( .A0(n484), .A1(TONKOTSU_SOY_num[6]), .A2(n483), .B0(n482), 
        .B1(n675), .Y(n262) );
  OAI22XL U801 ( .A0(n484), .A1(n674), .B0(n483), .B1(n439), .Y(n263) );
  OAI32XL U802 ( .A0(TONKOTSU_SOY_num[4]), .A1(n493), .A2(n492), .B0(n491), 
        .B1(n673), .Y(n264) );
  OAI2BB1XL U803 ( .A0N(n709), .A1N(n708), .B0(n707), .Y(n265) );
  OAI32XL U804 ( .A0(TONKOTSU_SOY_num[2]), .A1(n493), .A2(n452), .B0(n451), 
        .B1(n672), .Y(n266) );
  OAI2BB1XL U805 ( .A0N(TONKOTSU_SOY_num[0]), .A1N(n705), .B0(n704), .Y(n267)
         );
  OAI32XL U806 ( .A0(MISO_num[6]), .A1(n701), .A2(n702), .B0(n449), .B1(n670), 
        .Y(n269) );
  AOI2BB1XL U807 ( .A0N(MISO_num[5]), .A1N(n448), .B0(n700), .Y(n449) );
  AOI2BB2XL U808 ( .B0(n702), .B1(n701), .A0N(n701), .A1N(n700), .Y(n270) );
  OAI32XL U809 ( .A0(MISO_num[4]), .A1(n448), .A2(n444), .B0(n443), .B1(n669), 
        .Y(n271) );
  OAI2BB1XL U810 ( .A0N(n699), .A1N(n698), .B0(n697), .Y(n272) );
  OAI32XL U811 ( .A0(MISO_num[2]), .A1(n448), .A2(n442), .B0(n441), .B1(n668), 
        .Y(n273) );
  OAI2BB1XL U812 ( .A0N(MISO_num[0]), .A1N(n695), .B0(n694), .Y(n274) );
  AOI32XL U813 ( .A0(n489), .A1(MISO_SOY_num[6]), .A2(n488), .B0(n487), .B1(
        n666), .Y(n276) );
  OAI22XL U814 ( .A0(n489), .A1(n665), .B0(n488), .B1(n437), .Y(n277) );
  OAI32XL U815 ( .A0(MISO_SOY_num[4]), .A1(n501), .A2(n500), .B0(n499), .B1(
        n664), .Y(n278) );
  OAI2BB1XL U816 ( .A0N(n692), .A1N(n691), .B0(n690), .Y(n279) );
  OAI32XL U817 ( .A0(MISO_SOY_num[2]), .A1(n501), .A2(n455), .B0(n454), .B1(
        n663), .Y(n280) );
  OAI2BB1XL U818 ( .A0N(MISO_SOY_num[0]), .A1N(n688), .B0(n687), .Y(n281) );
  OAI2BB2XL U819 ( .B0(n650), .B1(n636), .A0N(n647), .A1N(n635), .Y(N788) );
  XNOR2XL U820 ( .A(noodle[12]), .B(n634), .Y(n635) );
  OAI2BB2XL U821 ( .B0(n650), .B1(n638), .A0N(n647), .A1N(n637), .Y(N784) );
  XNOR2XL U822 ( .A(noodle[8]), .B(DP_OP_181J1_123_6436_n6), .Y(n637) );
  OAI2BB2XL U823 ( .B0(n650), .B1(n639), .A0N(noodle_remain[4]), .A1N(n647), 
        .Y(N780) );
  OAI2BB2XL U824 ( .B0(n650), .B1(n643), .A0N(n642), .A1N(n647), .Y(N779) );
  OAI2BB2XL U825 ( .B0(n650), .B1(n646), .A0N(n645), .A1N(n647), .Y(N778) );
  OAI2BB2XL U826 ( .B0(n650), .B1(n649), .A0N(n648), .A1N(n647), .Y(N777) );
  OAI2BB2XL U827 ( .B0(n614), .B1(n607), .A0N(n612), .A1N(n606), .Y(N839) );
  XNOR2XL U828 ( .A(soy_sause[9]), .B(n605), .Y(n606) );
  OAI2BB2XL U829 ( .B0(n614), .B1(n608), .A0N(n612), .A1N(C60_DATA2_5), .Y(
        N835) );
  OAI2BB2XL U830 ( .B0(n614), .B1(n609), .A0N(n612), .A1N(C60_DATA2_1), .Y(
        N831) );
  OAI2BB2XL U831 ( .B0(n614), .B1(n613), .A0N(n612), .A1N(n611), .Y(N830) );
  OAI21XL U832 ( .A0(n543), .A1(DP_OP_181J1_123_6436_n45), .B0(n542), .Y(n283)
         );
  NAND2XL U833 ( .A(n543), .B(portion), .Y(n542) );
  NOR4BXL U834 ( .AN(cnt[0]), .B(cnt[1]), .C(cnt[2]), .D(n552), .Y(n543) );
  OAI21XL U835 ( .A0(n557), .A1(n556), .B0(n555), .Y(n284) );
  NAND2XL U836 ( .A(n556), .B(ramen_type[1]), .Y(n555) );
  OAI21XL U837 ( .A0(n554), .A1(n556), .B0(n553), .Y(n285) );
  NAND2XL U838 ( .A(n556), .B(ramen_type[0]), .Y(n553) );
  AOI211XL U839 ( .A0(cnt[0]), .A1(cnt[1]), .B0(n545), .C0(n682), .Y(N76) );
  OAI31XL U840 ( .A0(out_total_cnt[2]), .A1(n405), .A2(n404), .B0(n398), .Y(
        n286) );
  NOR2X1 U841 ( .A(n406), .B(n407), .Y(n396) );
  OAI32XL U842 ( .A0(n407), .A1(n406), .A2(n405), .B0(out_total_cnt[1]), .B1(
        n404), .Y(n288) );
  OAI222XL U843 ( .A0(n544), .A1(n394), .B0(selling), .B1(n315), .C0(n401), 
        .C1(in_valid), .Y(n718) );
  AOI31XL U844 ( .A0(n314), .A1(n313), .A2(n312), .B0(n721), .Y(n315) );
  INVXL U845 ( .A(in_valid), .Y(n312) );
  OAI211XL U846 ( .A0(selling), .A1(n310), .B0(n309), .C0(n401), .Y(n717) );
  OAI21XL U847 ( .A0(state[1]), .A1(n313), .B0(n314), .Y(n310) );
  AOI22XL U848 ( .A0(n406), .A1(in_valid), .B0(n459), .B1(n394), .Y(n309) );
  INVXL U849 ( .A(n360), .Y(n366) );
  INVXL U850 ( .A(intadd_1_SUM_0_), .Y(n547) );
  INVXL U851 ( .A(n420), .Y(n564) );
  INVXL U852 ( .A(n651), .Y(n422) );
  XNOR2XL U853 ( .A(broth[15]), .B(n549), .Y(n550) );
  XNOR2XL U854 ( .A(miso[8]), .B(n528), .Y(n511) );
  INVXL U855 ( .A(intadd_2_SUM_5_), .Y(DP_OP_241J1_122_7686_n65) );
  INVXL U856 ( .A(intadd_2_SUM_0_), .Y(n655) );
  XNOR2XL U857 ( .A(tonkotsu_soup[11]), .B(n618), .Y(n619) );
  XNOR2XL U858 ( .A(broth[14]), .B(n579), .Y(n580) );
  INVXL U859 ( .A(n475), .Y(n435) );
  NOR2XL U860 ( .A(TONKOTSU_num[1]), .B(n497), .Y(n712) );
  XOR2XL U861 ( .A(noodle[2]), .B(n644), .Y(n645) );
  INVXL U862 ( .A(n401), .Y(n403) );
  NAND4XL U863 ( .A(noodle[5]), .B(noodle[7]), .C(noodle[13]), .D(noodle[9]), 
        .Y(n306) );
  NOR4BXL U864 ( .AN(n352), .B(noodle[1]), .C(n763), .D(n306), .Y(n307) );
  INVXL U865 ( .A(state[0]), .Y(n314) );
  INVXL U866 ( .A(state[1]), .Y(n311) );
  INVXL U867 ( .A(n570), .Y(DP_OP_194J1_126_163_n23) );
  INVXL U868 ( .A(TONKOTSU_SOY_num[0]), .Y(n671) );
  INVXL U869 ( .A(MISO_SOY_num[0]), .Y(n662) );
  ADDFXL U870 ( .A(intadd_1_SUM_1_), .B(intadd_1_SUM_2_), .CI(n318), .CO(n319), 
        .S(DP_OP_241J1_122_7686_n41) );
  ADDFXL U871 ( .A(intadd_1_SUM_2_), .B(n320), .CI(n319), .CO(
        DP_OP_241J1_122_7686_n33), .S(DP_OP_241J1_122_7686_n34) );
  INVXL U872 ( .A(portion_store), .Y(DP_OP_181J1_123_6436_n45) );
  INVXL U873 ( .A(ramen_type_store[1]), .Y(n557) );
  INVXL U874 ( .A(DP_OP_241J1_122_7686_n39), .Y(intadd_0_B_2_) );
  INVXL U875 ( .A(DP_OP_241J1_122_7686_n38), .Y(intadd_0_A_3_) );
  INVXL U876 ( .A(DP_OP_241J1_122_7686_n31), .Y(intadd_0_B_4_) );
  INVXL U877 ( .A(DP_OP_241J1_122_7686_n28), .Y(intadd_0_A_4_) );
  INVXL U878 ( .A(TONKOTSU_num[0]), .Y(n676) );
  INVXL U879 ( .A(MISO_num[0]), .Y(n667) );
  ADDFXL U880 ( .A(n410), .B(intadd_1_SUM_1_), .CI(n546), .CO(
        DP_OP_241J1_122_7686_n47), .S(DP_OP_241J1_122_7686_n48) );
  INVXL U881 ( .A(DP_OP_241J1_122_7686_n24), .Y(intadd_0_B_5_) );
  INVXL U882 ( .A(DP_OP_241J1_122_7686_n27), .Y(intadd_0_A_5_) );
  INVXL U883 ( .A(DP_OP_241J1_122_7686_n53), .Y(intadd_0_A_0_) );
  INVXL U884 ( .A(DP_OP_241J1_122_7686_n46), .Y(intadd_0_B_1_) );
  INVXL U885 ( .A(DP_OP_241J1_122_7686_n52), .Y(intadd_0_A_1_) );
  INVXL U886 ( .A(DP_OP_241J1_122_7686_n45), .Y(intadd_0_A_2_) );
  INVXL U887 ( .A(DP_OP_241J1_122_7686_n19), .Y(intadd_0_B_6_) );
  INVXL U888 ( .A(n719), .Y(DP_OP_194J1_126_163_n24) );
  INVXL U889 ( .A(DP_OP_241J1_122_7686_n23), .Y(intadd_0_A_6_) );
  INVXL U890 ( .A(ramen_type_store[0]), .Y(n554) );
  INVXL U891 ( .A(miso[2]), .Y(n599) );
  INVXL U892 ( .A(miso[1]), .Y(n600) );
  AOI21XL U893 ( .A0(broth[2]), .A1(broth[3]), .B0(broth[4]), .Y(n325) );
  INVXL U894 ( .A(soy_sause[9]), .Y(n607) );
  INVXL U895 ( .A(tonkotsu_soup[2]), .Y(n626) );
  AOI221XL U896 ( .A0(n760), .A1(n354), .B0(n336), .B1(n354), .C0(n357), .Y(
        n335) );
  INVXL U897 ( .A(tonkotsu_soup[1]), .Y(n630) );
  INVXL U898 ( .A(tonkotsu_soup[4]), .Y(n632) );
  INVXL U899 ( .A(soy_sause[0]), .Y(n613) );
  AOI31XL U900 ( .A0(miso[3]), .A1(miso[0]), .A2(n337), .B0(miso[4]), .Y(n341)
         );
  OR3XL U901 ( .A(tonkotsu_soup[4]), .B(tonkotsu_soup[3]), .C(tonkotsu_soup[5]), .Y(n359) );
  OAI21XL U902 ( .A0(n359), .A1(n338), .B0(tonkotsu_soup[6]), .Y(n339) );
  NAND2XL U903 ( .A(n599), .B(n600), .Y(n375) );
  INVXL U904 ( .A(n361), .Y(n364) );
  OAI211XL U905 ( .A0(soy_sause[3]), .A1(n362), .B0(soy_sause[4]), .C0(
        soy_sause[5]), .Y(n363) );
  OAI21XL U906 ( .A0(broth[2]), .A1(broth[1]), .B0(broth[3]), .Y(n372) );
  INVXL U907 ( .A(broth[7]), .Y(n592) );
  AOI222XL U908 ( .A0(n385), .A1(n384), .B0(n385), .B1(n383), .C0(n384), .C1(
        n382), .Y(n386) );
  AOI221XL U909 ( .A0(n393), .A1(n392), .B0(n391), .B1(n392), .C0(n394), .Y(
        n460) );
  AOI21XL U910 ( .A0(can_sell_store), .A1(n394), .B0(n460), .Y(n395) );
  INVXL U911 ( .A(n395), .Y(n254) );
  INVXL U912 ( .A(out_total_cnt[1]), .Y(n405) );
  NAND2XL U913 ( .A(out_total_cnt[0]), .B(n403), .Y(n404) );
  INVXL U914 ( .A(n404), .Y(n407) );
  OAI21XL U915 ( .A0(n397), .A1(n396), .B0(out_total_cnt[2]), .Y(n398) );
  INVXL U916 ( .A(out_total_cnt[0]), .Y(n402) );
  OAI32XL U917 ( .A0(n403), .A1(n406), .A2(n402), .B0(out_total_cnt[0]), .B1(
        n401), .Y(n287) );
  INVXL U918 ( .A(n654), .Y(n409) );
  AOI222XL U919 ( .A0(intadd_1_SUM_0_), .A1(n654), .B0(intadd_1_SUM_0_), .B1(
        n655), .C0(n654), .C1(n655), .Y(n411) );
  AOI222XL U920 ( .A0(n430), .A1(n427), .B0(n430), .B1(
        DP_OP_241J1_122_7686_n67), .C0(n427), .C1(DP_OP_241J1_122_7686_n67), 
        .Y(n661) );
  NAND2XL U921 ( .A(intadd_2_SUM_1_), .B(n422), .Y(n423) );
  NAND2XL U922 ( .A(n424), .B(n423), .Y(n426) );
  AOI211XL U923 ( .A0(n654), .A1(n426), .B0(n680), .C0(n425), .Y(N985) );
  OAI21XL U924 ( .A0(n667), .A1(n446), .B0(n440), .Y(n275) );
  OAI21XL U925 ( .A0(n671), .A1(n490), .B0(n450), .Y(n268) );
  OAI21XL U926 ( .A0(n662), .A1(n498), .B0(n453), .Y(n282) );
  OAI21XL U927 ( .A0(n676), .A1(n494), .B0(n456), .Y(n261) );
  INVXL U928 ( .A(TONKOTSU_num[4]), .Y(n678) );
  INVXL U929 ( .A(TONKOTSU_num[2]), .Y(n677) );
  NAND2XL U930 ( .A(TONKOTSU_num[1]), .B(TONKOTSU_num[0]), .Y(n458) );
  NAND2XL U931 ( .A(TONKOTSU_num[3]), .B(n716), .Y(n496) );
  INVXL U932 ( .A(TONKOTSU_num[5]), .Y(n679) );
  INVXL U933 ( .A(MISO_SOY_num[4]), .Y(n664) );
  INVXL U934 ( .A(MISO_SOY_num[2]), .Y(n663) );
  NAND2XL U935 ( .A(MISO_SOY_num[1]), .B(MISO_SOY_num[0]), .Y(n455) );
  NAND2XL U936 ( .A(MISO_SOY_num[3]), .B(n692), .Y(n500) );
  INVXL U937 ( .A(MISO_SOY_num[5]), .Y(n665) );
  INVXL U938 ( .A(n485), .Y(n437) );
  INVXL U939 ( .A(TONKOTSU_SOY_num[4]), .Y(n673) );
  INVXL U940 ( .A(TONKOTSU_SOY_num[2]), .Y(n672) );
  NAND2XL U941 ( .A(TONKOTSU_SOY_num[1]), .B(TONKOTSU_SOY_num[0]), .Y(n452) );
  NAND2XL U942 ( .A(TONKOTSU_SOY_num[3]), .B(n709), .Y(n492) );
  INVXL U943 ( .A(TONKOTSU_SOY_num[5]), .Y(n674) );
  INVXL U944 ( .A(n480), .Y(n439) );
  NAND2XL U945 ( .A(MISO_num[1]), .B(MISO_num[0]), .Y(n442) );
  INVXL U946 ( .A(MISO_num[2]), .Y(n668) );
  NAND2XL U947 ( .A(MISO_num[3]), .B(n699), .Y(n444) );
  INVXL U948 ( .A(MISO_num[4]), .Y(n669) );
  INVXL U949 ( .A(MISO_num[5]), .Y(n701) );
  INVXL U950 ( .A(MISO_num[6]), .Y(n670) );
  NAND2XL U951 ( .A(n647), .B(broth_remain[3]), .Y(n462) );
  NAND2XL U952 ( .A(n647), .B(broth_remain[5]), .Y(n463) );
  NAND2XL U953 ( .A(noodle_remain[7]), .B(n647), .Y(n466) );
  NAND2XL U954 ( .A(n468), .B(n647), .Y(n469) );
  NAND2XL U955 ( .A(n471), .B(n647), .Y(n472) );
  NAND2XL U956 ( .A(n647), .B(noodle_remain[6]), .Y(n473) );
  NAND2XL U957 ( .A(n647), .B(noodle_remain[5]), .Y(n474) );
  NAND3XL U958 ( .A(n476), .B(TONKOTSU_num[5]), .C(n475), .Y(n477) );
  INVXL U959 ( .A(TONKOTSU_num[6]), .Y(n681) );
  NAND3XL U960 ( .A(n481), .B(TONKOTSU_SOY_num[5]), .C(n480), .Y(n482) );
  INVXL U961 ( .A(TONKOTSU_SOY_num[6]), .Y(n675) );
  NAND3XL U962 ( .A(n486), .B(MISO_SOY_num[5]), .C(n485), .Y(n487) );
  INVXL U963 ( .A(MISO_SOY_num[6]), .Y(n666) );
  INVXL U964 ( .A(noodle[3]), .Y(n643) );
  INVXL U965 ( .A(noodle[1]), .Y(n649) );
  NAND2XL U966 ( .A(n649), .B(portion_store), .Y(n644) );
  NAND2XL U967 ( .A(n644), .B(noodle[2]), .Y(n640) );
  NAND2XL U968 ( .A(n643), .B(n640), .Y(DP_OP_181J1_123_6436_n10) );
  NAND2XL U969 ( .A(C60_DATA2_4), .B(n612), .Y(n506) );
  NAND2XL U970 ( .A(C59_DATA2_5), .B(n602), .Y(n513) );
  NAND2XL U971 ( .A(C59_DATA2_3), .B(n602), .Y(n516) );
  NAND2XL U972 ( .A(C60_DATA2_3), .B(n612), .Y(n517) );
  NAND2XL U973 ( .A(C60_DATA2_2), .B(n612), .Y(n518) );
  NAND2XL U974 ( .A(C58_DATA2_5), .B(n631), .Y(n523) );
  NAND2XL U975 ( .A(C58_DATA2_3), .B(n631), .Y(n524) );
  XNOR2XL U976 ( .A(tonkotsu_soup[8]), .B(DP_OP_211J1_131_5924_n6), .Y(n532)
         );
  XNOR2XL U977 ( .A(tonkotsu_soup[9]), .B(n558), .Y(n534) );
  INVXL U978 ( .A(n575), .Y(DP_OP_241J1_141_1356_n11) );
  INVXL U979 ( .A(broth[1]), .Y(n596) );
  NAND2XL U980 ( .A(n596), .B(n719), .Y(DP_OP_194J1_126_163_n14) );
  NAND2XL U981 ( .A(n630), .B(n627), .Y(DP_OP_211J1_131_5924_n12) );
  INVXL U982 ( .A(n576), .Y(n577) );
  OR2XL U983 ( .A(n610), .B(soy_sause[0]), .Y(DP_OP_241J1_141_1356_n10) );
  OR2XL U984 ( .A(n610), .B(miso[0]), .Y(DP_OP_226J1_136_3393_n9) );
  INVXL U985 ( .A(broth[14]), .Y(n581) );
  INVXL U986 ( .A(broth[12]), .Y(n584) );
  XNOR2XL U987 ( .A(broth[12]), .B(n582), .Y(n583) );
  INVXL U988 ( .A(broth[11]), .Y(n587) );
  XNOR2XL U989 ( .A(broth[11]), .B(n585), .Y(n586) );
  INVXL U990 ( .A(broth[10]), .Y(n589) );
  XNOR2XL U991 ( .A(broth[10]), .B(DP_OP_194J1_126_163_n6), .Y(n588) );
  INVXL U992 ( .A(broth[9]), .Y(n590) );
  INVXL U993 ( .A(broth[8]), .Y(n591) );
  INVXL U994 ( .A(broth[6]), .Y(n593) );
  INVXL U995 ( .A(broth[2]), .Y(n594) );
  XNOR2XL U996 ( .A(broth[1]), .B(DP_OP_194J1_126_163_n24), .Y(n595) );
  INVXL U997 ( .A(broth[4]), .Y(n597) );
  INVXL U998 ( .A(miso[4]), .Y(n598) );
  INVXL U999 ( .A(miso[0]), .Y(n603) );
  XNOR2XL U1000 ( .A(miso[0]), .B(n610), .Y(n601) );
  INVXL U1001 ( .A(soy_sause[5]), .Y(n608) );
  INVXL U1002 ( .A(soy_sause[1]), .Y(n609) );
  XNOR2XL U1003 ( .A(soy_sause[0]), .B(n610), .Y(n611) );
  INVXL U1004 ( .A(tonkotsu_soup[12]), .Y(n617) );
  INVXL U1005 ( .A(tonkotsu_soup[11]), .Y(n620) );
  INVXL U1006 ( .A(tonkotsu_soup[10]), .Y(n623) );
  INVXL U1007 ( .A(tonkotsu_soup[7]), .Y(n624) );
  INVXL U1008 ( .A(tonkotsu_soup[6]), .Y(n625) );
  INVXL U1009 ( .A(n627), .Y(n628) );
  XNOR2XL U1010 ( .A(tonkotsu_soup[1]), .B(n628), .Y(n629) );
  INVXL U1011 ( .A(noodle[12]), .Y(n636) );
  INVXL U1012 ( .A(noodle[8]), .Y(n638) );
  INVXL U1013 ( .A(noodle[4]), .Y(n639) );
  INVXL U1014 ( .A(n640), .Y(n641) );
  XNOR2XL U1015 ( .A(noodle[3]), .B(n641), .Y(n642) );
  INVXL U1016 ( .A(noodle[2]), .Y(n646) );
  XNOR2XL U1017 ( .A(noodle[1]), .B(DP_OP_181J1_123_6436_n45), .Y(n648) );
  ADDFXL U1018 ( .A(n658), .B(n657), .CI(n656), .CO(n430), .S(n659) );
  AOI222XL U1019 ( .A0(DP_OP_241J1_122_7686_n74), .A1(n661), .B0(
        DP_OP_241J1_122_7686_n74), .B1(n660), .C0(n661), .C1(n660), .Y(
        intadd_0_CI) );
  AND2XL U1020 ( .A(can_sell_store), .B(n721), .Y(N843) );
  NAND2XL U1021 ( .A(cnt[1]), .B(cnt[0]), .Y(n683) );
  INVXL U1022 ( .A(n683), .Y(n685) );
  INVXL U1023 ( .A(cnt[2]), .Y(n684) );
  AOI221XL U1024 ( .A0(cnt[2]), .A1(n685), .B0(n684), .B1(n683), .C0(n682), 
        .Y(N77) );
  NAND2XL U1025 ( .A(MISO_SOY_num[1]), .B(n686), .Y(n687) );
  NAND2XL U1026 ( .A(MISO_SOY_num[3]), .B(n689), .Y(n690) );
  NAND2XL U1027 ( .A(MISO_num[1]), .B(n693), .Y(n694) );
  NAND2XL U1028 ( .A(MISO_num[3]), .B(n696), .Y(n697) );
  NAND2XL U1029 ( .A(TONKOTSU_SOY_num[1]), .B(n703), .Y(n704) );
  NAND2XL U1030 ( .A(TONKOTSU_SOY_num[3]), .B(n706), .Y(n707) );
  NAND2XL U1031 ( .A(TONKOTSU_num[1]), .B(n710), .Y(n711) );
  NAND2XL U1032 ( .A(TONKOTSU_num[3]), .B(n713), .Y(n714) );
endmodule

