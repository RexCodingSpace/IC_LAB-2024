//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   ICLAB 2023 Fall
//   Lab04 Exercise		: Convolution Neural Network 
//   Author     		: Yu-Chi Lin (a6121461214.st12@nycu.edu.tw)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : CNN.v
//   Module Name : CNN
//   Release version : V1.0 (Release Date: 2024-10)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

module CNN(
    //Input Port
    clk,
    rst_n,
    in_valid,
    Img,
    Kernel_ch1,
    Kernel_ch2,
	Weight,
    Opt,

    //Output Port
    out_valid,
    out
    );


//---------------------------------------------------------------------
//   PARAMETER
//---------------------------------------------------------------------

// IEEE floating point parameter
parameter sig_width = 23;
parameter exp_width = 8;
parameter ieee_compliance = 0;
parameter arch_type = 0;
parameter arch = 0;
parameter faithful_round = 0;
//**//
parameter inst_sig_width = 23;
parameter inst_exp_width = 8;
parameter inst_ieee_compliance = 0;
parameter inst_arch_type = 0;
parameter inst_arch = 0;
parameter inst_faithful_round = 0;

parameter IDLE = 3'd0;
parameter IN = 3'd1;


input rst_n, clk, in_valid;
input [inst_sig_width+inst_exp_width:0] Img, Kernel_ch1, Kernel_ch2, Weight;
input Opt;

output reg	out_valid;
output reg [inst_sig_width+inst_exp_width:0] out;
//[31:0]


//---------------------------------------------------------------------
//   Reg & Wires
//---------------------------------------------------------------------
reg  state, next_state;
reg  [31:0]  Img_s [74:0];
reg  [31:0]  Kernel_ch1_s [11:0];
reg  [31:0]  Kernel_ch2_s[11:0];
reg  [31:0]  Weight_s [23:0];
reg  Opt_s;
reg  [31:0]  Out_s [2:0];
reg  [31:0]  Kernel_1_1[1:0],Kernel_1_2[1:0],Kernel_1_3[1:0],Kernel_1_4[1:0],Kernel_2_1[1:0],Kernel_2_2[1:0],Kernel_2_3[1:0],Kernel_2_4[1:0];
reg  [31:0]  Img_array1_1,Img_array1_2,Img_array1_3,Img_array1_4,Img_array2_1,Img_array2_2,Img_array2_3,Img_array2_4;
reg [31:0]  Img_array[2:0][6:0][6:0];
reg [31:0]  convolution_array_1[2:0][5:0][5:0];
reg [31:0]  convolution_array_2[2:0][5:0][5:0];
reg [31:0]  convolution_array_1o[1:0];
reg [31:0]  convolution_array_2o[1:0];
reg [31:0]  out_ch1_s[5:0][5:0];
reg [31:0]  out_ch2_s[5:0][5:0];
reg [31:0]  out_ch[5:0][5:0];
reg [6:0]  max_xcnt,max_ycnt;
reg [31:0] convolution_array_in2[2:0],convolution_array_in1[2:0],out_ch1,out_ch2;
reg [31:0] fc_exp_1,act_up_s,act_down_s;

reg [31:0] fc_up[2:0];
reg [31:0] out_channel[8:0];
reg [31:0] act_1,act_2,act_3,act_4;
reg [31:0] max_exp,max_exp_neg,act_up,act_down,max_out_neg_in;
reg [31:0] act_down_after,act_out,act_out_s[7:0],out_ss;
reg [31:0] fc_out1,fc_out_s[2:0],dot_out1,dot_out2;
reg [2:0] out_cnt;
reg [1:0]channel_cnt_1,channel_cnt_2;
reg [2:0]x_cnt_1,x_cnt_2,y_cnt_1,y_cnt_2;
reg [3:0]kernel_cnt;
reg [31:0]  max_out_in,max_out[7:0];
reg [31:0] big0_1, big0_2, big1_1, big1_2, big2_1, big2_2, big3_1, big3_2;

reg [6:0]cnt;
integer i,j,k,w;
//---------------------------------------------------------------------
// IPs
//---------------------------------------------------------------------
// DW_fp_add #(sig_width, exp_width, ieee_compliance)
// U1 ( .a(Kernel_ch1), .b(Kernel_ch2), .rnd(3'b000), .z(Out_s[0]), .status() );

//---------------------------------------------------------------------
// FSM
//---------------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= IDLE;
    else
        state <= next_state;
end

