/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Sun Sep 22 22:07:12 2024
/////////////////////////////////////////////////////////////


module BB ( clk, rst_n, in_valid, inning, half, action, out_valid, score_A, 
        score_B, result );
  input [1:0] inning;
  input [2:0] action;
  output [3:0] score_A;
  output [3:0] score_B;
  output [1:0] result;
  input clk, rst_n, in_valid, half;
  output out_valid;
  wire   next_state_1_, N144, N145, N146, N195, N196, N332, N333, N334, N335,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n1440, n1450, n1460, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n1950, n1960, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271;
  wire   [1:0] state;
  wire   [2:0] next_base;
  wire   [1:0] outs;
  wire   [3:0] next_score;

  DFFX1 next_base_reg_0_ ( .D(N144), .CK(clk), .Q(next_base[0]), .QN(n268) );
  DFFX1 next_base_reg_1_ ( .D(N145), .CK(clk), .Q(next_base[1]), .QN(n267) );
  DFFX1 outs_reg_0_ ( .D(N195), .CK(clk), .Q(outs[0]) );
  DFFX1 outs_reg_1_ ( .D(N196), .CK(clk), .Q(outs[1]), .QN(n265) );
  DFFX1 next_score_reg_0_ ( .D(N332), .CK(clk), .Q(next_score[0]), .QN(n269)
         );
  DFFX1 next_base_reg_2_ ( .D(N146), .CK(clk), .Q(next_base[2]) );
  DFFX1 next_score_reg_3_ ( .D(N335), .CK(clk), .Q(next_score[3]), .QN(n271)
         );
  DFFX1 next_score_reg_1_ ( .D(N333), .CK(clk), .Q(next_score[1]), .QN(n270)
         );
  DFFX1 next_score_reg_2_ ( .D(N334), .CK(clk), .Q(next_score[2]), .QN(n266)
         );
  DFFRHQXL score_A_reg_1_ ( .D(n122), .CK(clk), .RN(rst_n), .Q(score_A[1]) );
  DFFRHQXL score_B_reg_3_ ( .D(n118), .CK(clk), .RN(rst_n), .Q(score_B[3]) );
  DFFRHQXL score_A_reg_3_ ( .D(n116), .CK(clk), .RN(rst_n), .Q(score_A[3]) );
  DFFRHQXL score_B_reg_0_ ( .D(n121), .CK(clk), .RN(rst_n), .Q(score_B[0]) );
  DFFRHQXL score_B_reg_2_ ( .D(n119), .CK(clk), .RN(rst_n), .Q(score_B[2]) );
  DFFRHQXL score_A_reg_0_ ( .D(n123), .CK(clk), .RN(rst_n), .Q(score_A[0]) );
  DFFRHQXL score_A_reg_2_ ( .D(n117), .CK(clk), .RN(rst_n), .Q(score_A[2]) );
  DFFRHQXL state_reg_0_ ( .D(n264), .CK(clk), .RN(rst_n), .Q(state[0]) );
  DFFRHQXL state_reg_1_ ( .D(next_state_1_), .CK(clk), .RN(rst_n), .Q(state[1]) );
  DFFRHQXL score_B_reg_1_ ( .D(n120), .CK(clk), .RN(rst_n), .Q(score_B[1]) );
  NOR2XL U137 ( .A(n174), .B(n203), .Y(n175) );
  NOR2XL U138 ( .A(n179), .B(n178), .Y(n180) );
  NOR2XL U139 ( .A(next_base[0]), .B(n152), .Y(n223) );
  NOR2XL U140 ( .A(n263), .B(n242), .Y(n259) );
  NOR2XL U141 ( .A(n180), .B(n212), .Y(n182) );
  NOR2XL U142 ( .A(n266), .B(n206), .Y(n205) );
  NOR2XL U143 ( .A(outs[0]), .B(n152), .Y(n225) );
  NOR2XL U144 ( .A(score_A[0]), .B(n137), .Y(n135) );
  NOR2XL U145 ( .A(n1450), .B(n242), .Y(n253) );
  NOR2XL U146 ( .A(n228), .B(n162), .Y(n1440) );
  NOR2XL U147 ( .A(score_B[3]), .B(n257), .Y(n220) );
  NOR2XL U148 ( .A(n241), .B(n240), .Y(N146) );
  NOR2X1 U149 ( .A(n184), .B(n183), .Y(n194) );
  NOR2X1 U150 ( .A(n213), .B(n182), .Y(n187) );
  NOR2X1 U151 ( .A(n161), .B(n185), .Y(n184) );
  NOR2X1 U152 ( .A(score_B[0]), .B(n134), .Y(n133) );
  NOR2X1 U153 ( .A(n185), .B(n177), .Y(n202) );
  NOR2X1 U154 ( .A(n269), .B(n1450), .Y(n134) );
  NOR2X1 U155 ( .A(n241), .B(n227), .Y(N196) );
  NOR2X1 U156 ( .A(n269), .B(n263), .Y(n137) );
  NOR2X1 U157 ( .A(n241), .B(n231), .Y(N144) );
  NOR2X1 U158 ( .A(n141), .B(n235), .Y(n230) );
  NOR2X1 U159 ( .A(n269), .B(n163), .Y(n1950) );
  NOR2X1 U160 ( .A(in_valid), .B(n242), .Y(next_state_1_) );
  NOR2X1 U161 ( .A(state[0]), .B(state[1]), .Y(n136) );
  NOR2X1 U162 ( .A(n142), .B(action[1]), .Y(n158) );
  NAND2XL U163 ( .A(score_A[1]), .B(n250), .Y(n221) );
  NAND2XL U164 ( .A(score_A[2]), .B(n255), .Y(n216) );
  OAI22XL U165 ( .A0(n220), .A1(n130), .B0(score_A[3]), .B1(n150), .Y(n219) );
  AOI2BB2XL U166 ( .B0(n129), .B1(n216), .A0N(n255), .A1N(score_A[2]), .Y(n130) );
  OAI22XL U167 ( .A0(score_A[1]), .A1(n250), .B0(score_A[0]), .B1(n128), .Y(
        n129) );
  NAND2XL U168 ( .A(score_B[0]), .B(n221), .Y(n128) );
  OAI21XL U169 ( .A0(n199), .A1(n185), .B0(n194), .Y(n207) );
  NAND2XL U170 ( .A(n202), .B(n199), .Y(n213) );
  INVXL U171 ( .A(n193), .Y(n209) );
  OAI211XL U172 ( .A0(next_score[1]), .A1(n1950), .B0(n239), .C0(n206), .Y(
        n1960) );
  INVXL U173 ( .A(n194), .Y(n200) );
  NOR3XL U174 ( .A(n225), .B(n223), .C(n153), .Y(n233) );
  NAND2XL U175 ( .A(action[1]), .B(n228), .Y(n236) );
  NAND2XL U176 ( .A(action[0]), .B(n265), .Y(n235) );
  INVXL U177 ( .A(n232), .Y(n239) );
  NAND2XL U178 ( .A(n228), .B(n162), .Y(n232) );
  OAI22XL U179 ( .A0(action[2]), .A1(n160), .B0(n159), .B1(n236), .Y(n234) );
  NAND2XL U180 ( .A(outs[1]), .B(n158), .Y(n160) );
  INVXL U181 ( .A(n1440), .Y(n226) );
  NOR3XL U182 ( .A(outs[1]), .B(n142), .C(n228), .Y(n222) );
  INVXL U183 ( .A(n264), .Y(n241) );
  AOI21XL U184 ( .A0(n132), .A1(n125), .B0(n136), .Y(n263) );
  INVXL U185 ( .A(half), .Y(n125) );
  INVXL U186 ( .A(n1450), .Y(n254) );
  NOR2X1 U187 ( .A(n168), .B(n270), .Y(n171) );
  INVXL U188 ( .A(n197), .Y(n179) );
  NAND2XL U189 ( .A(next_base[0]), .B(n165), .Y(n178) );
  AND2XL U190 ( .A(n180), .B(n212), .Y(n181) );
  NAND2XL U191 ( .A(next_base[1]), .B(n157), .Y(n174) );
  NAND2XL U192 ( .A(next_score[0]), .B(next_base[2]), .Y(n168) );
  OAI21XL U193 ( .A0(next_base[0]), .A1(n165), .B0(n178), .Y(n177) );
  NAND2XL U194 ( .A(n162), .B(action[2]), .Y(n185) );
  NAND2XL U195 ( .A(n142), .B(n265), .Y(n159) );
  NOR2X1 U196 ( .A(action[0]), .B(action[1]), .Y(n162) );
  OR2XL U197 ( .A(n159), .B(n141), .Y(n152) );
  NAND2XL U198 ( .A(action[1]), .B(action[2]), .Y(n141) );
  NOR3XL U199 ( .A(n124), .B(n242), .C(n226), .Y(n132) );
  AOI31XL U200 ( .A0(next_base[0]), .A1(outs[0]), .A2(n142), .B0(outs[1]), .Y(
        n124) );
  NAND2XL U201 ( .A(next_score[0]), .B(score_A[0]), .Y(n246) );
  XNOR2XL U202 ( .A(n175), .B(n208), .Y(n212) );
  OAI21XL U203 ( .A0(n171), .A1(next_score[2]), .B0(n170), .Y(n208) );
  NAND2XL U204 ( .A(next_score[1]), .B(n1950), .Y(n206) );
  NOR2X1 U205 ( .A(n182), .B(n181), .Y(n215) );
  AOI21XL U206 ( .A0(n179), .A1(n178), .B0(n180), .Y(n199) );
  AOI2BB1XL U207 ( .A0N(n215), .A1N(n185), .B0(n207), .Y(n186) );
  XOR2XL U208 ( .A(n181), .B(n176), .Y(n188) );
  XOR2XL U209 ( .A(n172), .B(n173), .Y(n176) );
  MXI2XL U210 ( .A(next_score[3]), .B(n271), .S0(n170), .Y(n173) );
  OAI21XL U211 ( .A0(next_base[1]), .A1(n157), .B0(n174), .Y(n155) );
  NAND2XL U212 ( .A(n233), .B(n154), .Y(n193) );
  AOI31XL U213 ( .A0(n158), .A1(action[2]), .A2(outs[0]), .B0(n230), .Y(n154)
         );
  AND2XL U214 ( .A(n159), .B(n156), .Y(n183) );
  AOI2BB1XL U215 ( .A0N(next_score[0]), .A1N(next_base[2]), .B0(n151), .Y(n157) );
  INVXL U216 ( .A(n177), .Y(n161) );
  AND2XL U217 ( .A(n265), .B(n158), .Y(n153) );
  INVXL U218 ( .A(action[0]), .Y(n142) );
  INVXL U219 ( .A(n236), .Y(n156) );
  INVXL U220 ( .A(action[2]), .Y(n228) );
  AND2XL U221 ( .A(next_score[0]), .B(score_B[0]), .Y(n248) );
  NAND2BXL U222 ( .AN(state[1]), .B(state[0]), .Y(n242) );
  AOI31XL U223 ( .A0(half), .A1(n132), .A2(n131), .B0(n136), .Y(n1450) );
  NAND3XL U224 ( .A(inning[1]), .B(inning[0]), .C(n219), .Y(n131) );
  AND2XL U225 ( .A(out_valid), .B(n219), .Y(result[0]) );
  NOR4BXL U226 ( .AN(n221), .B(n220), .C(n219), .D(n218), .Y(result[1]) );
  OAI211XL U227 ( .A0(score_B[0]), .A1(n217), .B0(out_valid), .C0(n216), .Y(
        n218) );
  AND2XL U228 ( .A(state[0]), .B(state[1]), .Y(out_valid) );
  OAI2BB1XL U229 ( .A0N(n263), .A1N(score_A[1]), .B0(n247), .Y(n122) );
  OAI211XL U230 ( .A0(n246), .A1(n245), .B0(n259), .C0(n244), .Y(n247) );
  AOI22XL U231 ( .A0(next_score[1]), .A1(n243), .B0(score_A[1]), .B1(n270), 
        .Y(n245) );
  AOI211XL U232 ( .A0(n212), .A1(n234), .B0(n211), .C0(n210), .Y(n214) );
  AOI211XL U233 ( .A0(n266), .A1(n206), .B0(n205), .C0(n232), .Y(n211) );
  OAI2BB2XL U234 ( .B0(n209), .B1(n208), .A0N(n215), .A1N(n207), .Y(n210) );
  OAI2BB1XL U235 ( .A0N(n197), .A1N(n234), .B0(n1960), .Y(n198) );
  AOI31XL U236 ( .A0(n192), .A1(n191), .A2(n190), .B0(n241), .Y(N335) );
  OAI211XL U237 ( .A0(next_score[3]), .A1(n205), .B0(n239), .C0(n189), .Y(n190) );
  AOI22XL U238 ( .A0(n173), .A1(n193), .B0(n176), .B1(n234), .Y(n192) );
  OAI2BB2XL U239 ( .B0(n188), .B1(n187), .A0N(n186), .A1N(n188), .Y(n191) );
  AOI211XL U240 ( .A0(n239), .A1(next_base[2]), .B0(n238), .C0(n237), .Y(n240)
         );
  OAI2BB2XL U241 ( .B0(n236), .B1(n235), .A0N(n234), .A1N(next_base[0]), .Y(
        n237) );
  AOI21XL U242 ( .A0(n167), .A1(n166), .B0(n241), .Y(N332) );
  AOI211XL U243 ( .A0(n165), .A1(n234), .B0(n184), .C0(n164), .Y(n166) );
  AOI22XL U244 ( .A0(n157), .A1(n193), .B0(n161), .B1(n183), .Y(n167) );
  AOI211XL U245 ( .A0(n269), .A1(n163), .B0(n1950), .C0(n232), .Y(n164) );
  OR2XL U246 ( .A(n223), .B(n222), .Y(n224) );
  AOI211XL U247 ( .A0(outs[0]), .A1(n1440), .B0(n241), .C0(n143), .Y(N195) );
  AOI211XL U248 ( .A0(n225), .A1(n268), .B0(outs[0]), .C0(n222), .Y(n143) );
  AOI21XL U249 ( .A0(n140), .A1(n139), .B0(n241), .Y(N145) );
  AOI22XL U250 ( .A0(outs[1]), .A1(n156), .B0(n138), .B1(n142), .Y(n140) );
  AOI22XL U251 ( .A0(next_base[1]), .A1(n230), .B0(next_base[0]), .B1(n153), 
        .Y(n139) );
  AOI31XL U252 ( .A0(n267), .A1(n268), .A2(n229), .B0(action[2]), .Y(n138) );
  AOI22XL U253 ( .A0(next_base[0]), .A1(n230), .B0(n229), .B1(n228), .Y(n231)
         );
  OAI2BB2XL U254 ( .B0(n250), .B1(n254), .A0N(n253), .A1N(n249), .Y(n120) );
  AOI2BB1XL U255 ( .A0N(state[0]), .A1N(in_valid), .B0(state[1]), .Y(n264) );
  INVXL U256 ( .A(n127), .Y(n117) );
  AOI22XL U257 ( .A0(score_A[2]), .A1(n263), .B0(n259), .B1(n126), .Y(n127) );
  AOI211XL U258 ( .A0(score_A[0]), .A1(n137), .B0(n136), .C0(n135), .Y(n123)
         );
  OAI2BB2XL U259 ( .B0(n255), .B1(n254), .A0N(n253), .A1N(n252), .Y(n119) );
  AOI211XL U260 ( .A0(score_B[0]), .A1(n134), .B0(n136), .C0(n133), .Y(n121)
         );
  OAI2BB1XL U261 ( .A0N(n263), .A1N(score_A[3]), .B0(n262), .Y(n116) );
  OAI211XL U262 ( .A0(n261), .A1(n260), .B0(n259), .C0(n258), .Y(n262) );
  AOI22XL U263 ( .A0(next_score[3]), .A1(score_A[3]), .B0(n257), .B1(n271), 
        .Y(n260) );
  OAI21XL U264 ( .A0(n254), .A1(n150), .B0(n149), .Y(n118) );
  OAI211XL U265 ( .A0(n148), .A1(n147), .B0(n253), .C0(n1460), .Y(n149) );
  AOI22XL U266 ( .A0(next_score[3]), .A1(score_B[3]), .B0(n150), .B1(n271), 
        .Y(n147) );
  INVXL U267 ( .A(n168), .Y(n151) );
  INVXL U268 ( .A(n199), .Y(n201) );
  INVXL U269 ( .A(n155), .Y(n165) );
  INVXL U270 ( .A(action[1]), .Y(n229) );
  INVXL U271 ( .A(score_A[1]), .Y(n243) );
  AOI222XL U272 ( .A0(n270), .A1(n243), .B0(n270), .B1(n246), .C0(n243), .C1(
        n246), .Y(n256) );
  INVXL U273 ( .A(score_A[3]), .Y(n257) );
  INVXL U274 ( .A(score_B[1]), .Y(n250) );
  INVXL U275 ( .A(score_B[2]), .Y(n255) );
  INVXL U276 ( .A(score_B[3]), .Y(n150) );
  NAND2XL U277 ( .A(n148), .B(n147), .Y(n1460) );
  NAND3XL U278 ( .A(next_base[1]), .B(next_base[2]), .C(next_base[0]), .Y(n163) );
  NAND2XL U279 ( .A(n171), .B(next_score[2]), .Y(n170) );
  AOI21XL U280 ( .A0(n168), .A1(n270), .B0(n171), .Y(n169) );
  INVXL U281 ( .A(n169), .Y(n203) );
  NOR2BXL U282 ( .AN(n175), .B(n208), .Y(n172) );
  AOI21XL U283 ( .A0(n174), .A1(n203), .B0(n175), .Y(n197) );
  NAND2XL U284 ( .A(next_score[3]), .B(n205), .Y(n189) );
  AOI221XL U285 ( .A0(n202), .A1(n201), .B0(n200), .B1(n199), .C0(n198), .Y(
        n204) );
  AOI221XL U286 ( .A0(n209), .A1(n204), .B0(n203), .B1(n204), .C0(n241), .Y(
        N333) );
  AOI221XL U287 ( .A0(n215), .A1(n214), .B0(n213), .B1(n214), .C0(n241), .Y(
        N334) );
  INVXL U288 ( .A(score_A[0]), .Y(n217) );
  AOI222XL U289 ( .A0(n226), .A1(outs[1]), .B0(next_base[0]), .B1(n225), .C0(
        n224), .C1(outs[0]), .Y(n227) );
  AOI221XL U290 ( .A0(n268), .A1(n233), .B0(n232), .B1(n233), .C0(n267), .Y(
        n238) );
  NAND2XL U291 ( .A(n246), .B(n245), .Y(n244) );
  ADDFXL U292 ( .A(score_B[1]), .B(next_score[1]), .CI(n248), .CO(n251), .S(
        n249) );
  ADDFXL U293 ( .A(score_B[2]), .B(next_score[2]), .CI(n251), .CO(n148), .S(
        n252) );
  ADDFXL U294 ( .A(score_A[2]), .B(next_score[2]), .CI(n256), .CO(n261), .S(
        n126) );
  NAND2XL U295 ( .A(n261), .B(n260), .Y(n258) );
endmodule

