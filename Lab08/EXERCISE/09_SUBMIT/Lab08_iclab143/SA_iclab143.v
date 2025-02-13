/**************************************************************************/
// Copyright (c) 2024, OASIS Lab
// MODULE: SA
// FILE NAME: PATTERN.v
// VERSRION: 1.0
// DATE: Nov 06, 2024
// AUTHOR: Yen-Ning Tung, NYCU AIG
// CODE TYPE: RTL or Behavioral Level (Verilog)
// DESCRIPTION: 2024 Fall IC Lab / Exersise Lab08 / PATTERN
// MODIFICATION HISTORY:
// Date                 Description
// 
/**************************************************************************/
`include "GATED_OR.v"

module SA(
	// Input signals
	clk,
	rst_n,
	cg_en,
	in_valid,
	T,
	in_data,
	w_Q,
	w_K,
	w_V,
	// Output signals
	out_valid,
	out_data
);

input clk;
input rst_n;
input in_valid;
input [3:0] T;
input cg_en;
input signed [7:0] in_data;
input signed [7:0] w_Q;
input signed [7:0] w_K;
input signed [7:0] w_V;

output reg out_valid;
output reg signed [63:0] out_data;

//==============================================//
//       parameter & integer declaration        //
//==============================================//
parameter IDLE          = 0;
parameter INPUT         = 1;      
parameter OUT           = 3;   

reg [2:0] state, next_state;

reg signed [7:0] in_data_store[63:0];
reg signed [7:0] W_store[63:0];
reg signed [18:0] QKV[63:0];
reg signed [40:0] P_store[63:0];

reg signed [40:0] divide_in;
reg signed [40:0] divide_out;
reg signed [40:0] comp_out;
reg signed [40:0] comp_in;

reg [3:0] T_store;
reg [5:0] in_cnt,T_cnt;
reg [1:0] flag_qkv;

reg signed [18:0] multi_a[6:0][7:0];
reg signed [18:0] multi_b[6:0][7:0];
reg signed [40:0] multi_out[6:0];
reg signed [40:0] multi_a41[7:0];
reg signed [18:0] multi_b41[7:0];
reg signed [63:0] multi_out41;
reg signed [63:0] out_data_store;
reg signed [63:0] out_data_store1;
reg [6:0] A_cnt,B_cnt,out_cnt;

reg clk_gated_P[63:0];
reg clk_gated[5:0];


integer i,j;
////////////////////////////////////////////////////////
// GATED_OR gated_or_inst (
//     .CLOCK(clk),
//     .SLEEP_CTRL(sleep_ctrl),
//     .RST_N(rst_n),
//     .CLOCK_GATED(clk_gated)
// );

//load讓所有訊號統一，
//state,cnt
GATED_OR GATED_1 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (!cg_en)), .RST_N(rst_n), .CLOCK_GATED(clk_gated[0]));

//INPUT
GATED_OR GATED_2 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (flag_qkv!=0)), .RST_N(rst_n), .CLOCK_GATED(clk_gated[1]));
//W_store
GATED_OR GATED_3 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (state==OUT)), .RST_N(rst_n), .CLOCK_GATED(clk_gated[2]));
//QKV
GATED_OR GATED_4 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1&&in_cnt>=0&&in_cnt<=8)||(flag_qkv==2&&in_cnt>=57)||(flag_qkv==3&&A_cnt<=2)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated[3]));
GATED_OR GATED_5 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1&&in_cnt>=0&&in_cnt<=8)||(flag_qkv==2&&in_cnt>=57)||(flag_qkv==3&&A_cnt<=2)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated[4]));
GATED_OR GATED_6 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1&&in_cnt>=0&&in_cnt<=8)||(flag_qkv==2&&in_cnt>=57)||(flag_qkv==3&&A_cnt<=2)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated[5]));
//P_store
// GATED_OR GATED_7 (.CLOCK(clk), .SLEEP_CTRL(cg_en && ~((flag_qkv==1&&in_cnt==57)||(flag_qkv==2&&A_cnt>=1&&A_cnt<=3))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[0]));
// GATED_OR GATED_8 (.CLOCK(clk), .SLEEP_CTRL(cg_en && ~((flag_qkv==1&&in_cnt==58)||(flag_qkv==2&&A_cnt>=2&&A_cnt<=4))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[1]));
// GATED_OR GATED_9 (.CLOCK(clk), .SLEEP_CTRL(cg_en && ~((flag_qkv==1&&in_cnt==59)||(flag_qkv==2&&A_cnt>=3&&A_cnt<=5))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[2]));
// GATED_OR GATED_10 (.CLOCK(clk), .SLEEP_CTRL(0), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[3]));
// GATED_OR GATED_11 (.CLOCK(clk), .SLEEP_CTRL(0), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[4]));
// GATED_OR GATED_12 (.CLOCK(clk), .SLEEP_CTRL(0), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[5]));

GATED_OR GATED_7 (.CLOCK(clk), .SLEEP_CTRL(cg_en &&  (~((flag_qkv==1 &&  in_cnt ==57) || (flag_qkv==2 && (in_cnt==1 || in_cnt==2))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[0]));
GATED_OR GATED_8 (.CLOCK(clk), .SLEEP_CTRL(cg_en &&  (~((flag_qkv==1 &&  in_cnt ==57) || (flag_qkv==2 && (in_cnt==2 || in_cnt==3))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[1]));
GATED_OR GATED_9 (.CLOCK(clk), .SLEEP_CTRL(cg_en &&  (~((flag_qkv==1 &&  in_cnt ==57) || (flag_qkv==2 && (in_cnt==3 || in_cnt==4))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[2]));
GATED_OR GATED_10 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==57) || (flag_qkv==2 && (in_cnt==4 || in_cnt==5 ))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[3]));
GATED_OR GATED_11 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==57) || (flag_qkv==2 && (in_cnt==5 || in_cnt==6 ))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[4]));
GATED_OR GATED_12 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==57) || (flag_qkv==2 && (in_cnt==6 || in_cnt==7 ))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[5]));
GATED_OR GATED_13 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==57) || (flag_qkv==2 && (in_cnt==7 || in_cnt==8 ))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[6]));
GATED_OR GATED_14 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==57) || (flag_qkv==2 && (in_cnt==8 || in_cnt==9 ))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[7]));

GATED_OR GATED_15 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==1)) ||(flag_qkv==2 && (in_cnt==10))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[8]));
GATED_OR GATED_16 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==2)) ||(flag_qkv==2 && (in_cnt==11))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[9]));
GATED_OR GATED_17 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==3)) ||(flag_qkv==2 && (in_cnt==12))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[10]));
GATED_OR GATED_18 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==4))  ||(flag_qkv==2 &&(in_cnt==13))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[11]));
GATED_OR GATED_19 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==5))  ||(flag_qkv==2 &&(in_cnt==14))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[12]));
GATED_OR GATED_20 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==6))  ||(flag_qkv==2 &&(in_cnt==15))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[13]));
GATED_OR GATED_21 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==7))  ||(flag_qkv==2 &&(in_cnt==16))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[14]));
GATED_OR GATED_22 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==58) || (flag_qkv==2 &&(in_cnt==8))  ||(flag_qkv==2 &&(in_cnt==17))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[15]));

GATED_OR GATED_23 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==1)) || (flag_qkv==2 && (in_cnt==18))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[16]));
GATED_OR GATED_24 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==2)) || (flag_qkv==2 && (in_cnt==19))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[17]));
GATED_OR GATED_25 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==3)) || (flag_qkv==2 && (in_cnt==20))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[18]));
GATED_OR GATED_26 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==4)) || (flag_qkv==2 && (in_cnt==21))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[19]));
GATED_OR GATED_27 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==5)) || (flag_qkv==2 && (in_cnt==22))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[20]));
GATED_OR GATED_28 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==6)) || (flag_qkv==2 && (in_cnt==23))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[21]));
GATED_OR GATED_29 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==7)) || (flag_qkv==2 && (in_cnt==24))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[22]));
GATED_OR GATED_30 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==59)|| (flag_qkv==2 &&(in_cnt==8)) || (flag_qkv==2 && (in_cnt==25))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[23]));

GATED_OR GATED_31 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==1)) || (flag_qkv==2 && in_cnt==26)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[24]));
GATED_OR GATED_32 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==2)) || (flag_qkv==2 && in_cnt==27)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[25]));
GATED_OR GATED_33 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==3)) || (flag_qkv==2 && in_cnt==28)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[26]));
GATED_OR GATED_34 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==4))  || (flag_qkv==2 &&in_cnt==29)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[27]));
GATED_OR GATED_35 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==5))  || (flag_qkv==2 &&in_cnt==30)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[28]));
GATED_OR GATED_36 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==6))  || (flag_qkv==2 &&in_cnt==31)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[29]));
GATED_OR GATED_37 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==7))  || (flag_qkv==2 &&in_cnt==32)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[30]));
GATED_OR GATED_38 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==60)|| (flag_qkv==2 &&(in_cnt==8))  || (flag_qkv==2 &&in_cnt==33)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[31]));

GATED_OR GATED_39 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==1)) || (flag_qkv==2 && (in_cnt==34))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[32]));
GATED_OR GATED_40 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==2)) || (flag_qkv==2 && (in_cnt==35))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[33]));
GATED_OR GATED_41 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==3)) || (flag_qkv==2 && (in_cnt==36))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[34]));
GATED_OR GATED_42 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==4))  || (flag_qkv==2 && (in_cnt==37))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[35]));
GATED_OR GATED_43 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==5))  || (flag_qkv==2 && (in_cnt==38))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[36]));
GATED_OR GATED_44 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==6))  || (flag_qkv==2 && (in_cnt==39))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[37]));
GATED_OR GATED_45 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==7))  || (flag_qkv==2 && (in_cnt==40))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[38]));
GATED_OR GATED_46 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==61)|| (flag_qkv==2 &&(in_cnt==8))  || (flag_qkv==2 && (in_cnt==41))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[39]));

GATED_OR GATED_47 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==1)) || (flag_qkv==2 && (in_cnt==42))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[40]));
GATED_OR GATED_48 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==2)) || (flag_qkv==2 && (in_cnt==43))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[41]));
GATED_OR GATED_49 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==3)) || (flag_qkv==2 && (in_cnt==44))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[42]));
GATED_OR GATED_50 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==4)) || (flag_qkv==2 && (in_cnt==45))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[43]));
GATED_OR GATED_51 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==5)) || (flag_qkv==2 && (in_cnt==46))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[44]));
GATED_OR GATED_52 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==6)) || (flag_qkv==2 && (in_cnt==47))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[45]));
GATED_OR GATED_53 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==7)) || (flag_qkv==2 && (in_cnt==48))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[46]));
GATED_OR GATED_54 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==62)|| (flag_qkv==2 &&(in_cnt==8)) || (flag_qkv==2 && (in_cnt==49))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[47]));

GATED_OR GATED_55 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==1)) || (flag_qkv==2 && (in_cnt==50))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[48]));
GATED_OR GATED_56 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==2)) || (flag_qkv==2 && (in_cnt==51))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[49]));
GATED_OR GATED_57 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==3)) || (flag_qkv==2 && (in_cnt==52))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[50]));
GATED_OR GATED_58 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==4)) || (flag_qkv==2 && (in_cnt==53))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[51]));
GATED_OR GATED_59 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==5)) || (flag_qkv==2 && (in_cnt==54))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[52]));
GATED_OR GATED_60 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==6)) || (flag_qkv==2 && (in_cnt==55))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[53]));
GATED_OR GATED_61 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==7)) || (flag_qkv==2 && (in_cnt==56))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[54]));
GATED_OR GATED_62 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==1 && in_cnt ==63) ||(flag_qkv==2 &&(in_cnt==8)) || (flag_qkv==2 && (in_cnt==57))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[55]));

GATED_OR GATED_63 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==1)) || (flag_qkv==2 && (in_cnt==58))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[56]));
GATED_OR GATED_64 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==2)) || (flag_qkv==2 && (in_cnt==59))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[57]));
GATED_OR GATED_65 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==3)) || (flag_qkv==2 && (in_cnt==60))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[58]));
GATED_OR GATED_66 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==4)) || (flag_qkv==2 && (in_cnt==61))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[59]));
GATED_OR GATED_67 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==5)) || (flag_qkv==2 && (in_cnt==62))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[60]));
GATED_OR GATED_68 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==6)) || (flag_qkv==2 && (in_cnt==63))))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[61]));
GATED_OR GATED_69 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==7)) || (flag_qkv==3 && A_cnt==1)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[62]));
GATED_OR GATED_70 (.CLOCK(clk), .SLEEP_CTRL(cg_en && (~((flag_qkv==2 && in_cnt==0) || (flag_qkv==2 &&(in_cnt==8)) || (flag_qkv==3 && A_cnt==2)))), .RST_N(rst_n), .CLOCK_GATED(clk_gated_P[63]));




// always @(*) begin
// 	if(cg_en)begin
// 		new_clk=clk_gated;
// 	end else begin
// 		new_clk=clk;
// 	end
// end

// always @(*) begin
// 	if(flag_qkv!=0)begin
// 		sleep_ctrl=1;
// 	end else begin
// 		sleep_ctrl=0;
// 	end
// end

always @(posedge clk_gated[0] or negedge rst_n) begin
    if (!rst_n)
        T_cnt <= 7;
    else if(in_valid&&in_cnt==0&&flag_qkv==0)begin
		if(T==1)
			T_cnt <= 7;
		else if(T==4)
			T_cnt <= 31;
		else 
			T_cnt <= 63;
	end
end



///////////////////////////FSM//////////////////////////
always @(posedge clk_gated[0] or negedge rst_n) begin
    if (!rst_n)
        state <= IDLE;
    else
        state <= next_state;
end

always @(*) begin
    case (state)
        IDLE: begin
            if (in_valid) 
                next_state = INPUT;
            else 
                next_state = state;
        end
        
        INPUT: begin
            if (!in_valid) 
                next_state = OUT;
            else 
                next_state = state;
        end

        OUT:begin
			if(T_store==1)begin
				if(out_cnt==7)
					next_state = IDLE;
				else
					next_state = state;
			end else if(T_store==4)begin
				if(out_cnt==31)
					next_state = IDLE;
				else
					next_state = state;
			end else if(T_store==8)begin
				if(out_cnt==63)
					next_state = IDLE;
				else
					next_state = state;
			end else begin
				next_state = IDLE;
			end
		end
		default:begin
			next_state = IDLE;
		end
	endcase
end

always @(*) begin
	divide_out=divide_in/3;
end

always @(*) begin
	if(divide_out>=0)begin
		comp_out=divide_out;
	end else begin
		comp_out=0;
	end
end

//////MULTI OUT//////
always @(*) begin
    multi_out[0] = multi_a[0][0] * multi_b[0][0] + 
                   multi_a[0][1] * multi_b[0][1] + 
                   multi_a[0][2] * multi_b[0][2] + 
                   multi_a[0][3] * multi_b[0][3] + 
                   multi_a[0][4] * multi_b[0][4] + 
                   multi_a[0][5] * multi_b[0][5] + 
                   multi_a[0][6] * multi_b[0][6] + 
                   multi_a[0][7] * multi_b[0][7];

    multi_out[1] = multi_a[1][0] * multi_b[1][0] + 
                   multi_a[1][1] * multi_b[1][1] + 
                   multi_a[1][2] * multi_b[1][2] + 
                   multi_a[1][3] * multi_b[1][3] + 
                   multi_a[1][4] * multi_b[1][4] + 
                   multi_a[1][5] * multi_b[1][5] + 
                   multi_a[1][6] * multi_b[1][6] + 
                   multi_a[1][7] * multi_b[1][7];

    multi_out[2] = multi_a[2][0] * multi_b[2][0] + 
                   multi_a[2][1] * multi_b[2][1] + 
                   multi_a[2][2] * multi_b[2][2] + 
                   multi_a[2][3] * multi_b[2][3] + 
                   multi_a[2][4] * multi_b[2][4] + 
                   multi_a[2][5] * multi_b[2][5] + 
                   multi_a[2][6] * multi_b[2][6] + 
                   multi_a[2][7] * multi_b[2][7];

    multi_out[3] = multi_a[3][0] * multi_b[3][0] + 
                   multi_a[3][1] * multi_b[3][1] + 
                   multi_a[3][2] * multi_b[3][2] + 
                   multi_a[3][3] * multi_b[3][3] + 
                   multi_a[3][4] * multi_b[3][4] + 
                   multi_a[3][5] * multi_b[3][5] + 
                   multi_a[3][6] * multi_b[3][6] + 
                   multi_a[3][7] * multi_b[3][7];

    multi_out[4] = multi_a[4][0] * multi_b[4][0] + 
                   multi_a[4][1] * multi_b[4][1] + 
                   multi_a[4][2] * multi_b[4][2] + 
                   multi_a[4][3] * multi_b[4][3] + 
                   multi_a[4][4] * multi_b[4][4] + 
                   multi_a[4][5] * multi_b[4][5] + 
                   multi_a[4][6] * multi_b[4][6] + 
                   multi_a[4][7] * multi_b[4][7];

    multi_out[5] = multi_a[5][0] * multi_b[5][0] + 
                   multi_a[5][1] * multi_b[5][1] + 
                   multi_a[5][2] * multi_b[5][2] + 
                   multi_a[5][3] * multi_b[5][3] + 
                   multi_a[5][4] * multi_b[5][4] + 
                   multi_a[5][5] * multi_b[5][5] + 
                   multi_a[5][6] * multi_b[5][6] + 
                   multi_a[5][7] * multi_b[5][7];

    multi_out[6] = multi_a[6][0] * multi_b[6][0] + 
                   multi_a[6][1] * multi_b[6][1] + 
                   multi_a[6][2] * multi_b[6][2] + 
                   multi_a[6][3] * multi_b[6][3] + 
                   multi_a[6][4] * multi_b[6][4] + 
                   multi_a[6][5] * multi_b[6][5] + 
                   multi_a[6][6] * multi_b[6][6] + 
                   multi_a[6][7] * multi_b[6][7];

    multi_out41 =   multi_a41[0] * multi_b41[0] + 
                    multi_a41[1] * multi_b41[1] + 
                    multi_a41[2] * multi_b41[2] + 
                    multi_a41[3] * multi_b41[3] + 
                    multi_a41[4] * multi_b41[4] + 
                    multi_a41[5] * multi_b41[5] + 
                    multi_a41[6] * multi_b41[6] + 
                    multi_a41[7] * multi_b41[7];
end


//==============================================//
//           reg & wire declaration             //
//==============================================//
/////INPUT/////
always @(negedge rst_n or posedge clk_gated[1]) begin
	if(!rst_n)begin
		for(i=0;i<64;i=i+1)
			in_data_store[i]<=0;
	end else if(in_valid&&flag_qkv==0)begin
		if(in_cnt<=T_cnt)begin
			in_data_store[in_cnt]<=in_data;
		end else begin
			in_data_store[in_cnt]<=0;
		end
	end
end

always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		T_store<=0;
	end else if(in_valid&&in_cnt==0&&flag_qkv==0)
		T_store<=T;
end

always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		flag_qkv<=0;
	end else if(state==IDLE)
		flag_qkv<=0;
	else if(in_cnt==63)begin
		flag_qkv<=flag_qkv+1;
	end
end

always @(negedge rst_n or  posedge clk_gated[0]) begin
	if(!rst_n)begin
		in_cnt<=0;
	end else if(next_state==INPUT||state==INPUT)begin
		in_cnt<=in_cnt+1;
	end else begin
		in_cnt<=0;
	end
end

always @(negedge rst_n or posedge clk_gated[2]) begin
	if(!rst_n)begin
		for(i=0;i<64;i=i+1)
			W_store[i]<=0;
	end else if(state==INPUT||in_valid)begin
		if(flag_qkv==0)
			W_store[in_cnt]<=w_Q;
		else if(flag_qkv==1)begin
			W_store[in_cnt]<=w_K;
		end else if(flag_qkv==2)begin
			W_store[in_cnt]<=w_V;
		end
	end
end

always @(*) begin
	if((flag_qkv==2&&in_cnt>=2))begin
		divide_in=P_store[B_cnt];
	end else if((flag_qkv==3&&A_cnt<=3)) begin
		divide_in=P_store[B_cnt];
	end else begin
		divide_in=0;
	end
end

always @(*) begin
	if(state==INPUT)begin
		if(flag_qkv==1)begin
			multi_a[0][0] = in_data_store[0];
			multi_a[0][1] = in_data_store[1];
			multi_a[0][2] = in_data_store[2];
			multi_a[0][3] = in_data_store[3];
			multi_a[0][4] = in_data_store[4];
			multi_a[0][5] = in_data_store[5];
			multi_a[0][6] = in_data_store[6];
			multi_a[0][7] = in_data_store[7];
			multi_a[1][0] = in_data_store[8];
			multi_a[1][1] = in_data_store[9];
			multi_a[1][2] = in_data_store[10];
			multi_a[1][3] = in_data_store[11];
			multi_a[1][4] = in_data_store[12];
			multi_a[1][5] = in_data_store[13];
			multi_a[1][6] = in_data_store[14];
			multi_a[1][7] = in_data_store[15];
			multi_a[2][0] = in_data_store[16];
			multi_a[2][1] = in_data_store[17];
			multi_a[2][2] = in_data_store[18];
			multi_a[2][3] = in_data_store[19];
			multi_a[2][4] = in_data_store[20];
			multi_a[2][5] = in_data_store[21];
			multi_a[2][6] = in_data_store[22];
			multi_a[2][7] = in_data_store[23];
			multi_a[3][0] = in_data_store[24];
			multi_a[3][1] = in_data_store[25];
			multi_a[3][2] = in_data_store[26];
			multi_a[3][3] = in_data_store[27];
			multi_a[3][4] = in_data_store[28];
			multi_a[3][5] = in_data_store[29];
			multi_a[3][6] = in_data_store[30];
			multi_a[3][7] = in_data_store[31];
			multi_a[4][0] = in_data_store[32];
			multi_a[4][1] = in_data_store[33];
			multi_a[4][2] = in_data_store[34];
			multi_a[4][3] = in_data_store[35];
			multi_a[4][4] = in_data_store[36];
			multi_a[4][5] = in_data_store[37];
			multi_a[4][6] = in_data_store[38];
			multi_a[4][7] = in_data_store[39];
			multi_a[5][0] = in_data_store[40];
			multi_a[5][1] = in_data_store[41];
			multi_a[5][2] = in_data_store[42];
			multi_a[5][3] = in_data_store[43];
			multi_a[5][4] = in_data_store[44];
			multi_a[5][5] = in_data_store[45];
			multi_a[5][6] = in_data_store[46];
			multi_a[5][7] = in_data_store[47];
			multi_a[6][0] = in_data_store[48];
			multi_a[6][1] = in_data_store[49];
			multi_a[6][2] = in_data_store[50];
			multi_a[6][3] = in_data_store[51];
			multi_a[6][4] = in_data_store[52];
			multi_a[6][5] = in_data_store[53];
			multi_a[6][6] = in_data_store[54];
			multi_a[6][7] = in_data_store[55];
			multi_a41[0] = in_data_store[56];
			multi_a41[1] = in_data_store[57];
			multi_a41[2] = in_data_store[58];
			multi_a41[3] = in_data_store[59];
			multi_a41[4] = in_data_store[60];
			multi_a41[5] = in_data_store[61];
			multi_a41[6] = in_data_store[62];
			multi_a41[7] = in_data_store[63]; 
		end else if(flag_qkv==2)begin
			if(in_cnt==0||(in_cnt>=57&&in_cnt<=62))begin
				multi_a[0][0] = in_data_store[0];
				multi_a[0][1] = in_data_store[1];
				multi_a[0][2] = in_data_store[2];
				multi_a[0][3] = in_data_store[3];
				multi_a[0][4] = in_data_store[4];
				multi_a[0][5] = in_data_store[5];
				multi_a[0][6] = in_data_store[6];
				multi_a[0][7] = in_data_store[7];
				multi_a[1][0] = in_data_store[8];
				multi_a[1][1] = in_data_store[9];
				multi_a[1][2] = in_data_store[10];
				multi_a[1][3] = in_data_store[11];
				multi_a[1][4] = in_data_store[12];
				multi_a[1][5] = in_data_store[13];
				multi_a[1][6] = in_data_store[14];
				multi_a[1][7] = in_data_store[15];
				multi_a[2][0] = in_data_store[16];
				multi_a[2][1] = in_data_store[17];
				multi_a[2][2] = in_data_store[18];
				multi_a[2][3] = in_data_store[19];
				multi_a[2][4] = in_data_store[20];
				multi_a[2][5] = in_data_store[21];
				multi_a[2][6] = in_data_store[22];
				multi_a[2][7] = in_data_store[23];
				multi_a[3][0] = in_data_store[24];
				multi_a[3][1] = in_data_store[25];
				multi_a[3][2] = in_data_store[26];
				multi_a[3][3] = in_data_store[27];
				multi_a[3][4] = in_data_store[28];
				multi_a[3][5] = in_data_store[29];
				multi_a[3][6] = in_data_store[30];
				multi_a[3][7] = in_data_store[31];
				multi_a[4][0] = in_data_store[32];
				multi_a[4][1] = in_data_store[33];
				multi_a[4][2] = in_data_store[34];
				multi_a[4][3] = in_data_store[35];
				multi_a[4][4] = in_data_store[36];
				multi_a[4][5] = in_data_store[37];
				multi_a[4][6] = in_data_store[38];
				multi_a[4][7] = in_data_store[39];
				multi_a[5][0] = in_data_store[40];
				multi_a[5][1] = in_data_store[41];
				multi_a[5][2] = in_data_store[42];
				multi_a[5][3] = in_data_store[43];
				multi_a[5][4] = in_data_store[44];
				multi_a[5][5] = in_data_store[45];
				multi_a[5][6] = in_data_store[46];
				multi_a[5][7] = in_data_store[47];
				multi_a[6][0] = in_data_store[48];
				multi_a[6][1] = in_data_store[49];
				multi_a[6][2] = in_data_store[50];
				multi_a[6][3] = in_data_store[51];
				multi_a[6][4] = in_data_store[52];
				multi_a[6][5] = in_data_store[53];
				multi_a[6][6] = in_data_store[54];
				multi_a[6][7] = in_data_store[55];
				multi_a41[0] = in_data_store[56];
				multi_a41[1] = in_data_store[57];
				multi_a41[2] = in_data_store[58];
				multi_a41[3] = in_data_store[59];
				multi_a41[4] = in_data_store[60];
				multi_a41[5] = in_data_store[61];
				multi_a41[6] = in_data_store[62];
				multi_a41[7] = in_data_store[63]; 
			end else if (in_cnt>=1&&in_cnt<=8) begin
				multi_a[0][0] = QKV[0];
				multi_a[0][1] = QKV[1];
				multi_a[0][2] = QKV[2];
				multi_a[0][3] = QKV[3];
				multi_a[0][4] = QKV[4];
				multi_a[0][5] = QKV[5];
				multi_a[0][6] = QKV[6];
				multi_a[0][7] = QKV[7];
				multi_a[1][0] = QKV[8];
				multi_a[1][1] = QKV[9];
				multi_a[1][2] = QKV[10];
				multi_a[1][3] = QKV[11];
				multi_a[1][4] = QKV[12];
				multi_a[1][5] = QKV[13];
				multi_a[1][6] = QKV[14];
				multi_a[1][7] = QKV[15];
				multi_a[2][0] = QKV[16];
				multi_a[2][1] = QKV[17];
				multi_a[2][2] = QKV[18];
				multi_a[2][3] = QKV[19];
				multi_a[2][4] = QKV[20];
				multi_a[2][5] = QKV[21];
				multi_a[2][6] = QKV[22];
				multi_a[2][7] = QKV[23];
				multi_a[3][0] = QKV[24];
				multi_a[3][1] = QKV[25];
				multi_a[3][2] = QKV[26];
				multi_a[3][3] = QKV[27];
				multi_a[3][4] = QKV[28];
				multi_a[3][5] = QKV[29];
				multi_a[3][6] = QKV[30];
				multi_a[3][7] = QKV[31];
				multi_a[4][0] = QKV[32];
				multi_a[4][1] = QKV[33];
				multi_a[4][2] = QKV[34];
				multi_a[4][3] = QKV[35];
				multi_a[4][4] = QKV[36];
				multi_a[4][5] = QKV[37];
				multi_a[4][6] = QKV[38];
				multi_a[4][7] = QKV[39];
				multi_a[5][0] = QKV[40];
				multi_a[5][1] = QKV[41];
				multi_a[5][2] = QKV[42];
				multi_a[5][3] = QKV[43];
				multi_a[5][4] = QKV[44];
				multi_a[5][5] = QKV[45];
				multi_a[5][6] = QKV[46];
				multi_a[5][7] = QKV[47];
				multi_a[6][0] = QKV[48];
				multi_a[6][1] = QKV[49];
				multi_a[6][2] = QKV[50];
				multi_a[6][3] = QKV[51];
				multi_a[6][4] = QKV[52];
				multi_a[6][5] = QKV[53];
				multi_a[6][6] = QKV[54];
				multi_a[6][7] = QKV[55];
				multi_a41[0] = QKV[56];
				multi_a41[1] = QKV[57];
				multi_a41[2] = QKV[58];
				multi_a41[3] = QKV[59];
				multi_a41[4] = QKV[60];
				multi_a41[5] = QKV[61];
				multi_a41[6] = QKV[62];
				multi_a41[7] = QKV[63]; 
			end else if(in_cnt==63)begin
				multi_a[0][0] = in_data_store[0];
				multi_a[0][1] = in_data_store[1];
				multi_a[0][2] = in_data_store[2];
				multi_a[0][3] = in_data_store[3];
				multi_a[0][4] = in_data_store[4];
				multi_a[0][5] = in_data_store[5];
				multi_a[0][6] = in_data_store[6];
				multi_a[0][7] = in_data_store[7];
				multi_a[1][0] = in_data_store[8];
				multi_a[1][1] = in_data_store[9];
				multi_a[1][2] = in_data_store[10];
				multi_a[1][3] = in_data_store[11];
				multi_a[1][4] = in_data_store[12];
				multi_a[1][5] = in_data_store[13];
				multi_a[1][6] = in_data_store[14];
				multi_a[1][7] = in_data_store[15];
				multi_a[2][0] = in_data_store[16];
				multi_a[2][1] = in_data_store[17];
				multi_a[2][2] = in_data_store[18];
				multi_a[2][3] = in_data_store[19];
				multi_a[2][4] = in_data_store[20];
				multi_a[2][5] = in_data_store[21];
				multi_a[2][6] = in_data_store[22];
				multi_a[2][7] = in_data_store[23];
				multi_a[3][0] = in_data_store[24];
				multi_a[3][1] = in_data_store[25];
				multi_a[3][2] = in_data_store[26];
				multi_a[3][3] = in_data_store[27];
				multi_a[3][4] = in_data_store[28];
				multi_a[3][5] = in_data_store[29];
				multi_a[3][6] = in_data_store[30];
				multi_a[3][7] = in_data_store[31];
				multi_a[4][0] = in_data_store[32];
				multi_a[4][1] = in_data_store[33];
				multi_a[4][2] = in_data_store[34];
				multi_a[4][3] = in_data_store[35];
				multi_a[4][4] = in_data_store[36];
				multi_a[4][5] = in_data_store[37];
				multi_a[4][6] = in_data_store[38];
				multi_a[4][7] = in_data_store[39];
				multi_a[5][0] = in_data_store[40];
				multi_a[5][1] = in_data_store[41];
				multi_a[5][2] = in_data_store[42];
				multi_a[5][3] = in_data_store[43];
				multi_a[5][4] = in_data_store[44];
				multi_a[5][5] = in_data_store[45];
				multi_a[5][6] = in_data_store[46];
				multi_a[5][7] = in_data_store[47];
				multi_a[6][0] = in_data_store[48];
				multi_a[6][1] = in_data_store[49];
				multi_a[6][2] = in_data_store[50];
				multi_a[6][3] = in_data_store[51];
				multi_a[6][4] = in_data_store[52];
				multi_a[6][5] = in_data_store[53];
				multi_a[6][6] = in_data_store[54];
				multi_a[6][7] = in_data_store[55];
				multi_a41[0] = P_store[0];
				multi_a41[1] = P_store[1];
				multi_a41[2] = P_store[2];
				multi_a41[3] = P_store[3];
				multi_a41[4] = P_store[4];
				multi_a41[5] = P_store[5];
				multi_a41[6] = P_store[6];
				multi_a41[7] = P_store[7]; 
			end else begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
						multi_a41[j]=0;
					end
				end
			end
		end else if(flag_qkv==3)begin
			multi_a[0][0] = in_data_store[0];
			multi_a[0][1] = in_data_store[1];
			multi_a[0][2] = in_data_store[2];
			multi_a[0][3] = in_data_store[3];
			multi_a[0][4] = in_data_store[4];
			multi_a[0][5] = in_data_store[5];
			multi_a[0][6] = in_data_store[6];
			multi_a[0][7] = in_data_store[7];
			multi_a[1][0] = in_data_store[8];
			multi_a[1][1] = in_data_store[9];
			multi_a[1][2] = in_data_store[10];
			multi_a[1][3] = in_data_store[11];
			multi_a[1][4] = in_data_store[12];
			multi_a[1][5] = in_data_store[13];
			multi_a[1][6] = in_data_store[14];
			multi_a[1][7] = in_data_store[15];
			multi_a[2][0] = in_data_store[16];
			multi_a[2][1] = in_data_store[17];
			multi_a[2][2] = in_data_store[18];
			multi_a[2][3] = in_data_store[19];
			multi_a[2][4] = in_data_store[20];
			multi_a[2][5] = in_data_store[21];
			multi_a[2][6] = in_data_store[22];
			multi_a[2][7] = in_data_store[23];
			multi_a[3][0] = in_data_store[24];
			multi_a[3][1] = in_data_store[25];
			multi_a[3][2] = in_data_store[26];
			multi_a[3][3] = in_data_store[27];
			multi_a[3][4] = in_data_store[28];
			multi_a[3][5] = in_data_store[29];
			multi_a[3][6] = in_data_store[30];
			multi_a[3][7] = in_data_store[31];
			multi_a[4][0] = in_data_store[32];
			multi_a[4][1] = in_data_store[33];
			multi_a[4][2] = in_data_store[34];
			multi_a[4][3] = in_data_store[35];
			multi_a[4][4] = in_data_store[36];
			multi_a[4][5] = in_data_store[37];
			multi_a[4][6] = in_data_store[38];
			multi_a[4][7] = in_data_store[39];
			multi_a[5][0] = in_data_store[40];
			multi_a[5][1] = in_data_store[41];
			multi_a[5][2] = in_data_store[42];
			multi_a[5][3] = in_data_store[43];
			multi_a[5][4] = in_data_store[44];
			multi_a[5][5] = in_data_store[45];
			multi_a[5][6] = in_data_store[46];
			multi_a[5][7] = in_data_store[47];
			multi_a[6][0] = in_data_store[48];
			multi_a[6][1] = in_data_store[49];
			multi_a[6][2] = in_data_store[50];
			multi_a[6][3] = in_data_store[51];
			multi_a[6][4] = in_data_store[52];
			multi_a[6][5] = in_data_store[53];
			multi_a[6][6] = in_data_store[54];
			multi_a[6][7] = in_data_store[55];
			multi_a41[0] = P_store[0];
			multi_a41[1] = P_store[1];
			multi_a41[2] = P_store[2];
			multi_a41[3] = P_store[3];
			multi_a41[4] = P_store[4];
			multi_a41[5] = P_store[5];
			multi_a41[6] = P_store[6];
			multi_a41[7] = P_store[7]; 
		end else begin
			for(i=0;i<7;i=i+1)begin
				for(j=0;j<8;j=j+1)begin
					multi_a[i][j]=0;
					multi_a41[j]=0;
				end
			end
		end
	end else if(state==OUT)begin
		case(A_cnt)
			0,1:begin
				multi_a[0][0] = in_data_store[0];
				multi_a[0][1] = in_data_store[1];
				multi_a[0][2] = in_data_store[2];
				multi_a[0][3] = in_data_store[3];
				multi_a[0][4] = in_data_store[4];
				multi_a[0][5] = in_data_store[5];
				multi_a[0][6] = in_data_store[6];
				multi_a[0][7] = in_data_store[7];
				multi_a[1][0] = in_data_store[8];
				multi_a[1][1] = in_data_store[9];
				multi_a[1][2] = in_data_store[10];
				multi_a[1][3] = in_data_store[11];
				multi_a[1][4] = in_data_store[12];
				multi_a[1][5] = in_data_store[13];
				multi_a[1][6] = in_data_store[14];
				multi_a[1][7] = in_data_store[15];
				multi_a[2][0] = in_data_store[16];
				multi_a[2][1] = in_data_store[17];
				multi_a[2][2] = in_data_store[18];
				multi_a[2][3] = in_data_store[19];
				multi_a[2][4] = in_data_store[20];
				multi_a[2][5] = in_data_store[21];
				multi_a[2][6] = in_data_store[22];
				multi_a[2][7] = in_data_store[23];
				multi_a[3][0] = in_data_store[24];
				multi_a[3][1] = in_data_store[25];
				multi_a[3][2] = in_data_store[26];
				multi_a[3][3] = in_data_store[27];
				multi_a[3][4] = in_data_store[28];
				multi_a[3][5] = in_data_store[29];
				multi_a[3][6] = in_data_store[30];
				multi_a[3][7] = in_data_store[31];
				multi_a[4][0] = in_data_store[32];
				multi_a[4][1] = in_data_store[33];
				multi_a[4][2] = in_data_store[34];
				multi_a[4][3] = in_data_store[35];
				multi_a[4][4] = in_data_store[36];
				multi_a[4][5] = in_data_store[37];
				multi_a[4][6] = in_data_store[38];
				multi_a[4][7] = in_data_store[39];
				multi_a[5][0] = in_data_store[40];
				multi_a[5][1] = in_data_store[41];
				multi_a[5][2] = in_data_store[42];
				multi_a[5][3] = in_data_store[43];
				multi_a[5][4] = in_data_store[44];
				multi_a[5][5] = in_data_store[45];
				multi_a[5][6] = in_data_store[46];
				multi_a[5][7] = in_data_store[47];
				multi_a[6][0] = in_data_store[48];
				multi_a[6][1] = in_data_store[49];
				multi_a[6][2] = in_data_store[50];
				multi_a[6][3] = in_data_store[51];
				multi_a[6][4] = in_data_store[52];
				multi_a[6][5] = in_data_store[53];
				multi_a[6][6] = in_data_store[54];
				multi_a[6][7] = in_data_store[55];
				multi_a41[0] = P_store[0];
				multi_a41[1] = P_store[1];
				multi_a41[2] = P_store[2];
				multi_a41[3] = P_store[3];
				multi_a41[4] = P_store[4];
				multi_a41[5] = P_store[5];
				multi_a41[6] = P_store[6];
				multi_a41[7] = P_store[7]; 
			end
			2:begin
				multi_a[0][0] = in_data_store[56];
				multi_a[0][1] = in_data_store[57];
				multi_a[0][2] = in_data_store[58];
				multi_a[0][3] = in_data_store[59];
				multi_a[0][4] = in_data_store[60];
				multi_a[0][5] = in_data_store[61];
				multi_a[0][6] = in_data_store[62];
				multi_a[0][7] = in_data_store[63];
				multi_a[1][0] = in_data_store[56];
				multi_a[1][1] = in_data_store[57];
				multi_a[1][2] = in_data_store[58];
				multi_a[1][3] = in_data_store[59];
				multi_a[1][4] = in_data_store[60];
				multi_a[1][5] = in_data_store[61];
				multi_a[1][6] = in_data_store[62];
				multi_a[1][7] = in_data_store[63];
				for(i=2;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[0];
				multi_a41[1] = P_store[1];
				multi_a41[2] = P_store[2];
				multi_a41[3] = P_store[3];
				multi_a41[4] = P_store[4];
				multi_a41[5] = P_store[5];
				multi_a41[6] = P_store[6];
				multi_a41[7] = P_store[7]; 
			end
			3,4,5,6,7:begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[0];
				multi_a41[1] = P_store[1];
				multi_a41[2] = P_store[2];
				multi_a41[3] = P_store[3];
				multi_a41[4] = P_store[4];
				multi_a41[5] = P_store[5];
				multi_a41[6] = P_store[6];
				multi_a41[7] = P_store[7]; 
			end
			8,9,10,11,12,13,14,15:begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[8*1+0];
				multi_a41[1] = P_store[8*1+1];
				multi_a41[2] = P_store[8*1+2];
				multi_a41[3] = P_store[8*1+3];
				multi_a41[4] = P_store[8*1+4];
				multi_a41[5] = P_store[8*1+5];
				multi_a41[6] = P_store[8*1+6];
				multi_a41[7] = P_store[8*1+7]; 
			end
			16,17,18,19,20,21,22,23: begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[8*2 + 0];
				multi_a41[1] = P_store[8*2 + 1];
				multi_a41[2] = P_store[8*2 + 2];
				multi_a41[3] = P_store[8*2 + 3];
				multi_a41[4] = P_store[8*2 + 4];
				multi_a41[5] = P_store[8*2 + 5];
				multi_a41[6] = P_store[8*2 + 6];
				multi_a41[7] = P_store[8*2 + 7];
			end
			24,25,26,27,28,29,30,31: begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[8*3 + 0];
				multi_a41[1] = P_store[8*3 + 1];
				multi_a41[2] = P_store[8*3 + 2];
				multi_a41[3] = P_store[8*3 + 3];
				multi_a41[4] = P_store[8*3 + 4];
				multi_a41[5] = P_store[8*3 + 5];
				multi_a41[6] = P_store[8*3 + 6];
				multi_a41[7] = P_store[8*3 + 7];
			end
			32,33,34,35,36,37,38,39: begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[8*4 + 0];
				multi_a41[1] = P_store[8*4 + 1];
				multi_a41[2] = P_store[8*4 + 2];
				multi_a41[3] = P_store[8*4 + 3];
				multi_a41[4] = P_store[8*4 + 4];
				multi_a41[5] = P_store[8*4 + 5];
				multi_a41[6] = P_store[8*4 + 6];
				multi_a41[7] = P_store[8*4 + 7];
			end
			40,41,42,43,44,45,46,47: begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[8*5 + 0];
				multi_a41[1] = P_store[8*5 + 1];
				multi_a41[2] = P_store[8*5 + 2];
				multi_a41[3] = P_store[8*5 + 3];
				multi_a41[4] = P_store[8*5 + 4];
				multi_a41[5] = P_store[8*5 + 5];
				multi_a41[6] = P_store[8*5 + 6];
				multi_a41[7] = P_store[8*5 + 7];
			end
			48,49,50,51,52,53,54,55: begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[8*6 + 0];
				multi_a41[1] = P_store[8*6 + 1];
				multi_a41[2] = P_store[8*6 + 2];
				multi_a41[3] = P_store[8*6 + 3];
				multi_a41[4] = P_store[8*6 + 4];
				multi_a41[5] = P_store[8*6 + 5];
				multi_a41[6] = P_store[8*6 + 6];
				multi_a41[7] = P_store[8*6 + 7];
			end
			56,57,58,59,60,61,62,63: begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
					end
				end
				multi_a41[0] = P_store[8*7 + 0];
				multi_a41[1] = P_store[8*7 + 1];
				multi_a41[2] = P_store[8*7 + 2];
				multi_a41[3] = P_store[8*7 + 3];
				multi_a41[4] = P_store[8*7 + 4];
				multi_a41[5] = P_store[8*7 + 5];
				multi_a41[6] = P_store[8*7 + 6];
				multi_a41[7] = P_store[8*7 + 7];
			end
			default:begin
				for(i=0;i<7;i=i+1)begin
					for(j=0;j<8;j=j+1)begin
						multi_a[i][j]=0;
						multi_a41[j]=0;
					end
				end
			end
		endcase
	end else begin
		for(i=0;i<7;i=i+1)begin
			for(j=0;j<8;j=j+1)begin
				multi_a[i][j]=0;
				multi_a41[j]=0;
			end
		end
	end
end


always @(*) begin
	if(state==INPUT)begin
		if(flag_qkv==1)begin
			case(in_cnt)
				0,57:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[0];
						multi_b[i][1] = W_store[8*1];
						multi_b[i][2] = W_store[8*2];
						multi_b[i][3] = W_store[8*3];
						multi_b[i][4] = W_store[8*4];
						multi_b[i][5] = W_store[8*5];
						multi_b[i][6] = W_store[8*6];
						multi_b[i][7] = W_store[8*7];
					end
					multi_b41[0] = W_store[0];
					multi_b41[1] = W_store[8*1];
					multi_b41[2] = W_store[8*2];
					multi_b41[3] = W_store[8*3];
					multi_b41[4] = W_store[8*4];
					multi_b41[5] = W_store[8*5];
					multi_b41[6] = W_store[8*6];
					multi_b41[7] = W_store[8*7];
				end
				1,58:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[1+0];
						multi_b[i][1] = W_store[1+8*1];
						multi_b[i][2] = W_store[1+8*2];
						multi_b[i][3] = W_store[1+8*3];
						multi_b[i][4] = W_store[1+8*4];
						multi_b[i][5] = W_store[1+8*5];
						multi_b[i][6] = W_store[1+8*6];
						multi_b[i][7] = W_store[1+8*7];
					end
					multi_b41[0] = W_store[1+0];
					multi_b41[1] = W_store[1+8*1];
					multi_b41[2] = W_store[1+8*2];
					multi_b41[3] = W_store[1+8*3];
					multi_b41[4] = W_store[1+8*4];
					multi_b41[5] = W_store[1+8*5];
					multi_b41[6] = W_store[1+8*6];
					multi_b41[7] = W_store[1+8*7];
				end
				2,59:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[2+0];
						multi_b[i][1] = W_store[2+8*1];
						multi_b[i][2] = W_store[2+8*2];
						multi_b[i][3] = W_store[2+8*3];
						multi_b[i][4] = W_store[2+8*4];
						multi_b[i][5] = W_store[2+8*5];
						multi_b[i][6] = W_store[2+8*6];
						multi_b[i][7] = W_store[2+8*7];
					end
					multi_b41[0] = W_store[2+0];
					multi_b41[1] = W_store[2+8*1];
					multi_b41[2] = W_store[2+8*2];
					multi_b41[3] = W_store[2+8*3];
					multi_b41[4] = W_store[2+8*4];
					multi_b41[5] = W_store[2+8*5];
					multi_b41[6] = W_store[2+8*6];
					multi_b41[7] = W_store[2+8*7];
				end
				3,60:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[3+0];
						multi_b[i][1] = W_store[3+8*1];
						multi_b[i][2] = W_store[3+8*2];
						multi_b[i][3] = W_store[3+8*3];
						multi_b[i][4] = W_store[3+8*4];
						multi_b[i][5] = W_store[3+8*5];
						multi_b[i][6] = W_store[3+8*6];
						multi_b[i][7] = W_store[3+8*7];
					end
					multi_b41[0] = W_store[3+0];
					multi_b41[1] = W_store[3+8*1];
					multi_b41[2] = W_store[3+8*2];
					multi_b41[3] = W_store[3+8*3];
					multi_b41[4] = W_store[3+8*4];
					multi_b41[5] = W_store[3+8*5];
					multi_b41[6] = W_store[3+8*6];
					multi_b41[7] = W_store[3+8*7];
				end
				4,61:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[4+0];
						multi_b[i][1] = W_store[4+8*1];
						multi_b[i][2] = W_store[4+8*2];
						multi_b[i][3] = W_store[4+8*3];
						multi_b[i][4] = W_store[4+8*4];
						multi_b[i][5] = W_store[4+8*5];
						multi_b[i][6] = W_store[4+8*6];
						multi_b[i][7] = W_store[4+8*7];
					end
					multi_b41[0] = W_store[4+0];
					multi_b41[1] = W_store[4+8*1];
					multi_b41[2] = W_store[4+8*2];
					multi_b41[3] = W_store[4+8*3];
					multi_b41[4] = W_store[4+8*4];
					multi_b41[5] = W_store[4+8*5];
					multi_b41[6] = W_store[4+8*6];
					multi_b41[7] = W_store[4+8*7];
				end
				5,62:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[5+0];
						multi_b[i][1] = W_store[5+8*1];
						multi_b[i][2] = W_store[5+8*2];
						multi_b[i][3] = W_store[5+8*3];
						multi_b[i][4] = W_store[5+8*4];
						multi_b[i][5] = W_store[5+8*5];
						multi_b[i][6] = W_store[5+8*6];
						multi_b[i][7] = W_store[5+8*7];
					end
					multi_b41[0] = W_store[5+0];
					multi_b41[1] = W_store[5+8*1];
					multi_b41[2] = W_store[5+8*2];
					multi_b41[3] = W_store[5+8*3];
					multi_b41[4] = W_store[5+8*4];
					multi_b41[5] = W_store[5+8*5];
					multi_b41[6] = W_store[5+8*6];
					multi_b41[7] = W_store[5+8*7];
				end
				6,63:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[6+0];
						multi_b[i][1] = W_store[6+8*1];
						multi_b[i][2] = W_store[6+8*2];
						multi_b[i][3] = W_store[6+8*3];
						multi_b[i][4] = W_store[6+8*4];
						multi_b[i][5] = W_store[6+8*5];
						multi_b[i][6] = W_store[6+8*6];
						multi_b[i][7] = W_store[6+8*7];
					end
					multi_b41[0] = W_store[6+0];
					multi_b41[1] = W_store[6+8*1];
					multi_b41[2] = W_store[6+8*2];
					multi_b41[3] = W_store[6+8*3];
					multi_b41[4] = W_store[6+8*4];
					multi_b41[5] = W_store[6+8*5];
					multi_b41[6] = W_store[6+8*6];
					multi_b41[7] = W_store[6+8*7];
				end
				7:begin
					for(i=0;i<7;i=i+1)begin
						multi_b[i][0] = W_store[7+0];
						multi_b[i][1] = W_store[7+8*1];
						multi_b[i][2] = W_store[7+8*2];
						multi_b[i][3] = W_store[7+8*3];
						multi_b[i][4] = W_store[7+8*4];
						multi_b[i][5] = W_store[7+8*5];
						multi_b[i][6] = W_store[7+8*6];
						multi_b[i][7] = W_store[7+8*7];
					end
					multi_b41[0] = W_store[7+0];
					multi_b41[1] = W_store[7+8*1];
					multi_b41[2] = W_store[7+8*2];
					multi_b41[3] = W_store[7+8*3];
					multi_b41[4] = W_store[7+8*4];
					multi_b41[5] = W_store[7+8*5];
					multi_b41[6] = W_store[7+8*6];
					multi_b41[7] = W_store[7+8*7];
				end
				default:begin
					for(i=0;i<7;i=i+1)begin
						for(j=0;j<8;j=j+1)begin
							multi_b[i][j]=0;
							multi_b41[j] =0;
						end
					end
				end
			endcase
		end else if(flag_qkv==2)begin
			if(in_cnt==0)begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] = W_store[7+0];
					multi_b[i][1] = W_store[7+8*1];
					multi_b[i][2] = W_store[7+8*2];
					multi_b[i][3] = W_store[7+8*3];
					multi_b[i][4] = W_store[7+8*4];
					multi_b[i][5] = W_store[7+8*5];
					multi_b[i][6] = W_store[7+8*6];
					multi_b[i][7] = W_store[7+8*7];
				end
				multi_b41[0] = W_store[7+0];
				multi_b41[1] = W_store[7+8*1];
				multi_b41[2] = W_store[7+8*2];
				multi_b41[3] = W_store[7+8*3];
				multi_b41[4] = W_store[7+8*4];
				multi_b41[5] = W_store[7+8*5];
				multi_b41[6] = W_store[7+8*6];
				multi_b41[7] = W_store[7+8*7];
			end else begin
				case(in_cnt)
					1:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[8*0];
							multi_b[i][1] = P_store[8*1];
							multi_b[i][2] = P_store[8*2];
							multi_b[i][3] = P_store[8*3];
							multi_b[i][4] = P_store[8*4];
							multi_b[i][5] = P_store[8*5];
							multi_b[i][6] = P_store[8*6];
							multi_b[i][7] = P_store[8*7];
						end
						multi_b41[0] = P_store[8*0];
						multi_b41[1] = P_store[8*1];
						multi_b41[2] = P_store[8*2];
						multi_b41[3] = P_store[8*3];
						multi_b41[4] = P_store[8*4];
						multi_b41[5] = P_store[8*5];
						multi_b41[6] = P_store[8*6];
						multi_b41[7] = P_store[8*7];
					end
					2:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[1+8*0];
							multi_b[i][1] = P_store[1+8*1];
							multi_b[i][2] = P_store[1+8*2];
							multi_b[i][3] = P_store[1+8*3];
							multi_b[i][4] = P_store[1+8*4];
							multi_b[i][5] = P_store[1+8*5];
							multi_b[i][6] = P_store[1+8*6];
							multi_b[i][7] = P_store[1+8*7];
						end
						multi_b41[0] = P_store[1+8*0];
						multi_b41[1] = P_store[1+8*1];
						multi_b41[2] = P_store[1+8*2];
						multi_b41[3] = P_store[1+8*3];
						multi_b41[4] = P_store[1+8*4];
						multi_b41[5] = P_store[1+8*5];
						multi_b41[6] = P_store[1+8*6];
						multi_b41[7] = P_store[1+8*7];
					end
					3:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[2+8*0];
							multi_b[i][1] = P_store[2+8*1];
							multi_b[i][2] = P_store[2+8*2];
							multi_b[i][3] = P_store[2+8*3];
							multi_b[i][4] = P_store[2+8*4];
							multi_b[i][5] = P_store[2+8*5];
							multi_b[i][6] = P_store[2+8*6];
							multi_b[i][7] = P_store[2+8*7];
						end
						multi_b41[0] = P_store[2+8*0];
						multi_b41[1] = P_store[2+8*1];
						multi_b41[2] = P_store[2+8*2];
						multi_b41[3] = P_store[2+8*3];
						multi_b41[4] = P_store[2+8*4];
						multi_b41[5] = P_store[2+8*5];
						multi_b41[6] = P_store[2+8*6];
						multi_b41[7] = P_store[2+8*7];
					end
					4:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[3+8*0];
							multi_b[i][1] = P_store[3+8*1];
							multi_b[i][2] = P_store[3+8*2];
							multi_b[i][3] = P_store[3+8*3];
							multi_b[i][4] = P_store[3+8*4];
							multi_b[i][5] = P_store[3+8*5];
							multi_b[i][6] = P_store[3+8*6];
							multi_b[i][7] = P_store[3+8*7];
						end
						multi_b41[0] = P_store[3+8*0];
						multi_b41[1] = P_store[3+8*1];
						multi_b41[2] = P_store[3+8*2];
						multi_b41[3] = P_store[3+8*3];
						multi_b41[4] = P_store[3+8*4];
						multi_b41[5] = P_store[3+8*5];
						multi_b41[6] = P_store[3+8*6];
						multi_b41[7] = P_store[3+8*7];
					end
					5:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[4+8*0];
							multi_b[i][1] = P_store[4+8*1];
							multi_b[i][2] = P_store[4+8*2];
							multi_b[i][3] = P_store[4+8*3];
							multi_b[i][4] = P_store[4+8*4];
							multi_b[i][5] = P_store[4+8*5];
							multi_b[i][6] = P_store[4+8*6];
							multi_b[i][7] = P_store[4+8*7];
						end
						multi_b41[0] = P_store[4+8*0];
						multi_b41[1] = P_store[4+8*1];
						multi_b41[2] = P_store[4+8*2];
						multi_b41[3] = P_store[4+8*3];
						multi_b41[4] = P_store[4+8*4];
						multi_b41[5] = P_store[4+8*5];
						multi_b41[6] = P_store[4+8*6];
						multi_b41[7] = P_store[4+8*7];
					end
					6:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[5+8*0];
							multi_b[i][1] = P_store[5+8*1];
							multi_b[i][2] = P_store[5+8*2];
							multi_b[i][3] = P_store[5+8*3];
							multi_b[i][4] = P_store[5+8*4];
							multi_b[i][5] = P_store[5+8*5];
							multi_b[i][6] = P_store[5+8*6];
							multi_b[i][7] = P_store[5+8*7];
						end
						multi_b41[0] = P_store[5+8*0];
						multi_b41[1] = P_store[5+8*1];
						multi_b41[2] = P_store[5+8*2];
						multi_b41[3] = P_store[5+8*3];
						multi_b41[4] = P_store[5+8*4];
						multi_b41[5] = P_store[5+8*5];
						multi_b41[6] = P_store[5+8*6];
						multi_b41[7] = P_store[5+8*7];
					end
					7:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[6+8*0];
							multi_b[i][1] = P_store[6+8*1];
							multi_b[i][2] = P_store[6+8*2];
							multi_b[i][3] = P_store[6+8*3];
							multi_b[i][4] = P_store[6+8*4];
							multi_b[i][5] = P_store[6+8*5];
							multi_b[i][6] = P_store[6+8*6];
							multi_b[i][7] = P_store[6+8*7];
						end
						multi_b41[0] = P_store[6+8*0];
						multi_b41[1] = P_store[6+8*1];
						multi_b41[2] = P_store[6+8*2];
						multi_b41[3] = P_store[6+8*3];
						multi_b41[4] = P_store[6+8*4];
						multi_b41[5] = P_store[6+8*5];
						multi_b41[6] = P_store[6+8*6];
						multi_b41[7] = P_store[6+8*7];
					end
					8:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = P_store[7+8*0];
							multi_b[i][1] = P_store[7+8*1];
							multi_b[i][2] = P_store[7+8*2];
							multi_b[i][3] = P_store[7+8*3];
							multi_b[i][4] = P_store[7+8*4];
							multi_b[i][5] = P_store[7+8*5];
							multi_b[i][6] = P_store[7+8*6];
							multi_b[i][7] = P_store[7+8*7];
						end
						multi_b41[0] = P_store[7+8*0];
						multi_b41[1] = P_store[7+8*1];
						multi_b41[2] = P_store[7+8*2];
						multi_b41[3] = P_store[7+8*3];
						multi_b41[4] = P_store[7+8*4];
						multi_b41[5] = P_store[7+8*5];
						multi_b41[6] = P_store[7+8*6];
						multi_b41[7] = P_store[7+8*7];
					end
					57:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = W_store[8*0];
							multi_b[i][1] = W_store[8*1];
							multi_b[i][2] = W_store[8*2];
							multi_b[i][3] = W_store[8*3];
							multi_b[i][4] = W_store[8*4];
							multi_b[i][5] = W_store[8*5];
							multi_b[i][6] = W_store[8*6];
							multi_b[i][7] = W_store[8*7];
						end
						multi_b41[0] = W_store[8*0];
						multi_b41[1] = W_store[8*1];
						multi_b41[2] = W_store[8*2];
						multi_b41[3] = W_store[8*3];
						multi_b41[4] = W_store[8*4];
						multi_b41[5] = W_store[8*5];
						multi_b41[6] = W_store[8*6];
						multi_b41[7] = W_store[8*7];
					end	
					58:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = W_store[1+8*0];
							multi_b[i][1] = W_store[1+8*1];
							multi_b[i][2] = W_store[1+8*2];
							multi_b[i][3] = W_store[1+8*3];
							multi_b[i][4] = W_store[1+8*4];
							multi_b[i][5] = W_store[1+8*5];
							multi_b[i][6] = W_store[1+8*6];
							multi_b[i][7] = W_store[1+8*7];
						end
						multi_b41[0] = W_store[1+8*0];
						multi_b41[1] = W_store[1+8*1];
						multi_b41[2] = W_store[1+8*2];
						multi_b41[3] = W_store[1+8*3];
						multi_b41[4] = W_store[1+8*4];
						multi_b41[5] = W_store[1+8*5];
						multi_b41[6] = W_store[1+8*6];
						multi_b41[7] = W_store[1+8*7];
					end	
					59:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = W_store[2+8*0];
							multi_b[i][1] = W_store[2+8*1];
							multi_b[i][2] = W_store[2+8*2];
							multi_b[i][3] = W_store[2+8*3];
							multi_b[i][4] = W_store[2+8*4];
							multi_b[i][5] = W_store[2+8*5];
							multi_b[i][6] = W_store[2+8*6];
							multi_b[i][7] = W_store[2+8*7];
						end
						multi_b41[0] = W_store[2+8*0];
						multi_b41[1] = W_store[2+8*1];
						multi_b41[2] = W_store[2+8*2];
						multi_b41[3] = W_store[2+8*3];
						multi_b41[4] = W_store[2+8*4];
						multi_b41[5] = W_store[2+8*5];
						multi_b41[6] = W_store[2+8*6];
						multi_b41[7] = W_store[2+8*7];
					end	
					60:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = W_store[3+8*0];
							multi_b[i][1] = W_store[3+8*1];
							multi_b[i][2] = W_store[3+8*2];
							multi_b[i][3] = W_store[3+8*3];
							multi_b[i][4] = W_store[3+8*4];
							multi_b[i][5] = W_store[3+8*5];
							multi_b[i][6] = W_store[3+8*6];
							multi_b[i][7] = W_store[3+8*7];
						end
						multi_b41[0] = W_store[3+8*0];
						multi_b41[1] = W_store[3+8*1];
						multi_b41[2] = W_store[3+8*2];
						multi_b41[3] = W_store[3+8*3];
						multi_b41[4] = W_store[3+8*4];
						multi_b41[5] = W_store[3+8*5];
						multi_b41[6] = W_store[3+8*6];
						multi_b41[7] = W_store[3+8*7];
					end
					61:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = W_store[4+8*0];
							multi_b[i][1] = W_store[4+8*1];
							multi_b[i][2] = W_store[4+8*2];
							multi_b[i][3] = W_store[4+8*3];
							multi_b[i][4] = W_store[4+8*4];
							multi_b[i][5] = W_store[4+8*5];
							multi_b[i][6] = W_store[4+8*6];
							multi_b[i][7] = W_store[4+8*7];
						end
						multi_b41[0] = W_store[4+8*0];
						multi_b41[1] = W_store[4+8*1];
						multi_b41[2] = W_store[4+8*2];
						multi_b41[3] = W_store[4+8*3];
						multi_b41[4] = W_store[4+8*4];
						multi_b41[5] = W_store[4+8*5];
						multi_b41[6] = W_store[4+8*6];
						multi_b41[7] = W_store[4+8*7];
					end
					62:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = W_store[5+8*0];
							multi_b[i][1] = W_store[5+8*1];
							multi_b[i][2] = W_store[5+8*2];
							multi_b[i][3] = W_store[5+8*3];
							multi_b[i][4] = W_store[5+8*4];
							multi_b[i][5] = W_store[5+8*5];
							multi_b[i][6] = W_store[5+8*6];
							multi_b[i][7] = W_store[5+8*7];
						end
						multi_b41[0] = W_store[5+8*0];
						multi_b41[1] = W_store[5+8*1];
						multi_b41[2] = W_store[5+8*2];
						multi_b41[3] = W_store[5+8*3];
						multi_b41[4] = W_store[5+8*4];
						multi_b41[5] = W_store[5+8*5];
						multi_b41[6] = W_store[5+8*6];
						multi_b41[7] = W_store[5+8*7];
					end
					63:begin
						for(i=0;i<7;i=i+1)begin
							multi_b[i][0] = W_store[6+8*0];
							multi_b[i][1] = W_store[6+8*1];
							multi_b[i][2] = W_store[6+8*2];
							multi_b[i][3] = W_store[6+8*3];
							multi_b[i][4] = W_store[6+8*4];
							multi_b[i][5] = W_store[6+8*5];
							multi_b[i][6] = W_store[6+8*6];
							multi_b[i][7] = W_store[6+8*7];
						end
						multi_b41[0] = QKV[8*0];
						multi_b41[1] = QKV[8*1];
						multi_b41[2] = QKV[8*2];
						multi_b41[3] = QKV[8*3];
						multi_b41[4] = QKV[8*4];
						multi_b41[5] = QKV[8*5];
						multi_b41[6] = QKV[8*6];
						multi_b41[7] = QKV[8*7];
					end
					default:begin
						for(i=0;i<7;i=i+1)begin
							for(j=0;j<8;j=j+1)begin
								multi_b[i][j]=0;
								multi_b41[j] =0;
							end
						end
					end
				endcase
			end
		end else if(flag_qkv==3) begin
			for(i=0;i<7;i=i+1)begin
				multi_b[i][0] = W_store[7+8*0];
				multi_b[i][1] = W_store[7+8*1];
				multi_b[i][2] = W_store[7+8*2];
				multi_b[i][3] = W_store[7+8*3];
				multi_b[i][4] = W_store[7+8*4];
				multi_b[i][5] = W_store[7+8*5];
				multi_b[i][6] = W_store[7+8*6];
				multi_b[i][7] = W_store[7+8*7];
			end
			multi_b41[0] = QKV[1+8*0];
			multi_b41[1] = QKV[1+8*1];
			multi_b41[2] = QKV[1+8*2];
			multi_b41[3] = QKV[1+8*3];
			multi_b41[4] = QKV[1+8*4];
			multi_b41[5] = QKV[1+8*5];
			multi_b41[6] = QKV[1+8*6];
			multi_b41[7] = QKV[1+8*7];
		end else begin
			for(i=0;i<7;i=i+1)begin
				for(j=0;j<8;j=j+1)begin
					multi_b[i][j]=0;
					multi_b41[j] =0;
				end
			end

		end
	end else if(state==OUT)begin
		case(A_cnt)
			9,17, 25, 33, 41, 49, 57:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] = W_store[7+8*0];
					multi_b[i][1] = W_store[7+8*1];
					multi_b[i][2] = W_store[7+8*2];
					multi_b[i][3] = W_store[7+8*3];
					multi_b[i][4] = W_store[7+8*4];
					multi_b[i][5] = W_store[7+8*5];
					multi_b[i][6] = W_store[7+8*6];
					multi_b[i][7] = W_store[7+8*7];
				end
				multi_b41[0] = QKV[1+8*0];
				multi_b41[1] = QKV[1+8*1];
				multi_b41[2] = QKV[1+8*2];
				multi_b41[3] = QKV[1+8*3];
				multi_b41[4] = QKV[1+8*4];
				multi_b41[5] = QKV[1+8*5];
				multi_b41[6] = QKV[1+8*6];
				multi_b41[7] = QKV[1+8*7];
			end
			2:begin
				multi_b[0][0] =W_store[6+8*0];
				multi_b[0][1] =W_store[6+8*1];
				multi_b[0][2] =W_store[6+8*2];
				multi_b[0][3] =W_store[6+8*3];
				multi_b[0][4] =W_store[6+8*4];
				multi_b[0][5] =W_store[6+8*5];
				multi_b[0][6] =W_store[6+8*6];
				multi_b[0][7] =W_store[6+8*7];
				multi_b[1][0] =W_store[7+8*0];
				multi_b[1][1] =W_store[7+8*1];
				multi_b[1][2] =W_store[7+8*2];
				multi_b[1][3] =W_store[7+8*3];
				multi_b[1][4] =W_store[7+8*4];
				multi_b[1][5] =W_store[7+8*5];
				multi_b[1][6] =W_store[7+8*6];
				multi_b[1][7] =W_store[7+8*7];
				for(i=2;i<7;i=i+1)begin
					multi_b[i][0] = 0;
					multi_b[i][1] = 0;
					multi_b[i][2] = 0;
					multi_b[i][3] = 0;
					multi_b[i][4] = 0;
					multi_b[i][5] = 0;
					multi_b[i][6] = 0;
					multi_b[i][7] = 0;
				end
				multi_b41[0] = QKV[2+8*0];
				multi_b41[1] = QKV[2+8*1];
				multi_b41[2] = QKV[2+8*2];
				multi_b41[3] = QKV[2+8*3];
				multi_b41[4] = QKV[2+8*4];
				multi_b41[5] = QKV[2+8*5];
				multi_b41[6] = QKV[2+8*6];
				multi_b41[7] = QKV[2+8*7];
			end 
			10, 18, 26, 34, 42, 50, 58:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] =0;
					multi_b[i][1] =0;
					multi_b[i][2] =0;
					multi_b[i][3] =0;
					multi_b[i][4] =0;
					multi_b[i][5] =0;
					multi_b[i][6] =0;
					multi_b[i][7] =0;
				end
				multi_b41[0] = QKV[2+8*0];
				multi_b41[1] = QKV[2+8*1];
				multi_b41[2] = QKV[2+8*2];
				multi_b41[3] = QKV[2+8*3];
				multi_b41[4] = QKV[2+8*4];
				multi_b41[5] = QKV[2+8*5];
				multi_b41[6] = QKV[2+8*6];
				multi_b41[7] = QKV[2+8*7];
			end
			3, 11, 19, 27, 35, 43, 51, 59:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] =0;
					multi_b[i][1] =0;
					multi_b[i][2] =0;
					multi_b[i][3] =0;
					multi_b[i][4] =0;
					multi_b[i][5] =0;
					multi_b[i][6] =0;
					multi_b[i][7] =0;
				end
				multi_b41[0] = QKV[3+8*0];
				multi_b41[1] = QKV[3+8*1];
				multi_b41[2] = QKV[3+8*2];
				multi_b41[3] = QKV[3+8*3];
				multi_b41[4] = QKV[3+8*4];
				multi_b41[5] = QKV[3+8*5];
				multi_b41[6] = QKV[3+8*6];
				multi_b41[7] = QKV[3+8*7];
			end
			4, 12, 20, 28, 36, 44, 52, 60:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] =0;
					multi_b[i][1] =0;
					multi_b[i][2] =0;
					multi_b[i][3] =0;
					multi_b[i][4] =0;
					multi_b[i][5] =0;
					multi_b[i][6] =0;
					multi_b[i][7] =0;
				end
				multi_b41[0] =QKV[4+8*0];
				multi_b41[1] =QKV[4+8*1];
				multi_b41[2] =QKV[4+8*2];
				multi_b41[3] =QKV[4+8*3];
				multi_b41[4] =QKV[4+8*4];
				multi_b41[5] =QKV[4+8*5];
				multi_b41[6] =QKV[4+8*6];
				multi_b41[7] =QKV[4+8*7];
			end
			5, 13, 21, 29, 37, 45, 53, 61:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] =0;
					multi_b[i][1] =0;
					multi_b[i][2] =0;
					multi_b[i][3] =0;
					multi_b[i][4] =0;
					multi_b[i][5] =0;
					multi_b[i][6] =0;
					multi_b[i][7] =0;
				end
				multi_b41[0] = QKV[5+8*0];
				multi_b41[1] = QKV[5+8*1];
				multi_b41[2] = QKV[5+8*2];
				multi_b41[3] = QKV[5+8*3];
				multi_b41[4] = QKV[5+8*4];
				multi_b41[5] = QKV[5+8*5];
				multi_b41[6] = QKV[5+8*6];
				multi_b41[7] = QKV[5+8*7];
			end
			6, 14, 22, 30, 38, 46, 54, 62:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] =0;
					multi_b[i][1] =0;
					multi_b[i][2] =0;
					multi_b[i][3] =0;
					multi_b[i][4] =0;
					multi_b[i][5] =0;
					multi_b[i][6] =0;
					multi_b[i][7] =0;
				end
				multi_b41[0] = QKV[6+8*0];
				multi_b41[1] = QKV[6+8*1];
				multi_b41[2] = QKV[6+8*2];
				multi_b41[3] = QKV[6+8*3];
				multi_b41[4] = QKV[6+8*4];
				multi_b41[5] = QKV[6+8*5];
				multi_b41[6] = QKV[6+8*6];
				multi_b41[7] = QKV[6+8*7];
			end
			7, 15, 23, 31, 39, 47, 55, 63:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] =0;
					multi_b[i][1] =0;
					multi_b[i][2] =0;
					multi_b[i][3] =0;
					multi_b[i][4] =0;
					multi_b[i][5] =0;
					multi_b[i][6] =0;
					multi_b[i][7] =0;
				end
				multi_b41[0] = QKV[7+8*0];
				multi_b41[1] = QKV[7+8*1];
				multi_b41[2] = QKV[7+8*2];
				multi_b41[3] = QKV[7+8*3];
				multi_b41[4] = QKV[7+8*4];
				multi_b41[5] = QKV[7+8*5];
				multi_b41[6] = QKV[7+8*6];
				multi_b41[7] = QKV[7+8*7];
			end
			8, 16, 24, 32, 40, 48, 56:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] = 0;
					multi_b[i][1] = 0;
					multi_b[i][2] = 0;
					multi_b[i][3] = 0;
					multi_b[i][4] = 0;
					multi_b[i][5] = 0;
					multi_b[i][6] = 0;
					multi_b[i][7] = 0;
				end
				multi_b41[0] = QKV[8*0];
				multi_b41[1] = QKV[8*1];
				multi_b41[2] = QKV[8*2];
				multi_b41[3] = QKV[8*3];
				multi_b41[4] = QKV[8*4];
				multi_b41[5] = QKV[8*5];
				multi_b41[6] = QKV[8*6];
				multi_b41[7] = QKV[8*7];
			end
			default:begin
				for(i=0;i<7;i=i+1)begin
					multi_b[i][0] = 0;
					multi_b[i][1] = 0;
					multi_b[i][2] = 0;
					multi_b[i][3] = 0;
					multi_b[i][4] = 0;
					multi_b[i][5] = 0;
					multi_b[i][6] = 0;
					multi_b[i][7] = 0;
				end
				multi_b41[0] = 0;
				multi_b41[1] = 0;
				multi_b41[2] = 0;
				multi_b41[3] = 0;
				multi_b41[4] = 0;
				multi_b41[5] = 0;
				multi_b41[6] = 0;
				multi_b41[7] = 0;
			end
		endcase
	end else begin
		for(i=0;i<7;i=i+1)begin
			for(j=0;j<8;j=j+1)begin
				multi_b[i][j]=0;
				multi_b41[j] =0;
			end
		end
	end
end
		

///拆26 26 26	

always @(negedge rst_n or posedge clk_gated[3]) begin
	if(!rst_n)begin
		for(i=0;i<3;i=i+1)begin
			QKV[i+8*0]<=0;
			QKV[i+8*1]<=0;
			QKV[i+8*2]<=0;
			QKV[i+8*3]<=0;
			QKV[i+8*4]<=0;
			QKV[i+8*5]<=0;
			QKV[i+8*6]<=0;
			QKV[i+8*7]<=0;
		end 
	end	else begin
		if(state==INPUT)begin
			if(flag_qkv==1)begin
				case(in_cnt)
					0:begin
						QKV[8*0] <= multi_out[0];
						QKV[8*1] <= multi_out[1];
						QKV[8*2] <= multi_out[2];
						QKV[8*3] <= multi_out[3];
						QKV[8*4] <= multi_out[4];
						QKV[8*5] <= multi_out[5];
						QKV[8*6] <= multi_out[6];
						QKV[8*7] <= multi_out41;
					end
					1:begin
						QKV[1+8*0] <= multi_out[0];
						QKV[1+8*1] <= multi_out[1];
						QKV[1+8*2] <= multi_out[2];
						QKV[1+8*3] <= multi_out[3];
						QKV[1+8*4] <= multi_out[4];
						QKV[1+8*5] <= multi_out[5];
						QKV[1+8*6] <= multi_out[6];
						QKV[1+8*7] <= multi_out41;
					end
					2:begin
						QKV[2+8*0] <= multi_out[0];
						QKV[2+8*1] <= multi_out[1];
						QKV[2+8*2] <= multi_out[2];
						QKV[2+8*3] <= multi_out[3];
						QKV[2+8*4] <= multi_out[4];
						QKV[2+8*5] <= multi_out[5];
						QKV[2+8*6] <= multi_out[6];
						QKV[2+8*7] <= multi_out41;
					end
				endcase
			end else if(flag_qkv==2)begin
				case(in_cnt)
					57:begin
						QKV[8*0] <= multi_out[0];
						QKV[8*1] <= multi_out[1];
						QKV[8*2] <= multi_out[2];
						QKV[8*3] <= multi_out[3];
						QKV[8*4] <= multi_out[4];
						QKV[8*5] <= multi_out[5];
						QKV[8*6] <= multi_out[6];
						QKV[8*7] <= multi_out41;
					end
					58:begin
						QKV[1+8*0] <= multi_out[0];
						QKV[1+8*1] <= multi_out[1];
						QKV[1+8*2] <= multi_out[2];
						QKV[1+8*3] <= multi_out[3];
						QKV[1+8*4] <= multi_out[4];
						QKV[1+8*5] <= multi_out[5];
						QKV[1+8*6] <= multi_out[6];
						QKV[1+8*7] <= multi_out41;
					end
					59:begin
						QKV[2+8*0] <= multi_out[0];
						QKV[2+8*1] <= multi_out[1];
						QKV[2+8*2] <= multi_out[2];
						QKV[2+8*3] <= multi_out[3];
						QKV[2+8*4] <= multi_out[4];
						QKV[2+8*5] <= multi_out[5];
						QKV[2+8*6] <= multi_out[6];
						QKV[2+8*7] <= multi_out41;
					end
				endcase	
			end
		end
	end
end



always @(negedge rst_n or posedge clk_gated[4]) begin
	if(!rst_n)begin
		for(i=3;i<6;i=i+1)begin
			QKV[i+8*0]<=0;
			QKV[i+8*1]<=0;
			QKV[i+8*2]<=0;
			QKV[i+8*3]<=0;
			QKV[i+8*4]<=0;
			QKV[i+8*5]<=0;
			QKV[i+8*6]<=0;
			QKV[i+8*7]<=0;
		end 
	end	else begin
		if(state==INPUT)begin
			if(flag_qkv==1)begin
				case(in_cnt)
					3:begin
						QKV[3+8*0] <= multi_out[0];
						QKV[3+8*1] <= multi_out[1];
						QKV[3+8*2] <= multi_out[2];
						QKV[3+8*3] <= multi_out[3];
						QKV[3+8*4] <= multi_out[4];
						QKV[3+8*5] <= multi_out[5];
						QKV[3+8*6] <= multi_out[6];
						QKV[3+8*7] <= multi_out41;
					end
					4:begin
						QKV[4+8*0] <= multi_out[0];
						QKV[4+8*1] <= multi_out[1];
						QKV[4+8*2] <= multi_out[2];
						QKV[4+8*3] <= multi_out[3];
						QKV[4+8*4] <= multi_out[4];
						QKV[4+8*5] <= multi_out[5];
						QKV[4+8*6] <= multi_out[6];
						QKV[4+8*7] <= multi_out41;
					end
					5:begin
						QKV[5+8*0] <= multi_out[0];
						QKV[5+8*1] <= multi_out[1];
						QKV[5+8*2] <= multi_out[2];
						QKV[5+8*3] <= multi_out[3];
						QKV[5+8*4] <= multi_out[4];
						QKV[5+8*5] <= multi_out[5];
						QKV[5+8*6] <= multi_out[6];
						QKV[5+8*7] <= multi_out41;
					end
				endcase
			end else if(flag_qkv==2)begin
				case(in_cnt)
					60:begin
						QKV[3+8*0] <= multi_out[0];
						QKV[3+8*1] <= multi_out[1];
						QKV[3+8*2] <= multi_out[2];
						QKV[3+8*3] <= multi_out[3];
						QKV[3+8*4] <= multi_out[4];
						QKV[3+8*5] <= multi_out[5];
						QKV[3+8*6] <= multi_out[6];
						QKV[3+8*7] <= multi_out41;
					end
					61:begin
						QKV[4+8*0] <= multi_out[0];
						QKV[4+8*1] <= multi_out[1];
						QKV[4+8*2] <= multi_out[2];
						QKV[4+8*3] <= multi_out[3];
						QKV[4+8*4] <= multi_out[4];
						QKV[4+8*5] <= multi_out[5];
						QKV[4+8*6] <= multi_out[6];
						QKV[4+8*7] <= multi_out41;
					end
					62:begin
						QKV[5+8*0] <= multi_out[0];
						QKV[5+8*1] <= multi_out[1];
						QKV[5+8*2] <= multi_out[2];
						QKV[5+8*3] <= multi_out[3];
						QKV[5+8*4] <= multi_out[4];
						QKV[5+8*5] <= multi_out[5];
						QKV[5+8*6] <= multi_out[6];
						QKV[5+8*7] <= multi_out41;
					end
				endcase	
			end 
		end 
	end
end


always @(negedge rst_n or posedge clk_gated[5]) begin
	if(!rst_n)begin
		for(i=6;i<8;i=i+1)begin
			QKV[i+8*0]<=0;
			QKV[i+8*1]<=0;
			QKV[i+8*2]<=0;
			QKV[i+8*3]<=0;
			QKV[i+8*4]<=0;
			QKV[i+8*5]<=0;
			QKV[i+8*6]<=0;
			QKV[i+8*7]<=0;
		end 
	end	else begin
		if(state==INPUT)begin
			if(flag_qkv==1)begin
				case(in_cnt)
					6:begin
						QKV[6+8*0] <= multi_out[0];
						QKV[6+8*1] <= multi_out[1];
						QKV[6+8*2] <= multi_out[2];
						QKV[6+8*3] <= multi_out[3];
						QKV[6+8*4] <= multi_out[4];
						QKV[6+8*5] <= multi_out[5];
						QKV[6+8*6] <= multi_out[6];
						QKV[6+8*7] <= multi_out41;
					end
					7:begin
						QKV[7+8*0] <= multi_out[0];
						QKV[7+8*1] <= multi_out[1];
						QKV[7+8*2] <= multi_out[2];
						QKV[7+8*3] <= multi_out[3];
						QKV[7+8*4] <= multi_out[4];
						QKV[7+8*5] <= multi_out[5];
						QKV[7+8*6] <= multi_out[6];
						QKV[7+8*7] <= multi_out41;
					end
				endcase
			end else if(flag_qkv==2)begin
				case(in_cnt)
					63:begin
						QKV[6+8*0] <= multi_out[0];
						QKV[6+8*1] <= multi_out[1];
						QKV[6+8*2] <= multi_out[2];
						QKV[6+8*3] <= multi_out[3];
						QKV[6+8*4] <= multi_out[4];
						QKV[6+8*5] <= multi_out[5];
						QKV[6+8*6] <= multi_out[6];
						
					end
				endcase	
			end else if(flag_qkv==3)begin
				QKV[7+8*0] <= multi_out[0];
				QKV[7+8*1] <= multi_out[1];
				QKV[7+8*2] <= multi_out[2];
				QKV[7+8*3] <= multi_out[3];
				QKV[7+8*4] <= multi_out[4];
				QKV[7+8*5] <= multi_out[5];
				QKV[7+8*6] <= multi_out[6];
			end
		end else if(state==OUT)begin
			if(A_cnt==2) begin
				QKV[6+8*7] <= multi_out[0];
				QKV[7+8*7] <= multi_out[1];
			end
		end
	end
end



// always @(negedge rst_n or posedge clk) begin
// 	if(!rst_n)begin
// 		for(i=0;i<64;i=i+1)begin
// 			QKV[i]<=0;
// 		end 
// 	end	else begin
// 		if(state==INPUT)begin
// 			if(flag_qkv==1)begin
// 				case(in_cnt)
// 					0:begin
// 						QKV[8*0] <= multi_out[0];
// 						QKV[8*1] <= multi_out[1];
// 						QKV[8*2] <= multi_out[2];
// 						QKV[8*3] <= multi_out[3];
// 						QKV[8*4] <= multi_out[4];
// 						QKV[8*5] <= multi_out[5];
// 						QKV[8*6] <= multi_out[6];
// 						QKV[8*7] <= multi_out41;
// 					end
// 					1:begin
// 						QKV[1+8*0] <= multi_out[0];
// 						QKV[1+8*1] <= multi_out[1];
// 						QKV[1+8*2] <= multi_out[2];
// 						QKV[1+8*3] <= multi_out[3];
// 						QKV[1+8*4] <= multi_out[4];
// 						QKV[1+8*5] <= multi_out[5];
// 						QKV[1+8*6] <= multi_out[6];
// 						QKV[1+8*7] <= multi_out41;
// 					end
// 					2:begin
// 						QKV[2+8*0] <= multi_out[0];
// 						QKV[2+8*1] <= multi_out[1];
// 						QKV[2+8*2] <= multi_out[2];
// 						QKV[2+8*3] <= multi_out[3];
// 						QKV[2+8*4] <= multi_out[4];
// 						QKV[2+8*5] <= multi_out[5];
// 						QKV[2+8*6] <= multi_out[6];
// 						QKV[2+8*7] <= multi_out41;
// 					end
// 					3:begin
// 						QKV[3+8*0] <= multi_out[0];
// 						QKV[3+8*1] <= multi_out[1];
// 						QKV[3+8*2] <= multi_out[2];
// 						QKV[3+8*3] <= multi_out[3];
// 						QKV[3+8*4] <= multi_out[4];
// 						QKV[3+8*5] <= multi_out[5];
// 						QKV[3+8*6] <= multi_out[6];
// 						QKV[3+8*7] <= multi_out41;
// 					end
// 					4:begin
// 						QKV[4+8*0] <= multi_out[0];
// 						QKV[4+8*1] <= multi_out[1];
// 						QKV[4+8*2] <= multi_out[2];
// 						QKV[4+8*3] <= multi_out[3];
// 						QKV[4+8*4] <= multi_out[4];
// 						QKV[4+8*5] <= multi_out[5];
// 						QKV[4+8*6] <= multi_out[6];
// 						QKV[4+8*7] <= multi_out41;
// 					end
// 					5:begin
// 						QKV[5+8*0] <= multi_out[0];
// 						QKV[5+8*1] <= multi_out[1];
// 						QKV[5+8*2] <= multi_out[2];
// 						QKV[5+8*3] <= multi_out[3];
// 						QKV[5+8*4] <= multi_out[4];
// 						QKV[5+8*5] <= multi_out[5];
// 						QKV[5+8*6] <= multi_out[6];
// 						QKV[5+8*7] <= multi_out41;
// 					end
// 					6:begin
// 						QKV[6+8*0] <= multi_out[0];
// 						QKV[6+8*1] <= multi_out[1];
// 						QKV[6+8*2] <= multi_out[2];
// 						QKV[6+8*3] <= multi_out[3];
// 						QKV[6+8*4] <= multi_out[4];
// 						QKV[6+8*5] <= multi_out[5];
// 						QKV[6+8*6] <= multi_out[6];
// 						QKV[6+8*7] <= multi_out41;
// 					end
// 					7:begin
// 						QKV[7+8*0] <= multi_out[0];
// 						QKV[7+8*1] <= multi_out[1];
// 						QKV[7+8*2] <= multi_out[2];
// 						QKV[7+8*3] <= multi_out[3];
// 						QKV[7+8*4] <= multi_out[4];
// 						QKV[7+8*5] <= multi_out[5];
// 						QKV[7+8*6] <= multi_out[6];
// 						QKV[7+8*7] <= multi_out41;
// 					end
// 				endcase
// 			end else if(flag_qkv==2)begin
// 				case(in_cnt)
// 					57:begin
// 						QKV[8*0] <= multi_out[0];
// 						QKV[8*1] <= multi_out[1];
// 						QKV[8*2] <= multi_out[2];
// 						QKV[8*3] <= multi_out[3];
// 						QKV[8*4] <= multi_out[4];
// 						QKV[8*5] <= multi_out[5];
// 						QKV[8*6] <= multi_out[6];
// 						QKV[8*7] <= multi_out41;
// 					end
// 					58:begin
// 						QKV[1+8*0] <= multi_out[0];
// 						QKV[1+8*1] <= multi_out[1];
// 						QKV[1+8*2] <= multi_out[2];
// 						QKV[1+8*3] <= multi_out[3];
// 						QKV[1+8*4] <= multi_out[4];
// 						QKV[1+8*5] <= multi_out[5];
// 						QKV[1+8*6] <= multi_out[6];
// 						QKV[1+8*7] <= multi_out41;
// 					end
// 					59:begin
// 						QKV[2+8*0] <= multi_out[0];
// 						QKV[2+8*1] <= multi_out[1];
// 						QKV[2+8*2] <= multi_out[2];
// 						QKV[2+8*3] <= multi_out[3];
// 						QKV[2+8*4] <= multi_out[4];
// 						QKV[2+8*5] <= multi_out[5];
// 						QKV[2+8*6] <= multi_out[6];
// 						QKV[2+8*7] <= multi_out41;
// 					end
// 					60:begin
// 						QKV[3+8*0] <= multi_out[0];
// 						QKV[3+8*1] <= multi_out[1];
// 						QKV[3+8*2] <= multi_out[2];
// 						QKV[3+8*3] <= multi_out[3];
// 						QKV[3+8*4] <= multi_out[4];
// 						QKV[3+8*5] <= multi_out[5];
// 						QKV[3+8*6] <= multi_out[6];
// 						QKV[3+8*7] <= multi_out41;
// 					end
// 					61:begin
// 						QKV[4+8*0] <= multi_out[0];
// 						QKV[4+8*1] <= multi_out[1];
// 						QKV[4+8*2] <= multi_out[2];
// 						QKV[4+8*3] <= multi_out[3];
// 						QKV[4+8*4] <= multi_out[4];
// 						QKV[4+8*5] <= multi_out[5];
// 						QKV[4+8*6] <= multi_out[6];
// 						QKV[4+8*7] <= multi_out41;
// 					end
// 					62:begin
// 						QKV[5+8*0] <= multi_out[0];
// 						QKV[5+8*1] <= multi_out[1];
// 						QKV[5+8*2] <= multi_out[2];
// 						QKV[5+8*3] <= multi_out[3];
// 						QKV[5+8*4] <= multi_out[4];
// 						QKV[5+8*5] <= multi_out[5];
// 						QKV[5+8*6] <= multi_out[6];
// 						QKV[5+8*7] <= multi_out41;
// 					end
// 					63:begin
// 						QKV[6+8*0] <= multi_out[0];
// 						QKV[6+8*1] <= multi_out[1];
// 						QKV[6+8*2] <= multi_out[2];
// 						QKV[6+8*3] <= multi_out[3];
// 						QKV[6+8*4] <= multi_out[4];
// 						QKV[6+8*5] <= multi_out[5];
// 						QKV[6+8*6] <= multi_out[6];
						
// 					end
// 				endcase	
// 			end else if(flag_qkv==3)begin
// 				QKV[7+8*0] <= multi_out[0];
// 				QKV[7+8*1] <= multi_out[1];
// 				QKV[7+8*2] <= multi_out[2];
// 				QKV[7+8*3] <= multi_out[3];
// 				QKV[7+8*4] <= multi_out[4];
// 				QKV[7+8*5] <= multi_out[5];
// 				QKV[7+8*6] <= multi_out[6];
// 			end
// 		end else if(state==OUT)begin
// 			if(A_cnt==2) begin
// 				QKV[6+8*7] <= multi_out[0];
// 				QKV[7+8*7] <= multi_out[1];
// 			end
// 		end
// 	end
// end


// always @(negedge rst_n or posedge clk) begin
// 	if(!rst_n)begin
// 		P_store[0]<=0;
// 	end	else begin
// 		if(state==INPUT)begin
// 			if(flag_qkv==1)begin
// 				case(in_cnt)
// 				//存Ktranspose array
// 					57:begin
// 						P_store[0+8*0] <= multi_out[0];
// 					end
// 				endcase
// 			end else if(flag_qkv==2)begin
// 				if(in_cnt==0)begin
// 				end else if(in_cnt<=8) begin//QKT
// 					case(in_cnt)
// 						1:begin
// 							P_store[8*0] <= multi_out[0];
// 						end
// 						2:begin
// 							P_store[8*0]<=comp_out;
// 						end
// 					endcase
// 				end else begin
// 				end
// 			end 
// 		end
// 	end
// end

// always @(negedge rst_n or posedge clk) begin
// 	if(!rst_n)begin
// 		P_store[1]<=0;
// 	end	else begin
// 		if(state==INPUT)begin
// 			if(flag_qkv==1)begin
// 				case(in_cnt)
// 				//存Ktranspose array
// 					57:begin
// 						P_store[1+8*0] <= multi_out[0];
// 					end
// 				endcase
// 			end else if(flag_qkv==2)begin
// 				if(in_cnt==0)begin
// 				end else if(in_cnt<=8) begin//QKT
// 					case(in_cnt)
// 						2:begin
// 							P_store[1+8*0] <= multi_out[0];
// 						end
// 						3:begin
// 							P_store[1+8*0]<=comp_out;
// 						end
// 					endcase
// 				end 
// 			end
// 		end
// 	end
// end

// Always block for P_store[0]
always @(negedge rst_n or posedge clk_gated_P[0]) begin
    if (!rst_n) begin
        P_store[0] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[0] <= multi_out[0];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 1) begin
                    P_store[0] <= multi_out[0];
                end else if (in_cnt == 2) begin
                    P_store[0] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[1]
always @(negedge rst_n or posedge clk_gated_P[1]) begin
    if (!rst_n) begin
        P_store[1] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[1] <= multi_out[1];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 2) begin
                    P_store[1] <= multi_out[0];
                end else if (in_cnt == 3) begin
                    P_store[1] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[2]
always @(negedge rst_n or posedge clk_gated_P[2]) begin
    if (!rst_n) begin
        P_store[2] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[2] <= multi_out[2];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 3) begin
                    P_store[2] <= multi_out[0];
                end else if (in_cnt == 4) begin
                    P_store[2] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[3]
always @(negedge rst_n or posedge clk_gated_P[3]) begin
    if (!rst_n) begin
        P_store[3] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[3] <= multi_out[3];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 4) begin
                    P_store[3] <= multi_out[0];
                end else if (in_cnt == 5) begin
                    P_store[3] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[4]
always @(negedge rst_n or posedge clk_gated_P[4]) begin
    if (!rst_n) begin
        P_store[4] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[4] <= multi_out[4];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 5) begin
                    P_store[4] <= multi_out[0];
                end else if (in_cnt == 6) begin
                    P_store[4] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[5]
always @(negedge rst_n or posedge clk_gated_P[5]) begin
    if (!rst_n) begin
        P_store[5] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[5] <= multi_out[5];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 6) begin
                    P_store[5] <= multi_out[0];
                end else if (in_cnt == 7) begin
                    P_store[5] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[6]
always @(negedge rst_n or posedge clk_gated_P[6]) begin
    if (!rst_n) begin
        P_store[6] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[6] <= multi_out[6];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 7) begin
                    P_store[6] <= multi_out[0];
                end else if (in_cnt == 8) begin
                    P_store[6] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[7]
always @(negedge rst_n or posedge clk_gated_P[7]) begin
    if (!rst_n) begin
        P_store[7] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 57) begin
                    P_store[7] <= multi_out41;
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 8) begin
                    P_store[7] <= multi_out[0];
                end else if (in_cnt == 9) begin
                    P_store[7] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[8]
always @(negedge rst_n or posedge clk_gated_P[8]) begin
    if (!rst_n) begin
        P_store[8] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[8] <= multi_out[0];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 1) begin
                    P_store[8] <= multi_out[1];
                end else if (in_cnt == 10) begin
                    P_store[8] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[9]
always @(negedge rst_n or posedge clk_gated_P[9]) begin
    if (!rst_n) begin
        P_store[9] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[9] <= multi_out[1];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 2) begin
                    P_store[9] <= multi_out[1];
                end else if (in_cnt == 11) begin
                    P_store[9] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[10]
always @(negedge rst_n or posedge clk_gated_P[10]) begin
    if (!rst_n) begin
        P_store[10] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[10] <= multi_out[2];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 3) begin
                    P_store[10] <= multi_out[1];
                end else if (in_cnt == 12) begin
                    P_store[10] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[11]
always @(negedge rst_n or posedge clk_gated_P[11]) begin
    if (!rst_n) begin
        P_store[11] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[11] <= multi_out[3];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 4) begin
                    P_store[11] <= multi_out[1];
                end else if (in_cnt == 13) begin
                    P_store[11] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[12]
always @(negedge rst_n or posedge clk_gated_P[12]) begin
    if (!rst_n) begin
        P_store[12] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[12] <= multi_out[4];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 5) begin
                    P_store[12] <= multi_out[1];
                end else if (in_cnt == 14) begin
                    P_store[12] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[13]
always @(negedge rst_n or posedge clk_gated_P[13]) begin
    if (!rst_n) begin
        P_store[13] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[13] <= multi_out[5];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 6) begin
                    P_store[13] <= multi_out[1];
                end else if (in_cnt == 15) begin
                    P_store[13] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[14]
always @(negedge rst_n or posedge clk_gated_P[14]) begin
    if (!rst_n) begin
        P_store[14] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[14] <= multi_out[6];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 7) begin
                    P_store[14] <= multi_out[1];
                end else if (in_cnt == 16) begin
                    P_store[14] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[15]
always @(negedge rst_n or posedge clk_gated_P[15]) begin
    if (!rst_n) begin
        P_store[15] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 58) begin
                    P_store[15] <= multi_out41;
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 8) begin
                    P_store[15] <= multi_out[1];
                end else if (in_cnt == 17) begin
                    P_store[15] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[16]
always @(negedge rst_n or posedge clk_gated_P[16]) begin
    if (!rst_n) begin
        P_store[16] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[16] <= multi_out[0];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 1) begin
                    P_store[16] <= multi_out[2];
                end else if (in_cnt == 18) begin
                    P_store[16] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[17]
always @(negedge rst_n or posedge clk_gated_P[17]) begin
    if (!rst_n) begin
        P_store[17] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[17] <= multi_out[1];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 2) begin
                    P_store[17] <= multi_out[2];
                end else if (in_cnt == 19) begin
                    P_store[17] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[18]
always @(negedge rst_n or posedge clk_gated_P[18]) begin
    if (!rst_n) begin
        P_store[18] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[18] <= multi_out[2];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 3) begin
                    P_store[18] <= multi_out[2];
                end else if (in_cnt == 20) begin
                    P_store[18] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[19]
always @(negedge rst_n or posedge clk_gated_P[19]) begin
    if (!rst_n) begin
        P_store[19] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[19] <= multi_out[3];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 4) begin
                    P_store[19] <= multi_out[2];
                end else if (in_cnt == 21) begin
                    P_store[19] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[20]
always @(negedge rst_n or posedge clk_gated_P[20]) begin
    if (!rst_n) begin
        P_store[20] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[20] <= multi_out[4];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 5) begin
                    P_store[20] <= multi_out[2];
                end else if (in_cnt == 22) begin
                    P_store[20] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[21]
always @(negedge rst_n or posedge clk_gated_P[21]) begin
    if (!rst_n) begin
        P_store[21] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[21] <= multi_out[5];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 6) begin
                    P_store[21] <= multi_out[2];
                end else if (in_cnt == 23) begin
                    P_store[21] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[22]
always @(negedge rst_n or posedge clk_gated_P[22]) begin
    if (!rst_n) begin
        P_store[22] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[22] <= multi_out[6];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 7) begin
                    P_store[22] <= multi_out[2];
                end else if (in_cnt == 24) begin
                    P_store[22] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[23]
always @(negedge rst_n or posedge clk_gated_P[23]) begin
    if (!rst_n) begin
        P_store[23] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 59) begin
                    P_store[23] <= multi_out41;
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 8) begin
                    P_store[23] <= multi_out[2];
                end else if (in_cnt == 25) begin
                    P_store[23] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[24]
always @(negedge rst_n or posedge clk_gated_P[24]) begin
    if (!rst_n) begin
        P_store[24] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[24] <= multi_out[0];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 1) begin
                    P_store[24] <= multi_out[3];
                end else if (in_cnt == 26) begin
                    P_store[24] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[25]
always @(negedge rst_n or posedge clk_gated_P[25]) begin
    if (!rst_n) begin
        P_store[25] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[25] <= multi_out[1];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 2) begin
                    P_store[25] <= multi_out[3];
                end else if (in_cnt == 27) begin
                    P_store[25] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[26]
always @(negedge rst_n or posedge clk_gated_P[26]) begin
    if (!rst_n) begin
        P_store[26] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[26] <= multi_out[2];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 3) begin
                    P_store[26] <= multi_out[3];
                end else if (in_cnt == 28) begin
                    P_store[26] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[27]
always @(negedge rst_n or posedge clk_gated_P[27]) begin
    if (!rst_n) begin
        P_store[27] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[27] <= multi_out[3];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 4) begin
                    P_store[27] <= multi_out[3];
                end else if (in_cnt == 29) begin
                    P_store[27] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[28]
always @(negedge rst_n or posedge clk_gated_P[28]) begin
    if (!rst_n) begin
        P_store[28] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[28] <= multi_out[4];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 5) begin
                    P_store[28] <= multi_out[3];
                end else if (in_cnt == 30) begin
                    P_store[28] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[29]
always @(negedge rst_n or posedge clk_gated_P[29]) begin
    if (!rst_n) begin
        P_store[29] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[29] <= multi_out[5];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 6) begin
                    P_store[29] <= multi_out[3];
                end else if (in_cnt == 31) begin
                    P_store[29] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[30]
always @(negedge rst_n or posedge clk_gated_P[30]) begin
    if (!rst_n) begin
        P_store[30] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[30] <= multi_out[6];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 7) begin
                    P_store[30] <= multi_out[3];
                end else if (in_cnt == 32) begin
                    P_store[30] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[31]
always @(negedge rst_n or posedge clk_gated_P[31]) begin
    if (!rst_n) begin
        P_store[31] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 60) begin
                    P_store[31] <= multi_out41;
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 8) begin
                    P_store[31] <= multi_out[3];
                end else if (in_cnt == 33) begin
                    P_store[31] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[32]
always @(negedge rst_n or posedge clk_gated_P[32]) begin
    if (!rst_n) begin
        P_store[32] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[32] <= multi_out[0];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 1) begin
                    P_store[32] <= multi_out[4];
                end else if (in_cnt == 34) begin
                    P_store[32] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[33]
always @(negedge rst_n or posedge clk_gated_P[33]) begin
    if (!rst_n) begin
        P_store[33] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[33] <= multi_out[1];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 2) begin
                    P_store[33] <= multi_out[4];
                end else if (in_cnt == 35) begin
                    P_store[33] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[34]
always @(negedge rst_n or posedge clk_gated_P[34]) begin
    if (!rst_n) begin
        P_store[34] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[34] <= multi_out[2];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 3) begin
                    P_store[34] <= multi_out[4];
                end else if (in_cnt == 36) begin
                    P_store[34] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[35]
always @(negedge rst_n or posedge clk_gated_P[35]) begin
    if (!rst_n) begin
        P_store[35] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[35] <= multi_out[3];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 4) begin
                    P_store[35] <= multi_out[4];
                end else if (in_cnt == 37) begin
                    P_store[35] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[36]
always @(negedge rst_n or posedge clk_gated_P[36]) begin
    if (!rst_n) begin
        P_store[36] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[36] <= multi_out[4];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 5) begin
                    P_store[36] <= multi_out[4];
                end else if (in_cnt == 38) begin
                    P_store[36] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[37]
always @(negedge rst_n or posedge clk_gated_P[37]) begin
    if (!rst_n) begin
        P_store[37] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[37] <= multi_out[5];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 6) begin
                    P_store[37] <= multi_out[4];
                end else if (in_cnt == 39) begin
                    P_store[37] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[38]
always @(negedge rst_n or posedge clk_gated_P[38]) begin
    if (!rst_n) begin
        P_store[38] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[38] <= multi_out[6];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 7) begin
                    P_store[38] <= multi_out[4];
                end else if (in_cnt == 40) begin
                    P_store[38] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[39]
always @(negedge rst_n or posedge clk_gated_P[39]) begin
    if (!rst_n) begin
        P_store[39] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 61) begin
                    P_store[39] <= multi_out41;
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 8) begin
                    P_store[39] <= multi_out[4];
                end else if (in_cnt == 41) begin
                    P_store[39] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[40]
always @(negedge rst_n or posedge clk_gated_P[40]) begin
    if (!rst_n) begin
        P_store[40] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[40] <= multi_out[0];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 1) begin
                    P_store[40] <= multi_out[5];
                end else if (in_cnt == 42) begin
                    P_store[40] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[41]
always @(negedge rst_n or posedge clk_gated_P[41]) begin
    if (!rst_n) begin
        P_store[41] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[41] <= multi_out[1];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 2) begin
                    P_store[41] <= multi_out[5];
                end else if (in_cnt == 43) begin
                    P_store[41] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[42]
always @(negedge rst_n or posedge clk_gated_P[42]) begin
    if (!rst_n) begin
        P_store[42] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[42] <= multi_out[2];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 3) begin
                    P_store[42] <= multi_out[5];
                end else if (in_cnt == 44) begin
                    P_store[42] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[43]
always @(negedge rst_n or posedge clk_gated_P[43]) begin
    if (!rst_n) begin
        P_store[43] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[43] <= multi_out[3];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 4) begin
                    P_store[43] <= multi_out[5];
                end else if (in_cnt == 45) begin
                    P_store[43] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[44]
always @(negedge rst_n or posedge clk_gated_P[44]) begin
    if (!rst_n) begin
        P_store[44] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[44] <= multi_out[4];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 5) begin
                    P_store[44] <= multi_out[5];
                end else if (in_cnt == 46) begin
                    P_store[44] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[45]
always @(negedge rst_n or posedge clk_gated_P[45]) begin
    if (!rst_n) begin
        P_store[45] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[45] <= multi_out[5];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 6) begin
                    P_store[45] <= multi_out[5];
                end else if (in_cnt == 47) begin
                    P_store[45] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[46]
always @(negedge rst_n or posedge clk_gated_P[46]) begin
    if (!rst_n) begin
        P_store[46] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[46] <= multi_out[6];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 7) begin
                    P_store[46] <= multi_out[5];
                end else if (in_cnt == 48) begin
                    P_store[46] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[47]
always @(negedge rst_n or posedge clk_gated_P[47]) begin
    if (!rst_n) begin
        P_store[47] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 62) begin
                    P_store[47] <= multi_out41;
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 8) begin
                    P_store[47] <= multi_out[5];
                end else if (in_cnt == 49) begin
                    P_store[47] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[48]
always @(negedge rst_n or posedge clk_gated_P[48]) begin
    if (!rst_n) begin
        P_store[48] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[48] <= multi_out[0];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 1) begin
                    P_store[48] <= multi_out[6];
                end else if (in_cnt == 50) begin
                    P_store[48] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[49]
always @(negedge rst_n or posedge clk_gated_P[49]) begin
    if (!rst_n) begin
        P_store[49] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[49] <= multi_out[1];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 2) begin
                    P_store[49] <= multi_out[6];
                end else if (in_cnt == 51) begin
                    P_store[49] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[50]
always @(negedge rst_n or posedge clk_gated_P[50]) begin
    if (!rst_n) begin
        P_store[50] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[50] <= multi_out[2];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 3) begin
                    P_store[50] <= multi_out[6];
                end else if (in_cnt == 52) begin
                    P_store[50] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[51]
always @(negedge rst_n or posedge clk_gated_P[51]) begin
    if (!rst_n) begin
        P_store[51] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[51] <= multi_out[3];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 4) begin
                    P_store[51] <= multi_out[6];
                end else if (in_cnt == 53) begin
                    P_store[51] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[52]
always @(negedge rst_n or posedge clk_gated_P[52]) begin
    if (!rst_n) begin
        P_store[52] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[52] <= multi_out[4];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 5) begin
                    P_store[52] <= multi_out[6];
                end else if (in_cnt == 54) begin
                    P_store[52] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[53]
always @(negedge rst_n or posedge clk_gated_P[53]) begin
    if (!rst_n) begin
        P_store[53] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[53] <= multi_out[5];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 6) begin
                    P_store[53] <= multi_out[6];
                end else if (in_cnt == 55) begin
                    P_store[53] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[54]
always @(negedge rst_n or posedge clk_gated_P[54]) begin
    if (!rst_n) begin
        P_store[54] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[54] <= multi_out[6];
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 7) begin
                    P_store[54] <= multi_out[6];
                end else if (in_cnt == 56) begin
                    P_store[54] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[55]
always @(negedge rst_n or posedge clk_gated_P[55]) begin
    if (!rst_n) begin
        P_store[55] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 1) begin
                if (in_cnt == 63) begin
                    P_store[55] <= multi_out41;
                end
            end
            else if (flag_qkv == 2) begin
                if (in_cnt == 8) begin
                    P_store[55] <= multi_out[6];
                end else if (in_cnt == 57) begin
                    P_store[55] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[56]
always @(negedge rst_n or posedge clk_gated_P[56]) begin
    if (!rst_n) begin
        P_store[56] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[56] <= multi_out[0];
				end else if (in_cnt == 1) begin
                    P_store[56] <= multi_out41;
                end else if (in_cnt == 58) begin
                    P_store[56] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[57]
always @(negedge rst_n or posedge clk_gated_P[57]) begin
    if (!rst_n) begin
        P_store[57] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[57] <= multi_out[1];
				end else if (in_cnt == 2) begin
                    P_store[57] <= multi_out41;
                end else if (in_cnt == 59) begin
                    P_store[57] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[58]
always @(negedge rst_n or posedge clk_gated_P[58]) begin
    if (!rst_n) begin
        P_store[58] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[58] <= multi_out[2];
				end if (in_cnt == 3) begin
                    P_store[58] <= multi_out41;
                end else if (in_cnt == 60) begin
                    P_store[58] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[59]
always @(negedge rst_n or posedge clk_gated_P[59]) begin
    if (!rst_n) begin
        P_store[59] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[59] <= multi_out[3];
				end else if (in_cnt == 4) begin
                    P_store[59] <= multi_out41;
                end else if (in_cnt == 61) begin
                    P_store[59] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[60]
always @(negedge rst_n or posedge clk_gated_P[60]) begin
    if (!rst_n) begin
        P_store[60] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[60] <= multi_out[4];
				end else if (in_cnt == 5) begin
                    P_store[60] <= multi_out41;
                end else if (in_cnt == 62) begin
                    P_store[60] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[61]
always @(negedge rst_n or posedge clk_gated_P[61]) begin
    if (!rst_n) begin
        P_store[61] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[61] <= multi_out[5];
				end else if (in_cnt == 6) begin
                    P_store[61] <= multi_out41;
                end else if (in_cnt == 63) begin
                    P_store[61] <= comp_out;
                end
            end
        end
    end
end

// Always block for P_store[62]
always @(negedge rst_n or posedge clk_gated_P[62]) begin
    if (!rst_n) begin
        P_store[62] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[62] <= multi_out[6];
				end else if (in_cnt == 7) begin
                    P_store[62] <= multi_out41;
                end 
            end
            else if (flag_qkv == 3) begin
                P_store[62] <= comp_out;
            end
        end
    end
end

// Always block for P_store[63]
always @(negedge rst_n or posedge clk_gated_P[63]) begin
    if (!rst_n) begin
        P_store[63] <= 0;
    end else begin
        if (state == INPUT) begin
            if (flag_qkv == 2) begin
				if(in_cnt==0)begin
					P_store[63] <= multi_out41;
				end if (in_cnt == 8) begin
                    P_store[63] <= multi_out41;
                end 
            end
        end else if (flag_qkv == 3 && A_cnt <= 2) begin
            P_store[63] <= comp_out;
        end 
    end
end



// // //12 12 12 12 12 4
// always @(negedge rst_n or posedge clk) begin
// 	if(!rst_n)begin
// 		for(i=0;i<64;i=i+1)begin
// 			P_store[i]<=0;
// 		end 
// 	end	else begin
// 		if(state==INPUT)begin
// 			if(flag_qkv==1)begin
// 				case(in_cnt)
// 				//存Ktranspose arrayL
// 					57:begin
// 						P_store[0] <= multi_out[0];
// 						P_store[1] <= multi_out[1];
// 						P_store[2] <= multi_out[2];
// 						P_store[3] <= multi_out[3];
// 						P_store[4] <= multi_out[4];
// 						P_store[5] <= multi_out[5];
// 						P_store[6] <= multi_out[6];
// 						P_store[7] <= multi_out41;
// 					end
// 					58:begin
// 						P_store[0+8*1] <= multi_out[0];
// 						P_store[1+8*1] <= multi_out[1];
// 						P_store[2+8*1] <= multi_out[2];
// 						P_store[3+8*1] <= multi_out[3];
// 						P_store[4+8*1] <= multi_out[4];
// 						P_store[5+8*1] <= multi_out[5];
// 						P_store[6+8*1] <= multi_out[6];
// 						P_store[7+8*1] <= multi_out41;
// 					end
// 					59:begin
// 						P_store[0+8*2] <= multi_out[0];
// 						P_store[1+8*2] <= multi_out[1];
// 						P_store[2+8*2] <= multi_out[2];
// 						P_store[3+8*2] <= multi_out[3];
// 						P_store[4+8*2] <= multi_out[4];
// 						P_store[5+8*2] <= multi_out[5];
// 						P_store[6+8*2] <= multi_out[6];
// 						P_store[7+8*2] <= multi_out41;
// 					end
// 					60:begin
// 						P_store[0+8*3] <= multi_out[0];
// 						P_store[1+8*3] <= multi_out[1];
// 						P_store[2+8*3] <= multi_out[2];
// 						P_store[3+8*3] <= multi_out[3];
// 						P_store[4+8*3] <= multi_out[4];
// 						P_store[5+8*3] <= multi_out[5];
// 						P_store[6+8*3] <= multi_out[6];
// 						P_store[7+8*3] <= multi_out41;
// 					end
// 					61:begin
// 						P_store[0+8*4] <= multi_out[0];
// 						P_store[1+8*4] <= multi_out[1];
// 						P_store[2+8*4] <= multi_out[2];
// 						P_store[3+8*4] <= multi_out[3];
// 						P_store[4+8*4] <= multi_out[4];
// 						P_store[5+8*4] <= multi_out[5];
// 						P_store[6+8*4] <= multi_out[6];
// 						P_store[7+8*4] <= multi_out41;
// 					end
// 					62:begin
// 						P_store[0+8*5] <= multi_out[0];
// 						P_store[1+8*5] <= multi_out[1];
// 						P_store[2+8*5] <= multi_out[2];
// 						P_store[3+8*5] <= multi_out[3];
// 						P_store[4+8*5] <= multi_out[4];
// 						P_store[5+8*5] <= multi_out[5];
// 						P_store[6+8*5] <= multi_out[6];
// 						P_store[7+8*5] <= multi_out41;
// 					end
// 					63:begin
// 						P_store[0+8*6] <= multi_out[0];
// 						P_store[1+8*6] <= multi_out[1];
// 						P_store[2+8*6] <= multi_out[2];
// 						P_store[3+8*6] <= multi_out[3];
// 						P_store[4+8*6] <= multi_out[4];
// 						P_store[5+8*6] <= multi_out[5];
// 						P_store[6+8*6] <= multi_out[6];
// 						P_store[7+8*6] <= multi_out41;
// 					end
// 				endcase
// 			end else if(flag_qkv==2)begin
// 				if(in_cnt==0)begin
// 					P_store[0+8*7] <= multi_out[0];
// 					P_store[1+8*7] <= multi_out[1];
// 					P_store[2+8*7] <= multi_out[2];
// 					P_store[3+8*7] <= multi_out[3];
// 					P_store[4+8*7] <= multi_out[4];
// 					P_store[5+8*7] <= multi_out[5];
// 					P_store[6+8*7] <= multi_out[6];
// 					P_store[7+8*7] <= multi_out41;
// 				end else if(in_cnt<=8) begin//QKT
// 					case(in_cnt)
// 						1:begin
// 							P_store[8*0] <= multi_out[0];
// 							P_store[8*1] <= multi_out[1];
// 							P_store[8*2] <= multi_out[2];
// 							P_store[8*3] <= multi_out[3];
// 							P_store[8*4] <= multi_out[4];
// 							P_store[8*5] <= multi_out[5];
// 							P_store[8*6] <= multi_out[6];
// 							P_store[8*7] <= multi_out41;
// 						end
// 						2:begin
// 							P_store[1+8*0] <= multi_out[0];
// 							P_store[1+8*1] <= multi_out[1];
// 							P_store[1+8*2] <= multi_out[2];
// 							P_store[1+8*3] <= multi_out[3];
// 							P_store[1+8*4] <= multi_out[4];
// 							P_store[1+8*5] <= multi_out[5];
// 							P_store[1+8*6] <= multi_out[6];
// 							P_store[1+8*7] <= multi_out41;
// 							P_store[B_cnt]<=comp_out;
// 						end
// 						3:begin
// 							P_store[2+8*0] <= multi_out[0];
// 							P_store[2+8*1] <= multi_out[1];
// 							P_store[2+8*2] <= multi_out[2];
// 							P_store[2+8*3] <= multi_out[3];
// 							P_store[2+8*4] <= multi_out[4];
// 							P_store[2+8*5] <= multi_out[5];
// 							P_store[2+8*6] <= multi_out[6];
// 							P_store[2+8*7] <= multi_out41;
// 							P_store[B_cnt]<=comp_out;
// 						end
// 						4:begin
// 							P_store[3+8*0] <= multi_out[0];
// 							P_store[3+8*1] <= multi_out[1];
// 							P_store[3+8*2] <= multi_out[2];
// 							P_store[3+8*3] <= multi_out[3];
// 							P_store[3+8*4] <= multi_out[4];
// 							P_store[3+8*5] <= multi_out[5];
// 							P_store[3+8*6] <= multi_out[6];
// 							P_store[3+8*7] <= multi_out41;
// 							P_store[B_cnt]<=comp_out;
// 						end
// 						5:begin
// 							P_store[4+8*0] <= multi_out[0];
// 							P_store[4+8*1] <= multi_out[1];
// 							P_store[4+8*2] <= multi_out[2];
// 							P_store[4+8*3] <= multi_out[3];
// 							P_store[4+8*4] <= multi_out[4];
// 							P_store[4+8*5] <= multi_out[5];
// 							P_store[4+8*6] <= multi_out[6];
// 							P_store[4+8*7] <= multi_out41;
// 							P_store[B_cnt]<=comp_out;
// 						end
// 						6:begin
// 							P_store[5+8*0] <= multi_out[0];
// 							P_store[5+8*1] <= multi_out[1];
// 							P_store[5+8*2] <= multi_out[2];
// 							P_store[5+8*3] <= multi_out[3];
// 							P_store[5+8*4] <= multi_out[4];
// 							P_store[5+8*5] <= multi_out[5];
// 							P_store[5+8*6] <= multi_out[6];
// 							P_store[5+8*7] <= multi_out41;
// 							P_store[B_cnt]<=comp_out;
// 						end
// 						7:begin
// 							P_store[6+8*0] <= multi_out[0];
// 							P_store[6+8*1] <= multi_out[1];
// 							P_store[6+8*2] <= multi_out[2];
// 							P_store[6+8*3] <= multi_out[3];
// 							P_store[6+8*4] <= multi_out[4];
// 							P_store[6+8*5] <= multi_out[5];
// 							P_store[6+8*6] <= multi_out[6];
// 							P_store[6+8*7] <= multi_out41;
// 							P_store[B_cnt]<=comp_out;
// 						end
// 						8:begin
// 							P_store[7+8*0] <= multi_out[0];
// 							P_store[7+8*1] <= multi_out[1];
// 							P_store[7+8*2] <= multi_out[2];
// 							P_store[7+8*3] <= multi_out[3];
// 							P_store[7+8*4] <= multi_out[4];
// 							P_store[7+8*5] <= multi_out[5];
// 							P_store[7+8*6] <= multi_out[6];
// 							P_store[7+8*7] <= multi_out41;
// 							P_store[B_cnt]<= comp_out;
// 						end
// 					endcase
// 				end else begin
// 					P_store[B_cnt]<= comp_out;
// 				end
// 			end else if(flag_qkv==3)begin
// 				P_store[B_cnt]<= comp_out;
// 			end
// 		end	else if(flag_qkv==3&&A_cnt<=2)begin
// 			P_store[B_cnt]<= comp_out;
// 		end
// 	end
// end


always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		A_cnt<=0;
	end else if(state==IDLE)begin
		A_cnt<=0;
	end	else begin
		if((flag_qkv==2&&in_cnt==63)||next_state==OUT)begin
			A_cnt <= A_cnt+1;
		end
	end
end

always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		out_cnt<=0;
	end else if(state==IDLE)begin
		out_cnt<=0;
	end	else if(state==OUT)begin
		out_cnt <= out_cnt+1;
	end
end

always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		B_cnt<=0;
	end else if(state==IDLE)begin
		B_cnt<=0;
	end	else begin
		if((flag_qkv==2&&in_cnt>=2)||(flag_qkv==3&&B_cnt==62))begin
			B_cnt <= B_cnt+1;
		end
	end
end



always @(*) begin
	if(!rst_n)begin
		out_data=0;
	end else if(state==OUT)begin
		out_data=out_data_store1;
	end else begin
		out_data=0;
	end
end	

always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		out_valid<=0;
	end else if(next_state==OUT)begin
		out_valid<=1;
	end else begin
		out_valid<=0;
	end
end	


always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		out_data_store<=0;
	end else if(B_cnt>=61)begin
		out_data_store<=multi_out41;
	end
end	

always @(negedge rst_n or posedge clk_gated[0]) begin
	if(!rst_n)begin
		out_data_store1<=0;
	end else if(next_state==OUT||state==OUT)begin
		out_data_store1<=out_data_store;
	end
end	

//==============================================//
//                  design                      //
//==============================================//

endmodule