always @(*) begin
    case (state)
        IDLE: begin
            if (in_valid)
                next_state = IN;
            else
                next_state = IDLE;
        end 
        IN:begin
            if (cnt=='d96)
                next_state = IDLE;
            else
                next_state = IN;
        end

        default: next_state = IDLE;
    endcase
end


//---------------------------------------------------------------------
// Design
//---------------------------------------------------------------------
/////////////接線到array//////////////
always@(*)begin
    k=0;
    for(w=0;w<3;w=w+1)begin
        for(j=1;j<6;j=j+1)begin
            for(i=1;i<6;i=i+1)begin
                Img_array[w][i][j]=Img_s[k];
                k=k+1;
            end
        end
    end

    if(Opt_s==1'b1)begin
        ////1layer
        //補x
        Img_array[0][0][0]=Img_s[0];
        Img_array[0][6][0]=Img_s[4];
        Img_array[0][0][6]=Img_s[20];
        Img_array[0][6][6]=Img_s[24];
        for(i=1;i<6;i=i+1)begin
            Img_array[0][i][0]=Img_s[i-1];
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[0][i][6]=Img_s[i+19];
        end 
        //補y
        for(i=1;i<6;i=i+1)begin
            Img_array[0][0][i]=Img_s[(i*5)-5];
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[0][6][i]=Img_s[(i*5)-1];
        end 
        ////2layer
        //補x
        Img_array[1][0][0]=Img_s[25];
        Img_array[1][6][0]=Img_s[29];
        Img_array[1][0][6]=Img_s[45];
        Img_array[1][6][6]=Img_s[49];
        for(i=1;i<6;i=i+1)begin
            Img_array[1][i][0]=Img_s[24+i];
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[1][i][6]=Img_s[44+i];
        end 
        //補y
        for(i=1;i<6;i=i+1)begin
            Img_array[1][0][i]=Img_s[(i*5)+20];
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[1][6][i]=Img_s[(i*5)+24];
        end 
        ////3layer
        //補x
        Img_array[2][0][0]=Img_s[50];
        Img_array[2][6][0]=Img_s[54];
        Img_array[2][0][6]=Img_s[70];
        Img_array[2][6][6]=Img_s[74];
        for(i=1;i<6;i=i+1)begin
            Img_array[2][i][0]=Img_s[49+i];
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[2][i][6]=Img_s[69+i];
        end 
        //補y
        for(i=1;i<6;i=i+1)begin
            Img_array[2][0][i]=Img_s[(i*5)+45];
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[2][6][i]=Img_s[(i*5)+49];
        end 
    end else begin 
        ////1layer
        //補x
        Img_array[0][0][0]=32'b0;
        Img_array[0][6][0]=32'b0;
        Img_array[0][0][6]=32'b0;
        Img_array[0][6][6]=32'b0;
        for(i=1;i<6;i=i+1)begin
            Img_array[0][i][0]=32'b0;
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[0][i][6]=32'b0;
        end 
        //補y
        for(i=1;i<6;i=i+1)begin
            Img_array[0][0][i]=32'b0;
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[0][6][i]=32'b0;
        end 
        ////2layer
        //補x
        Img_array[1][0][0]=32'b0;
        Img_array[1][6][0]=32'b0;
        Img_array[1][0][6]=32'b0;
        Img_array[1][6][6]=32'b0;
        for(i=1;i<6;i=i+1)begin
            Img_array[1][i][0]=32'b0;
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[1][i][6]=32'b0;
        end 
        //補y
        for(i=1;i<6;i=i+1)begin
            Img_array[1][0][i]=32'b0;
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[1][6][i]=32'b0;
        end 
        ////3layer
        //補x
        Img_array[2][0][0]=32'b0;
        Img_array[2][6][0]=32'b0;
        Img_array[2][0][6]=32'b0;
        Img_array[2][6][6]=32'b0;
        for(i=1;i<6;i=i+1)begin
            Img_array[2][i][0]=32'b0;
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[2][i][6]=32'b0;
        end 
        //補y
        for(i=1;i<6;i=i+1)begin
            Img_array[2][0][i]=32'b0;
        end 
        for(i=1;i<6;i=i+1)begin
            Img_array[2][6][i]=32'b0;
        end 
    end
end


DW_fp_dp4 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)
dp1 (
    .a(Img_array1_1),
    .b(Kernel_1_1[0]),
    .c(Img_array1_2),
    .d(Kernel_1_2[0]),
    .e(Img_array1_3),
    .f(Kernel_1_3[0]),
    .g(Img_array1_4),
    .h(Kernel_1_4[0]),
    .rnd(3'b000),
    .z(convolution_array_1o[0]),
    .status()
);
DW_fp_dp4 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)
dp2 (
    .a(Img_array2_1),
    .b(Kernel_2_1[0]),
    .c(Img_array2_2),
    .d(Kernel_2_2[0]),
    .e(Img_array2_3),
    .f(Kernel_2_3[0]),
    .g(Img_array2_4),
    .h(Kernel_2_4[0]),
    .rnd(3'b000),
    .z(convolution_array_2o[0]),
    .status()
);

DW_fp_dp4 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)
dp3 (
    .a(Img_array1_1),
    .b(Kernel_1_1[1]),
    .c(Img_array1_2),
    .d(Kernel_1_2[1]),
    .e(Img_array1_3),
    .f(Kernel_1_3[1]),
    .g(Img_array1_4),
    .h(Kernel_1_4[1]),
    .rnd(3'b000),
    .z(convolution_array_1o[1]),
    .status()
);
DW_fp_dp4 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)
dp4 (
    .a(Img_array2_1),
    .b(Kernel_2_1[1]),
    .c(Img_array2_2),
    .d(Kernel_2_2[1]),
    .e(Img_array2_3),
    .f(Kernel_2_3[1]),
    .g(Img_array2_4),
    .h(Kernel_2_4[1]),
    .rnd(3'b000),
    .z(convolution_array_2o[1]),
    .status()
);

always @(posedge clk) begin
    if (cnt>='d4&&cnt<='d39)begin
        convolution_array_1[channel_cnt_1][x_cnt_1][y_cnt_1]<=convolution_array_1o[0];
    end else if(cnt>='d51&&cnt<'d87)begin 
        convolution_array_1[channel_cnt_1][x_cnt_1][y_cnt_1]<=convolution_array_1o[0];
        convolution_array_1[channel_cnt_2][x_cnt_2][y_cnt_2]<=convolution_array_2o[0];
    end else begin
        convolution_array_1[channel_cnt_1][x_cnt_1][y_cnt_1]<=convolution_array_1[channel_cnt_1][x_cnt_1][y_cnt_1];
        convolution_array_1[channel_cnt_2][x_cnt_2][y_cnt_2]<=convolution_array_1[channel_cnt_2][x_cnt_2][y_cnt_2];
    end
end 


always @( posedge clk) begin
    if (cnt>='d4&&cnt<='d39)begin
        convolution_array_2[channel_cnt_1][x_cnt_1][y_cnt_1]<=convolution_array_1o[1];
    end else if(cnt>='d51&&cnt<'d87)begin 
        convolution_array_2[channel_cnt_1][x_cnt_1][y_cnt_1]<=convolution_array_1o[1];
        convolution_array_2[channel_cnt_2][x_cnt_2][y_cnt_2]<=convolution_array_2o[1];
    end else begin
        convolution_array_2[channel_cnt_1][x_cnt_1][y_cnt_1]<=convolution_array_2[channel_cnt_1][x_cnt_1][y_cnt_1];
        convolution_array_2[channel_cnt_2][x_cnt_2][y_cnt_2]<=convolution_array_2[channel_cnt_2][x_cnt_2][y_cnt_2];

    end
end 

always @(posedge clk) begin
    if(cnt>='d90&&cnt<'d92)begin
        fc_up[0]<=convolution_array_1o[0];
        fc_up[1]<=convolution_array_2o[0];
        fc_up[2]<=convolution_array_1o[1];
    end
end



always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Img_array1_1=Img_array[channel_cnt_1][x_cnt_1][y_cnt_1];
        Img_array2_1='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Img_array1_1=Img_array[channel_cnt_1][x_cnt_1][y_cnt_1];
        Img_array2_1=Img_array[channel_cnt_2][x_cnt_2][y_cnt_2];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Img_array1_1=act_out_s[0];
        Img_array2_1=act_out_s[0];
    end else if(cnt>='d92)begin 
        Img_array1_1=act_out_s[4];
        Img_array2_1=act_out_s[4];
    end else begin
        Img_array1_1='d0;
        Img_array2_1='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Img_array1_2=Img_array[channel_cnt_1][x_cnt_1+1][y_cnt_1];
        Img_array2_2='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Img_array1_2=Img_array[channel_cnt_1][x_cnt_1+1][y_cnt_1];
        Img_array2_2=Img_array[channel_cnt_2][x_cnt_2+1][y_cnt_2];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Img_array1_2=act_out_s[1];
        Img_array2_2=act_out_s[1];
    end else if(cnt>='d92)begin 
        Img_array1_2=act_out_s[5];
        Img_array2_2=act_out_s[5];
    end else begin
        Img_array1_2='d0;
        Img_array2_2='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Img_array1_3=Img_array[channel_cnt_1][x_cnt_1][y_cnt_1+1];
        Img_array2_3='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Img_array1_3=Img_array[channel_cnt_1][x_cnt_1][y_cnt_1+1];
        Img_array2_3=Img_array[channel_cnt_2][x_cnt_2][y_cnt_2+1];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Img_array1_3=act_out_s[2];
        Img_array2_3=act_out_s[2];
    end else if(cnt>='d92)begin 
        Img_array1_3=act_out_s[6];
        Img_array2_3=act_out_s[6];
    end else begin
        Img_array1_3='d0;
        Img_array2_3='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Img_array1_4=Img_array[channel_cnt_1][x_cnt_1+1][y_cnt_1+1];
        Img_array2_4='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Img_array1_4=Img_array[channel_cnt_1][x_cnt_1+1][y_cnt_1+1];
        Img_array2_4=Img_array[channel_cnt_2][x_cnt_2+1][y_cnt_2+1];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Img_array1_4=act_out_s[3];
        Img_array2_4=act_out_s[3];
    end else if(cnt>='d92)begin 
        Img_array1_4=act_out_s[7];
        Img_array2_4=act_out_s[7];
    end else begin
        Img_array1_4='d0;
        Img_array2_4='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_1[0]=Kernel_ch1_s[0];
        Kernel_2_1[0]='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Kernel_1_1[0]=Kernel_ch1_s[8];
        Kernel_2_1[0]=Kernel_ch1_s[4];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_1[0]=Weight_s[0];
        Kernel_2_1[0]=Weight_s[8];
    end else if(cnt>='d92)begin 
        Kernel_1_1[0]=Weight_s[4];
        Kernel_2_1[0]=Weight_s[12];
    end else begin
        Kernel_1_1[0]='d0;
        Kernel_2_1[0]='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_2[0]=Kernel_ch1_s[1];
        Kernel_2_2[0]='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Kernel_1_2[0]=Kernel_ch1_s[9];
        Kernel_2_2[0]=Kernel_ch1_s[5];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_2[0]=Weight_s[1];
        Kernel_2_2[0]=Weight_s[9];
    end else if(cnt>='d92)begin 
        Kernel_1_2[0]=Weight_s[5];
        Kernel_2_2[0]=Weight_s[13];
    end else begin
        Kernel_1_2[0]='d0;
        Kernel_2_2[0]='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_3[0]=Kernel_ch1_s[2];
        Kernel_2_3[0]='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Kernel_1_3[0]=Kernel_ch1_s[10];
        Kernel_2_3[0]=Kernel_ch1_s[6];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_3[0]=Weight_s[2];
        Kernel_2_3[0]=Weight_s[10];
    end else if(cnt>='d92)begin 
        Kernel_1_3[0]=Weight_s[6];
        Kernel_2_3[0]=Weight_s[14];
    end else begin
        Kernel_1_3[0]='d0;
        Kernel_2_3[0]='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_4[0]=Kernel_ch1_s[3];
        Kernel_2_4[0]='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Kernel_1_4[0]=Kernel_ch1_s[11];
        Kernel_2_4[0]=Kernel_ch1_s[7];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_4[0]=Weight_s[3];
        Kernel_2_4[0]=Weight_s[11];
    end else if(cnt>='d92)begin 
        Kernel_1_4[0]=Weight_s[7];
        Kernel_2_4[0]=Weight_s[15];
    end else begin
        Kernel_1_4[0]='d0;
        Kernel_2_4[0]='d0;
    end
end
//3吃kernel1[1]
always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_1[1]=Kernel_ch2_s[0];
        Kernel_2_1[1]='d0;
    end else if(cnt>='d51&&cnt<90)begin
        Kernel_1_1[1]=Kernel_ch2_s[8];
        Kernel_2_1[1]=Kernel_ch2_s[4];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_1[1]=Weight_s[16];
        Kernel_2_1[1]=Weight_s[20];
    end else if(cnt>='d92)begin 
        Kernel_1_1[1]=Weight_s[20];
        Kernel_2_1[1]=Weight_s[20];
    end else begin
        Kernel_1_1[1]='d0;
        Kernel_2_1[1]='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_2[1]=Kernel_ch2_s[1];
        Kernel_2_2[1]='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Kernel_1_2[1]=Kernel_ch2_s[9];
        Kernel_2_2[1]=Kernel_ch2_s[5];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_2[1]=Weight_s[17];
        Kernel_2_2[1]=Weight_s[21];
    end else if(cnt>='d92)begin 
        Kernel_1_2[1]=Weight_s[21];
        Kernel_2_2[1]=Weight_s[21];
    end else begin
        Kernel_1_2[1]='d0;
        Kernel_2_2[1]='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_3[1]=Kernel_ch2_s[2];
        Kernel_2_3[1]='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Kernel_1_3[1]=Kernel_ch2_s[10];
        Kernel_2_3[1]=Kernel_ch2_s[6];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_3[1]=Weight_s[18];
        Kernel_2_3[1]=Weight_s[22];
    end else if(cnt>='d92)begin 
        Kernel_1_3[1]=Weight_s[22];
        Kernel_2_3[1]=Weight_s[22];
    end else begin
        Kernel_1_3[1]='d0;
        Kernel_2_3[1]='d0;
    end
end

always@(*)begin
    if (cnt>='d4&&cnt<='d39)begin
        Kernel_1_4[1]=Kernel_ch2_s[3];
        Kernel_2_4[1]='d0;
    end else if(cnt>='d51&&cnt<90)begin 
        Kernel_1_4[1]=Kernel_ch2_s[11];
        Kernel_2_4[1]=Kernel_ch2_s[7];
    end else if(cnt>='d90&&cnt<'d92)begin 
        Kernel_1_4[1]=Weight_s[19];
        Kernel_2_4[1]=Weight_s[23];
    end else if(cnt>='d92)begin 
        Kernel_1_4[1]=Weight_s[23];
        Kernel_2_4[1]=Weight_s[23];
    end else begin
        Kernel_1_4[1]='d0;
        Kernel_2_4[1]='d0;
    end
end

always @( posedge clk) begin
    if(state==IDLE)begin
        channel_cnt_1<='d0;
    end else if (cnt>='d49)begin
        channel_cnt_1<='d2;
    end
end 

always @( posedge clk) begin
    channel_cnt_2<='d1;
end 

always @(posedge clk) begin
    if(cnt<'d4||(cnt<='d50&&cnt>'d40))begin
        x_cnt_1<='d0;
    end else if(x_cnt_1=='d5)begin
        x_cnt_1<='d0;
    end else begin
        x_cnt_1<=x_cnt_1+'d1;
    end
end 

always @( posedge clk) begin
    if(cnt<='d50)begin
        x_cnt_2<='d0;
    end else if (x_cnt_2=='d5)begin
        x_cnt_2<='d0;
    end else begin
        x_cnt_2<=x_cnt_2+'d1;
    end
end 

always @( posedge clk) begin
    if((cnt<'d50&&cnt>'d40)||(state==IDLE))begin
        y_cnt_1<='d0;
    end else if(x_cnt_1=='d5)begin
        y_cnt_1<=y_cnt_1+'d1;
    end else begin
        y_cnt_1<=y_cnt_1;
    end
end 

always @( posedge clk) begin
    if(cnt<'d50||(state==IDLE))begin
        y_cnt_2<='d0;
    end else if (x_cnt_2=='d5)begin
        y_cnt_2<=y_cnt_2+'d1;
    end else begin
        y_cnt_2<=y_cnt_2;
    end
end 


DW_fp_sum3 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)sum1 (.a(convolution_array_in1[0]),.b(convolution_array_in1[1]),.c(convolution_array_in1[2]),.rnd(3'b000),.z(out_ch1),.status() );

DW_fp_sum3 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)sum2 (.a(convolution_array_in2[0]),.b(convolution_array_in2[1]),.c(convolution_array_in2[2]),.rnd(3'b000),.z(out_ch2),.status() );
//
always@(*)begin
    if(cnt>='d92)begin
        convolution_array_in1[0]=convolution_array_1o[0];
        convolution_array_in1[1]=fc_up[0];
        convolution_array_in1[2]=32'b0;
    end else begin
        convolution_array_in1[0]=convolution_array_1[0][max_xcnt][max_ycnt];
        convolution_array_in1[1]=convolution_array_1[1][max_xcnt][max_ycnt];
        convolution_array_in1[2]=convolution_array_1[2][max_xcnt][max_ycnt];
    end
end

always@(*)begin
    if(cnt>='d92&&cnt<'d93)begin
        convolution_array_in2[0]=fc_up[1];
        convolution_array_in2[1]=convolution_array_2o[0];
        convolution_array_in2[2]=32'b0;
    end else if(cnt>='d93)begin
        convolution_array_in2[0]=fc_exp_1;
        convolution_array_in2[1]=max_exp;
        convolution_array_in2[2]=max_exp_neg;
    end else begin
        convolution_array_in2[0]=convolution_array_2[0][max_xcnt][max_ycnt];
        convolution_array_in2[1]=convolution_array_2[1][max_xcnt][max_ycnt];
        convolution_array_in2[2]=convolution_array_2[2][max_xcnt][max_ycnt];
    end
end
//
always @( posedge clk) begin
    if (cnt>='d52)begin
        out_ch2_s[max_xcnt][max_ycnt]<=out_ch2;
    end 
end 

always @(posedge clk) begin
    if (cnt>='d52)begin
        out_ch1_s[max_xcnt][max_ycnt]<=out_ch1;
    end 
end 


always @( posedge clk) begin
    if (max_xcnt=='d5||state==IDLE)begin
        max_xcnt<='d0;
    end else if (cnt>='d52)begin
        max_xcnt<=max_xcnt+'d1;
    end else begin 
        max_xcnt<=max_xcnt;
    end
end

always @( posedge clk) begin
    if (state==IDLE)begin
        max_ycnt<='d0;
    end else if (cnt>='d52&&max_xcnt=='d5)begin
        max_ycnt<=max_ycnt+'d1;
    end else begin 
        max_ycnt<=max_ycnt;
    end
end


/////////////MAXPOOLING//////////////
always @(*) begin
    if(cnt>='d67&&cnt<'d68)begin
        out_channel[0]=out_ch1_s[0][0];
        out_channel[1]=out_ch1_s[1][0];
        out_channel[2]=out_ch1_s[2][0];
        out_channel[3]=out_ch1_s[0][1];
        out_channel[4]=out_ch1_s[1][1];
        out_channel[5]=out_ch1_s[2][1];
        out_channel[6]=out_ch1_s[0][2];
        out_channel[7]=out_ch1_s[1][2];
        out_channel[8]=out_ch1_s[2][2];
    end else if (cnt>='d68&&cnt<'d70) begin 
        out_channel[0]=out_ch2_s[0][0];
        out_channel[1]=out_ch2_s[1][0];
        out_channel[2]=out_ch2_s[2][0];
        out_channel[3]=out_ch2_s[0][1];
        out_channel[4]=out_ch2_s[1][1];
        out_channel[5]=out_ch2_s[2][1];
        out_channel[6]=out_ch2_s[0][2];
        out_channel[7]=out_ch2_s[1][2];
        out_channel[8]=out_ch2_s[2][2];
    end else if (cnt>='d70&&cnt<'d72) begin 
        out_channel[0]=out_ch1_s[3][0];
        out_channel[1]=out_ch1_s[4][0];
        out_channel[2]=out_ch1_s[5][0];
        out_channel[3]=out_ch1_s[3][1];
        out_channel[4]=out_ch1_s[4][1];
        out_channel[5]=out_ch1_s[5][1];
        out_channel[6]=out_ch1_s[3][2];
        out_channel[7]=out_ch1_s[4][2];
        out_channel[8]=out_ch1_s[5][2];
    end else if (cnt>='d72&&cnt<'d85) begin 
        out_channel[0]=out_ch2_s[3][0];
        out_channel[1]=out_ch2_s[4][0];
        out_channel[2]=out_ch2_s[5][0];
        out_channel[3]=out_ch2_s[3][1];
        out_channel[4]=out_ch2_s[4][1];
        out_channel[5]=out_ch2_s[5][1];
        out_channel[6]=out_ch2_s[3][2];
        out_channel[7]=out_ch2_s[4][2];
        out_channel[8]=out_ch2_s[5][2];
    end else if(cnt>='d85&&cnt<'d86)begin
        out_channel[0]=out_ch1_s[0][3];
        out_channel[1]=out_ch1_s[1][3];
        out_channel[2]=out_ch1_s[2][3];
        out_channel[3]=out_ch1_s[0][4];
        out_channel[4]=out_ch1_s[1][4];
        out_channel[5]=out_ch1_s[2][4];
        out_channel[6]=out_ch1_s[0][5];
        out_channel[7]=out_ch1_s[1][5];
        out_channel[8]=out_ch1_s[2][5];
    end else if(cnt>='d86&&cnt<'d87)begin
        out_channel[0]=out_ch2_s[0][3];
        out_channel[1]=out_ch2_s[1][3];
        out_channel[2]=out_ch2_s[2][3];
        out_channel[3]=out_ch2_s[0][4];
        out_channel[4]=out_ch2_s[1][4];
        out_channel[5]=out_ch2_s[2][4];
        out_channel[6]=out_ch2_s[0][5];
        out_channel[7]=out_ch2_s[1][5];
        out_channel[8]=out_ch2_s[2][5];
    end else if(cnt>='d88&&cnt<'d89)begin
        out_channel[0]=out_ch1_s[3][3];
        out_channel[1]=out_ch1_s[4][3];
        out_channel[2]=out_ch1_s[5][3];
        out_channel[3]=out_ch1_s[3][4];
        out_channel[4]=out_ch1_s[4][4];
        out_channel[5]=out_ch1_s[5][4];
        out_channel[6]=out_ch1_s[3][5];
        out_channel[7]=out_ch1_s[4][5];
        out_channel[8]=out_ch1_s[5][5];
    end else begin
        out_channel[0]=out_ch2_s[3][3];
        out_channel[1]=out_ch2_s[4][3];
        out_channel[2]=out_ch2_s[5][3];
        out_channel[3]=out_ch2_s[3][4];
        out_channel[4]=out_ch2_s[4][4];
        out_channel[5]=out_ch2_s[5][4];
        out_channel[6]=out_ch2_s[3][5];
        out_channel[7]=out_ch2_s[4][5];
        out_channel[8]=out_ch2_s[5][5];
    end
end 

always@(posedge clk) begin
    if(cnt>='d67&&cnt<'d68)begin
        max_out[0]<=big3_2;
    end else if(cnt>='d68&&cnt<'d70) begin 
        max_out[4]<=big3_2;
    end else if (cnt>='d70&&cnt<'d72) begin 
        max_out[1]<=big3_2;
    end else if (cnt>='d72&&cnt<'d85) begin 
        max_out[5]<=big3_2; 
    end else if(cnt>='d85&&cnt<'d86)begin
        max_out[2]<=big3_2;
    end else if(cnt>='d86&&cnt<'d87)begin
        max_out[6]<=big3_2;
    end else if(cnt>='d88&&cnt<'d89)begin
        max_out[3]<=big3_2;
    end else if(cnt=='d89)begin
        max_out[7]<=big3_2;
    end
end

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp1 ( .a(out_channel[0]), .b(out_channel[1]), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big0_1), .status0(), .status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp2 ( .a(out_channel[2]), .b(big0_1), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big0_2), .status0(), .status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp3 ( .a(out_channel[3]), .b(out_channel[4]), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big1_1), .status0(), .status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp4 ( .a(big1_1), .b(out_channel[5]), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big1_2), .status0(), .status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp5 ( .a(out_channel[6]), .b(out_channel[7]), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big2_1), .status0(), .status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp6 ( .a(big2_1), .b(out_channel[8]), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big2_2), .status0(), .status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp7 ( .a(big0_2), .b(big1_2), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big3_1), .status0(), .status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)cmp8 ( .a(big3_1), .b(big2_2), .zctr(1'b0), .aeqb(), .altb(), .agtb(), .unordered(), .z0(), .z1(big3_2), .status0(), .status1() );

/////////////ACTIVATION//////////////
////////////////TANH

always @(*) begin
    if(cnt>='d68&&cnt<'d69)begin
        max_out_in=max_out[0];
    end else if (cnt>='d69&&cnt<'d71) begin 
        max_out_in=max_out[4];
    end else if (cnt>='d71&&cnt<'d73) begin 
        max_out_in=max_out[1];
    end else if (cnt>='d73&&cnt<'d86) begin 
        max_out_in=max_out[5];
    end else if(cnt>='d86&&cnt<'d88)begin
        max_out_in=max_out[2];
    end else if(cnt>='d88&&cnt<'d89)begin
        max_out_in=max_out[6];
    end else if(cnt>='d89&&cnt<'d90)begin
        max_out_in=max_out[3];
    end else if(cnt>='d90&&cnt<'d91)begin
        max_out_in=max_out[7];
    end else if(cnt>='d93&&cnt<'d97)begin
        max_out_in=fc_out_s[1];
    end else begin 
        max_out_in=32'b0;
    end
end 


always @(*) begin
    if(cnt>='d68&&cnt<'d69)begin
        max_out_neg_in={~max_out[0][31],max_out[0][30:0]};
    end else if (cnt>='d69&&cnt<'d71) begin 
        max_out_neg_in={~max_out[4][31],max_out[4][30:0]};
    end else if (cnt>='d71&&cnt<'d73) begin 
        max_out_neg_in={~max_out[1][31],max_out[1][30:0]};
    end else if (cnt>='d73&&cnt<'d86) begin
        max_out_neg_in={~max_out[5][31],max_out[5][30:0]};
    end else if(cnt>='d86&&cnt<'d88)begin
        max_out_neg_in={~max_out[2][31],max_out[2][30:0]};
    end else if(cnt>='d88&&cnt<'d89)begin
        max_out_neg_in={~max_out[6][31],max_out[6][30:0]};
    end else if(cnt>='d89&&cnt<'d90)begin
        max_out_neg_in={~max_out[3][31],max_out[3][30:0]};
    end else if(cnt>='d90&&cnt<'d91)begin
        max_out_neg_in={~max_out[7][31],max_out[7][30:0]};
    end else if(cnt>='d93&&cnt<'d97)begin
        max_out_neg_in=fc_out_s[2];
    end else begin
        max_out_neg_in=32'b0;
    end
end 

DW_fp_sub #(sig_width, exp_width, ieee_compliance)
s1 ( .a(act_1), .b(act_2), .rnd(3'b000), .z(act_up), .status() );

DW_fp_add #(sig_width, exp_width, ieee_compliance)
a1 ( .a(act_3), .b(act_4), .rnd(3'b000), .z(act_down), .status() );

DW_fp_exp #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch) e1 (.a(max_out_in),.z(max_exp),.status() );

DW_fp_exp #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch) e2 (.a(max_out_neg_in),.z(max_exp_neg),.status() );

DW_fp_recip #(inst_sig_width, inst_exp_width, inst_ieee_compliance,
inst_faithful_round) r1 (.a(act_down_s),.rnd(3'b000),.z(act_down_after),.status() );

DW_fp_mult #(sig_width, exp_width, ieee_compliance)
M1 ( .a(act_down_after), .b(act_up_s), .rnd(3'b000), .z(act_out), .status() );


always@(*) begin
    //tanh
    if(cnt<'d92)begin
        if(Opt_s==1'b1)begin
            act_1=max_exp;
            act_2=max_exp_neg;
            act_3=max_exp;
            act_4=max_exp_neg;
        end else begin//sigmoid
            act_1=32'h3F800000;
            act_2=32'b0;
            act_3=32'h3F800000;
            act_4=max_exp_neg;
        end
    end else begin
        act_1=32'b0;
        act_2=32'b0;
        act_3=fc_up[2];
        act_4=convolution_array_1o[1];
    end
end


always@( posedge clk) begin
    if(cnt>='d69&&cnt<'d70)begin
        act_out_s[0]<=act_out;
    end else if (cnt>='d70&&cnt<'d71) begin 
        act_out_s[4]<=act_out;
    end else if (cnt>='d72&&cnt<'d73) begin 
        act_out_s[1]<=act_out;
    end else if (cnt>='d74&&cnt<'d75) begin 
        act_out_s[5]<=act_out;
    end else if(cnt>='d87&&cnt<'d88)begin
        act_out_s[2]<=act_out;
    end else if(cnt>='d89&&cnt<'d90)begin
        act_out_s[6]<=act_out;
    end else if(cnt>='d90&&cnt<'d91)begin
        act_out_s[3]<=act_out;
    end else if(cnt>='d91&&cnt<'d92)begin
        act_out_s[7]<=act_out;
    end
end


always @(posedge clk) begin
    if(cnt>='d93&&cnt<'d94)begin
        act_up_s<=fc_exp_1;
    end else if(cnt>='d94&&cnt<'d95)begin
        act_up_s<=max_exp;
    end else if(cnt>='d95&&cnt<'d96)begin
        act_up_s<=max_exp_neg;
    end else begin
        act_up_s<=act_up;
    end
end

always @(posedge clk) begin
    if(cnt>='d93)begin
        act_down_s<=out_ch2;
    end else begin
        act_down_s<=act_down;
    end
end


///////////FC///////////////////
// DW_fp_dp4 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)
// U_inst (.a(act_out_s[0]),.b(Weight_s[0]),.c(act_out_s[1]),.d(Weight_s[1]),.e(act_out_s[2]),.f(Weight_s[2]),.g(act_out_s[3]),.h(Weight_s[3]),.rnd(3'b000),.z(dot_out1),.status()
// );
// DW_fp_dp4 #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch_type)
// U_inst1 (.a(act_out_s[4]),.b(Weight_s[4]),.c(act_out_s[5]),.d(Weight_s[5]),.e(act_out_s[6]),.f(Weight_s[6]),.g(act_out_s[7]),.h(Weight_s[7]),.rnd(3'b000),.z(dot_out2),.status()
// );
// DW_fp_add #(sig_width, exp_width, ieee_compliance)
// aa1 ( .a(dot_out1), .b(dot_out2), .rnd(3'b000), .z(fc_out1), .status() );



always@(posedge clk) begin
    if(cnt>='d92&&cnt<'d93)begin
        fc_out_s[0]<=out_ch1;
        fc_out_s[1]<=out_ch2;
        fc_out_s[2]<=act_down;
    end 
end


///////////EXP///////////////////
DW_fp_exp #(inst_sig_width, inst_exp_width, inst_ieee_compliance, inst_arch) ee1 (.a(fc_out_s[0]),.z(fc_exp_1),.status() );


/////////////cnt//////////////
always@( posedge clk)begin
    if(next_state==IDLE&&state==IDLE)begin 
        cnt<='d0;
    end else if (next_state==IN||state==IN) begin
        cnt<=cnt+'d1;
    end
end
/////////////Img_s//////////////
always@( posedge clk)begin
    if (next_state==IN||state==IN) begin
        Img_s[cnt]<=Img;
    end 
end
/////////////kernel_ch1//////////////
always@( posedge clk)begin
    if (next_state==IN||state==IN) begin
        if(cnt<12)begin
            Kernel_ch1_s[cnt]<=Kernel_ch1;
        end else begin 
            Kernel_ch1_s[cnt]<=Kernel_ch1_s[cnt];
        end
    end
end

/////////////kernel_ch2//////////////
always@( posedge clk)begin
    if (next_state==IN||state==IN) begin
        if(cnt<12)begin
            Kernel_ch2_s[cnt]<=Kernel_ch2;
        end else begin 
            Kernel_ch2_s[cnt]<=Kernel_ch2_s[cnt];
        end
    end
end

/////////////Weight//////////////
always@( posedge clk)begin
    if(cnt<24)begin
        Weight_s[cnt]<=Weight;
    end else begin 
        Weight_s[cnt]<=Weight_s[cnt];
    end
end

/////////////Opt//////////////
always@( posedge clk)begin
    if(cnt<1)begin
        Opt_s<=Opt;
    end else begin 
        Opt_s<=Opt_s;
    end
end


/////////////Out//////////////
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_valid<='d0;
        out_cnt<='d0;
        out<='d0;
    end else if(cnt>='d94&&cnt<'d97)begin
        out_valid<=1'b1;
        out_cnt<=out_cnt+'d1;
        out<=act_out;
    end else begin 
        out_valid<='d0;
        out_cnt<='d0;
        out<='d0;
    end
end



endmodule
