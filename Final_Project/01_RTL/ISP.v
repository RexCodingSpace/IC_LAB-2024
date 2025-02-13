 module ISP(
    // Input Signals
    input clk,
    input rst_n,
    input in_valid,
    input [3:0] in_pic_no,
    input [1:0] in_mode,
    input [1:0] in_ratio_mode,

    // Output Signals
    output reg out_valid,
    output reg [7:0] out_data,
    
    // DRAM Signals
    // axi write address channel
    // src master
    output [3:0]  awid_s_inf,
    output reg [31:0] awaddr_s_inf,
    output [2:0]  awsize_s_inf,
    output [1:0]  awburst_s_inf,
    output [7:0]  awlen_s_inf,
    output  reg   awvalid_s_inf,
    // src slave
    input         awready_s_inf,
    // -----------------------------
  
    // axi write data channel 
    // src master
    output reg [127:0] wdata_s_inf,
    output  reg       wlast_s_inf,
    output reg        wvalid_s_inf,
    // src slave
    input          wready_s_inf,
  
    // axi write response channel 
    // src slave
    input [3:0]    bid_s_inf,
    input [1:0]    bresp_s_inf,
    input          bvalid_s_inf,
    // src master 
    output         bready_s_inf,
    // -----------------------------
  
    // axi read address channel 
    // src master
    output [3:0]   arid_s_inf,
    output reg[31:0]  araddr_s_inf,
    output [7:0]   arlen_s_inf,
    output [2:0]   arsize_s_inf,
    output [1:0]   arburst_s_inf,
    output reg        arvalid_s_inf,
    // src slave
    input          arready_s_inf,
    // -----------------------------
  
    // axi read data channel 
    // slave
    input [3:0]    rid_s_inf,
    input [127:0]  rdata_s_inf,
    input [1:0]    rresp_s_inf,
    input          rlast_s_inf,
    input          rvalid_s_inf,
    // master
    output  reg       rready_s_inf
    
);
/////////////////////////
parameter IDLE          = 0;
parameter INPUT         = 1;   // for getting frame_id, net_id, loc_x, loc_y
parameter R_IMG         = 2;   // read weight from DRAM through AXI
parameter OUT           = 3;

parameter IDLE_W    = 0;
parameter WAIT_AW   = 1;
parameter W_IMG     = 2;
parameter WAIT_B    = 3;

integer i,j;
/////////reg/////////////
reg       delay_valid;
reg [3:0] state, next_state;
reg [3:0] out_AXI, next_out_AXI;
reg [7:0] cnt_192,W_cnt_192;
reg [5:0] count,count1,count2;
reg [3:0] count_reduce;
reg [3:0] in_pic_no_store;
reg [1:0] in_mode_store;
reg [1:0] in_ratio_mode_store;
// reg [9:0] A1,A2,A3,A4,A1_store,A2_store,A3_store,A4_store;
// reg [7:0] DI1,DI2,DI3,DI4;
// reg [7:0] DO1,DO2,DO3,DO4;
reg [7:0] data_from_dram[15:0];
reg [6:0] data_from_dram_store[15:0];
reg [7:0] data_store[35:0];
reg [127:0] data_to_dram,data_to_dram1,data_to_dram2,data_to_dram3;
reg  color;
reg [1:0] RGB;
reg [1:0] RGB_delay;


//read already or not
reg flag_pic[15:0],zero_flag[15:0];
reg [1:0]focus_store[15:0];
reg [1:0]focus_temp;
reg [7:0] exposure_temp;
reg [7:0] exposure_store[15:0];
reg [7:0] avg_min_max_store[15:0];

reg [7:0]sub_a[2:0],sub_b[2:0];
reg [7:0]sub_a_s[2:0],sub_b_s[2:0];
reg [7:0]sub_out[2:0];
reg [9:0]sub_accum_3_2;
reg [8:0]sub_accum_3_1;
reg [7:0]sub_accum_3_0;

reg [9:0]sub_accum_all_0;
reg [12:0]sub_accum_all_1;
reg [13:0]sub_accum_all_2;
reg [9:0]sub_accum_all_store_0;
reg [12:0]sub_accum_all_store_1;
reg [13:0]sub_accum_all_store_2;

reg [7:0]comp_a;
reg [7:0]comp_b;

reg [11:0]divide_a;
reg [3:0]divide_b;
reg [8:0]divide_out;

reg [6:0] gray_add_a[2:0];
reg [7:0] gray_add_b[2:0];
reg [7:0] gray_add_out[2:0];

reg [7:0]add_a,add_b,add_c,add_c_s;
reg [10:0]sub_accum_all_2_temp;
reg [8:0]add_out1;
reg [9:0]add_out2;

reg [17:0]exposure_add_out;

reg [11:0]input16_add_out;
reg [9:0]input16_add_out1,input16_add_out3;
reg [9:0]input16_add_out2,input16_add_out4;

reg flag_temp;

reg [1:0]flag_max;
reg [1:0]flag_max_store;
reg sub_flag[2:0];
reg cc,c1,c2;


reg en       ;
reg [14-1:0] dividend ;
reg [8:0]  quotient ;
reg vld_out  ;


reg en2       ;
reg [9:0] dividend2 ;
reg [7:0]  quotient2 ;
reg vld_out2  ;

reg en3       ;
reg [9:0] dividend3 ;
reg [7:0]  quotient3 ;
reg vld_out3  ;


reg [7:0] input16_add_out1_1;
reg [7:0] input16_add_out1_2;

reg [7:0] input16_add_out2_1;
reg [7:0] input16_add_out2_2;

reg [7:0] input16_add_out3_1;
reg [7:0] input16_add_out3_2;

reg [7:0] input16_add_out4_1;
reg [7:0] input16_add_out4_2;

reg [10:0] input16_add_outadd12;
reg [10:0] input16_add_outadd34;


//new
reg [7:0] dram_data_for_avg_min_max[15:0];

wire [7:0]max_3[1:0],max_2[3:0],max_1[7:0];
wire [7:0]min_3[1:0],min_2[3:0],min_1[7:0];
reg [7:0]max_3_store[1:0],max_2_store[3:0],max_1_store[7:0],min_4,max_4;
reg [7:0]min_3_store[1:0],min_2_store[3:0],min_1_store[7:0];
wire [7:0] max_temp1,min_temp1;
reg [7:0] max_last,min_last;

reg [9:0]max_acc,min_acc;
reg [7:0]max_divide,min_divide;
reg [7:0]max_min_out;


always @(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
        for(i=0;i<16;i=i+1)
            flag_pic[i] <= 0;
    end else if(wvalid_s_inf)begin //rewrite to 0
        flag_pic[in_pic_no_store] <= 0;
    end else if(state==OUT)begin
        if(flag_pic[in_pic_no_store]==0)begin
            flag_pic[in_pic_no_store] <= 1;
        end 
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
        for(i=0;i<16;i=i+1)
            zero_flag[i] <= 0;
    end else if(rready_s_inf)begin //rewrite to 1
        zero_flag[in_pic_no_store] <= 1;
    end else if(data_to_dram!=0)begin
        zero_flag[in_pic_no_store] <= 0;
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        for(i=0;i<=15;i=i+1)begin
            focus_store[i]<=0;
        end
    end else if(state==OUT&&!flag_temp) begin
        if(flag_max_store==0)begin
            focus_store[in_pic_no_store]<=0;
        end else if(flag_max_store==1)begin
            focus_store[in_pic_no_store]<=1;
        end else begin
            focus_store[in_pic_no_store]<=2;
        end
    end
end
//expflag
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n)begin
//         for(i=0;i<16;i=i+1)
//             exp_flag_pic[i] <= 0;
//     end else if(wvalid_s_inf)begin
//         exp_flag_pic[in_pic_no_store] <= 0;
//     end else if(state==OUT)begin
//         if(exp_flag_pic[in_pic_no_store]==0)begin
//             exp_flag_pic[in_pic_no_store] <= 1;
//         end 
//     end
// end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        flag_temp<=0;
    end else begin
        flag_temp<=flag_pic[in_pic_no_store];
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        for(i=0;i<=15;i=i+1)begin
            exposure_store[i]<=0;
        end
    end else if(state==OUT&&!flag_temp) begin
        exposure_store[in_pic_no_store]<=exposure_add_out[17:10];
    end
end


always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        for(i=0;i<=15;i=i+1)begin
            avg_min_max_store[i]<=0;
        end
    end else if(state==OUT&&!flag_temp) begin
        avg_min_max_store[in_pic_no_store]<=max_min_out;
    end
end

// always@(posedge clk or negedge rst_n) begin
//     if(!rst_n)begin
//         exposure_temp<=0;
//     end else begin
//         exposure_temp<=exposure_store[in_pic_no_store];
//     end
// end

// always@(posedge clk or negedge rst_n) begin
//     if(!rst_n)begin
//         focus_temp<=0;
//     end else  begin
//         focus_temp<=focus_store[in_pic_no_store];
//     end
// end


always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        RGB<=0;
    end else if(state==IDLE) begin
        RGB<=0;
    end else if(count2==63)begin
        if(RGB==2)begin
            RGB<=RGB;
        end else begin
            RGB<=RGB+1;
        end
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        RGB_delay<=0;
    end else begin
        RGB_delay<=RGB;
    end
end

////////////AXI FSM////////////
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        out_AXI <= IDLE_W;
    end else begin
        out_AXI <= next_out_AXI;
    end
end


always @(*) begin
    case (out_AXI)
        IDLE_W: begin
            if (in_mode_store==1&&(in_ratio_mode_store!=2||!flag_pic[in_pic_no_store])&&!zero_flag[in_pic_no_store])
                next_out_AXI = WAIT_AW;
            else 
                next_out_AXI = out_AXI;
        end
        WAIT_AW: begin
            if (rvalid_s_inf) 
                next_out_AXI = W_IMG;
            else
                next_out_AXI = out_AXI;
        end
        W_IMG: begin
            if (W_cnt_192 == 191) 
                next_out_AXI = WAIT_B;
            else 
                next_out_AXI = out_AXI;
        end
        WAIT_B: begin
            if (in_valid) 
                next_out_AXI = IDLE;
            else 
                next_out_AXI = out_AXI;
        end
        default: begin
            next_out_AXI = out_AXI;
        end
    endcase
end

////////////FSM////////////////
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= IDLE;
    else
        state <= next_state;
end

always @(*) begin
    case (state)
        IDLE: begin
            if (in_valid) begin
                next_state = INPUT;
            end else begin
                next_state = state;
            end
        end
        
        INPUT: begin
            if(zero_flag[in_pic_no_store]||(flag_pic[in_pic_no_store]&&((in_mode_store==1&&in_ratio_mode_store==2)||(in_mode_store==0)||(in_mode_store==2))))begin
                next_state=OUT;
            end else begin
                if (arready_s_inf) 
                    next_state = R_IMG;
                else 
                    next_state = state;
            end
        end
        
        R_IMG: begin
            if(count2==13&&cnt_192==192)begin
                next_state=OUT;
            end else begin
                next_state=state;
            end
        end
        
        OUT:begin
            next_state = IDLE;
        end
        
        default: begin
            next_state = IDLE;
        end
    endcase
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        gray_add_out[0]<=0;
        gray_add_out[1]<=0;
        gray_add_out[2]<=0;
    end else begin
        gray_add_out[0]<=gray_add_a [0]+ gray_add_b[0];
        gray_add_out[1]<=gray_add_a [1]+ gray_add_b[1];
        gray_add_out[2]<=gray_add_a [2]+ gray_add_b[2];
    end
end



always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        gray_add_a [0] <=0;
        gray_add_a [1] <=0;
        gray_add_a [2] <=0;
    end else if(count_reduce==0||count_reduce==2||count_reduce==4||count_reduce==6||count_reduce==8||count_reduce==10)begin
        gray_add_a [0] <=  data_from_dram_store[13];
        gray_add_a [1] <=  data_from_dram_store[14];
        gray_add_a [2] <=  data_from_dram_store[15];
    end else begin
        gray_add_a [0] <= data_from_dram_store[0];
        gray_add_a [1] <= data_from_dram_store[1];
        gray_add_a [2] <= data_from_dram_store[2];
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        gray_add_b[0] <= 0;
        gray_add_b[1] <= 0;
        gray_add_b[2] <= 0;
    end else begin
        case(count_reduce)
            0: begin    
                gray_add_b[0] <= data_store[0];
                gray_add_b[1] <= data_store[1];
                gray_add_b[2] <= data_store[2];
            end
            1: begin
                gray_add_b[0] <= data_store[3];
                gray_add_b[1] <= data_store[4];
                gray_add_b[2] <= data_store[5];
            end
            2: begin
                gray_add_b[0] <= data_store[6];
                gray_add_b[1] <= data_store[7];
                gray_add_b[2] <= data_store[8];
            end
            3: begin
                gray_add_b[0] <= data_store[9];
                gray_add_b[1] <= data_store[10];
                gray_add_b[2] <= data_store[11];
            end
            4: begin
                gray_add_b[0] <= data_store[12];
                gray_add_b[1] <= data_store[13];
                gray_add_b[2] <= data_store[14];
            end
            5: begin
                gray_add_b[0] <= data_store[15];
                gray_add_b[1] <= data_store[16];
                gray_add_b[2] <= data_store[17];
            end
            6: begin
                gray_add_b[0] <= data_store[18];
                gray_add_b[1] <= data_store[19];
                gray_add_b[2] <= data_store[20];
            end
            7: begin
                gray_add_b[0] <= data_store[21];
                gray_add_b[1] <= data_store[22];
                gray_add_b[2] <= data_store[23];
            end
            8: begin
                gray_add_b[0] <= data_store[24];
                gray_add_b[1] <= data_store[25];
                gray_add_b[2] <= data_store[26];
            end
            9: begin
                gray_add_b[0] <= data_store[27];
                gray_add_b[1] <= data_store[28];
                gray_add_b[2] <= data_store[29];
            end
            10: begin
                gray_add_b[0] <= data_store[30];
                gray_add_b[1] <= data_store[31];
                gray_add_b[2] <= data_store[32];
            end
            11: begin
                gray_add_b[0] <= data_store[33];
                gray_add_b[1] <= data_store[34];
                gray_add_b[2] <= data_store[35];
            end
            default:begin
                gray_add_b [0] <= 0;
                gray_add_b [1] <= 0;
                gray_add_b [2] <= 0;
            end
        endcase
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<36;i=i+1)begin
            data_store[i]<=0;
        end
    end else if(state==IDLE) begin
        for(i=0;i<36;i=i+1)begin
            data_store[i]<=0;
        end
    end else begin
        case(count_reduce)
            2:  begin    
                data_store[0] <= gray_add_out[0];
                data_store[1] <= gray_add_out[1];
                data_store[2] <= gray_add_out[2];
            end
            3:  begin
                data_store[3] <= gray_add_out[0];
                data_store[4] <= gray_add_out[1];
                data_store[5] <= gray_add_out[2];
            end
            4:  begin
                data_store[6]  <= gray_add_out[0];
                data_store[7]  <= gray_add_out[1];
                data_store[8]  <= gray_add_out[2];
            end
            5:  begin
                data_store[9]  <= gray_add_out[0];
                data_store[10] <= gray_add_out[1];
                data_store[11] <= gray_add_out[2];
            end
            6:  begin
                data_store[12] <= gray_add_out[0];
                data_store[13] <= gray_add_out[1];
                data_store[14] <= gray_add_out[2];
            end
            7:  begin
                data_store[15] <= gray_add_out[0];
                data_store[16] <= gray_add_out[1];
                data_store[17] <= gray_add_out[2];
            end
            8:  begin
                data_store[18] <= gray_add_out[0];
                data_store[19] <= gray_add_out[1];
                data_store[20] <= gray_add_out[2];
            end
            9:  begin
                data_store[21] <= gray_add_out[0];
                data_store[22] <= gray_add_out[1];
                data_store[23] <= gray_add_out[2];
            end
            10: begin
                data_store[24] <= gray_add_out[0];
                data_store[25] <= gray_add_out[1];
                data_store[26] <= gray_add_out[2];
            end
            11:  begin
                data_store[27] <= gray_add_out[0];
                data_store[28] <= gray_add_out[1];
                data_store[29] <= gray_add_out[2];
            end
            12: begin
                data_store[30] <= gray_add_out[0];
                data_store[31] <= gray_add_out[1];
                data_store[32] <= gray_add_out[2];
            end
            13: begin
                data_store[33] <= gray_add_out[0];
                data_store[34] <= gray_add_out[1];
                data_store[35] <= gray_add_out[2];
            end
        endcase
    end
end

//3 sub
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_out[0]<=0;
    end else if(sub_flag[0])begin
        sub_out[0]<=sub_a_s[0]-sub_b_s[0];
    end else begin
        sub_out[0]<=sub_b_s[0]-sub_a_s[0];
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_out[1]<=0;
    end else if(sub_flag[1])begin
        sub_out[1]<=sub_a_s[1]-sub_b_s[1];
    end else begin
        sub_out[1]<=sub_b_s[1]-sub_a_s[1];
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_out[2]<=0;
    end else if(sub_flag[2])begin
        sub_out[2]<=sub_a_s[2]-sub_b_s[2];
    end else begin
        sub_out[2]<=sub_b_s[2]-sub_a_s[2];
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_flag[0]<=0;
    end else if(sub_a[0]>=sub_b[0])begin
        sub_flag[0]<=1;
    end else begin
        sub_flag[0]<=0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<3;i=i+1)begin
            sub_a_s[i]<=0;
            sub_b_s[i]<=0;
        end
    end else begin
        for(i=0;i<3;i=i+1)begin
            sub_a_s[i]<=sub_a[i];
            sub_b_s[i]<=sub_b[i];
        end
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_flag[1]<=0;
    end else if(sub_a[1]>=sub_b[1])begin
        sub_flag[1]<=1;
    end else begin
        sub_flag[1]<=0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_flag[2]<=0;
    end else if(sub_a[2]>=sub_b[2])begin
        sub_flag[2]<=1;
    end else begin
        sub_flag[2]<=0;
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        add_a<=0;
        add_b<=0;
        add_c<=0;
    end else if(count2==36||count2==38||count2==40||count2==50||count2==46||count2==48)begin
        add_a<=sub_out[2];
        add_b<=sub_out[1];
        add_c<=sub_out[0];
    end else if(count2==37||count2==39||count2==41||count2==51||count2==47||count2==49)begin
        add_a<=sub_out[0];
        add_b<=sub_out[1];
        add_c<=sub_out[2];
    end else begin
        add_a<=sub_out[0];
        add_b<=sub_out[1];
        add_c<=sub_out[2];
    end
end
////////

always @(*) begin
    add_out1=(add_a+add_b);
    // add_out2=add_out1+add_c;
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        add_c_s<=0;
    end else begin
        add_c_s<=add_c;
    end
end


//constrast 2 cnt==30 晚一cycle
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_accum_3_2<=0;
    end else begin
        sub_accum_3_2<=add_out1;
    end
end
//constrast 1 cnt==32
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_accum_3_1<=0;
    end else begin
        sub_accum_3_1<=add_out1;
    end
end

//constrast 1 cnt==32
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_accum_3_0<=0;
    end else begin
        sub_accum_3_0<=add_a;
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_a[0] <=0;
        sub_b[0] <=0;
        sub_a[1] <=0;
        sub_b[1] <=0;
        sub_a[2] <=0;
        sub_b[2] <=0;
    end else begin
        case (count2)
            31: begin
                sub_a[0] <= data_store[0];
                sub_b[0] <= data_store[6];
                sub_a[1] <= data_store[1];
                sub_b[1] <= data_store[7];
                sub_a[2] <= data_store[2];
                sub_b[2] <= data_store[8];
            end
            32: begin
                sub_a[0] <= data_store[0 + 3];
                sub_b[0] <= data_store[6 + 3];
                sub_a[1] <= data_store[1 + 3];
                sub_b[1] <= data_store[7 + 3];
                sub_a[2] <= data_store[2 + 3];
                sub_b[2] <= data_store[8 + 3];
            end
            33: begin
                sub_a[0] <= data_store[0 + 6];
                sub_b[0] <= data_store[6 + 6];
                sub_a[1] <= data_store[1 + 6];
                sub_b[1] <= data_store[7 + 6];
                sub_a[2] <= data_store[2 + 6];
                sub_b[2] <= data_store[8 + 6];
            end
            34: begin
                sub_a[0] <= data_store[0 + 9];
                sub_b[0] <= data_store[6 + 9];
                sub_a[1] <= data_store[1 + 9];
                sub_b[1] <= data_store[7 + 9];
                sub_a[2] <= data_store[2 + 9];
                sub_b[2] <= data_store[8 + 9];
            end
            35: begin
                sub_a[0] <= data_store[0 + 12];
                sub_b[0] <= data_store[6 + 12];
                sub_a[1] <= data_store[1 + 12];
                sub_b[1] <= data_store[7 + 12];
                sub_a[2] <= data_store[2 + 12];
                sub_b[2] <= data_store[8 + 12];
            end
            36: begin
                sub_a[0] <= data_store[0 + 15];
                sub_b[0] <= data_store[6 + 15];
                sub_a[1] <= data_store[1 + 15];
                sub_b[1] <= data_store[7 + 15];
                sub_a[2] <= data_store[2 + 15];
                sub_b[2] <= data_store[8 + 15];
            end
            37: begin
                sub_a[0] <= data_store[0 + 18];
                sub_b[0] <= data_store[6 + 18];
                sub_a[1] <= data_store[1 + 18];
                sub_b[1] <= data_store[7 + 18];
                sub_a[2] <= data_store[2 + 18];
                sub_b[2] <= data_store[8 + 18];
            end
            38: begin
                sub_a[0] <= data_store[0 + 21];
                sub_b[0] <= data_store[6 + 21];
                sub_a[1] <= data_store[1 + 21];
                sub_b[1] <= data_store[7 + 21];
                sub_a[2] <= data_store[2 + 21];
                sub_b[2] <= data_store[8 + 21];
            end
            39: begin
                sub_a[0] <= data_store[0 + 24];
                sub_b[0] <= data_store[6 + 24];
                sub_a[1] <= data_store[1 + 24];
                sub_b[1] <= data_store[7 + 24];
                sub_a[2] <= data_store[2 + 24];
                sub_b[2] <= data_store[8 + 24];
            end
            40:begin 
                sub_a[0] <= data_store[0 + 27];
                sub_b[0] <= data_store[6 + 27];
                sub_a[1] <= data_store[1 + 27];
                sub_b[1] <= data_store[7 + 27];
                sub_a[2] <= data_store[2 + 27];
                sub_b[2] <= data_store[8 + 27];
                
            end
            41:begin
                sub_a[0] <= data_store[0];
                sub_b[0] <= data_store[1];
                sub_a[1] <= data_store[6];
                sub_b[1] <= data_store[7];   
                sub_a[2] <= data_store[12];
                sub_b[2] <= data_store[13];
            end
            42:begin
                sub_a[0] <= data_store[18];
                sub_b[0] <= data_store[19];
                sub_a[1] <= data_store[24];
                sub_b[1] <= data_store[25];   
                sub_a[2] <= data_store[30];
                sub_b[2] <= data_store[31];
            end
            43:begin
                sub_a[0] <= data_store[0 +1];
                sub_b[0] <= data_store[1 +1];
                sub_a[1] <= data_store[6 +1];
                sub_b[1] <= data_store[7 +1];   
                sub_a[2] <= data_store[12+1];
                sub_b[2] <= data_store[13+1];
            end
            44:begin
                sub_a[0] <= data_store[18+1];
                sub_b[0] <= data_store[19+1];
                sub_a[1] <= data_store[24+1];
                sub_b[1] <= data_store[25+1];   
                sub_a[2] <= data_store[30+1];
                sub_b[2] <= data_store[31+1];
            end      
            45:begin
                sub_a[0] <= data_store[0 +2];
                sub_b[0] <= data_store[1 +2];
                sub_a[1] <= data_store[6 +2];
                sub_b[1] <= data_store[7 +2];   
                sub_a[2] <= data_store[12+2];
                sub_b[2] <= data_store[13+2];
            end
            46:begin
                sub_a[0] <= data_store[18+2];
                sub_b[0] <= data_store[19+2];
                sub_a[1] <= data_store[24+2];
                sub_b[1] <= data_store[25+2];   
                sub_a[2] <= data_store[30+2];
                sub_b[2] <= data_store[31+2];
            end
            47:begin
                sub_a[0] <= data_store[0 +3];
                sub_b[0] <= data_store[1 +3];
                sub_a[1] <= data_store[6 +3];
                sub_b[1] <= data_store[7 +3];   
                sub_a[2] <= data_store[12+3];
                sub_b[2] <= data_store[13+3];
            end
            48:begin
                sub_a[0] <= data_store[18+3];
                sub_b[0] <= data_store[19+3];
                sub_a[1] <= data_store[24+3];
                sub_b[1] <= data_store[25+3];   
                sub_a[2] <= data_store[30+3];
                sub_b[2] <= data_store[31+3];
            end
            49:begin
                sub_a[0] <= data_store[0 +4];
                sub_b[0] <= data_store[1 +4];
                sub_a[1] <= data_store[6 +4];
                sub_b[1] <= data_store[7 +4];   
                sub_a[2] <= data_store[12+4];
                sub_b[2] <= data_store[13+4];
            end
            50:begin
                sub_a[0] <= data_store[18+4];
                sub_b[0] <= data_store[19+4];
                sub_a[1] <= data_store[24+4];
                sub_b[1] <= data_store[25+4];   
                sub_a[2] <= data_store[30+4];
                sub_b[2] <= data_store[31+4];
            end
        endcase
    end
end


/////constrast 2
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_accum_all_2_temp<=0;
    end else begin
        sub_accum_all_2_temp<=sub_accum_3_2+add_c_s;
    end
end


always @(*) begin
    sub_accum_all_2=sub_accum_all_store_2+sub_accum_all_2_temp;
end
//比1 0 晚1cycle
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_accum_all_store_2<=0;
    end else if(state==IDLE)begin
        sub_accum_all_store_2<=0;
    end else if(RGB==2)begin
        if(count2>=37&&count2<=56) begin
            sub_accum_all_store_2<=sub_accum_all_2;
        end else if(count2==3&&cnt_192==192)begin
            sub_accum_all_store_2<=quotient;
        end
    end
end
/////constrast 1
always @(*) begin
    sub_accum_all_1=sub_accum_all_store_1+sub_accum_3_1;
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_accum_all_store_1<=0;
    end else if(state==IDLE)begin
        sub_accum_all_store_1<=0;
    end else if(RGB==2)begin
        if((count2>=38&&count2<=43)||(count2>=48&&count2<=53)) begin
            sub_accum_all_store_1<=sub_accum_all_1;
        end else if(count2==54)begin
            sub_accum_all_store_1<=(sub_accum_all_store_1>>4);
        end
    end
end



/////constrast 0
always @(*) begin
    sub_accum_all_0=sub_accum_all_store_0+sub_accum_3_0;
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sub_accum_all_store_0<=0;
    end else if(state==IDLE)begin
        sub_accum_all_store_0<=0;
    end else if(RGB==2)begin
        if((count2==41||count2==40)||(count2==51||count2==50)) begin
            sub_accum_all_store_0<=sub_accum_all_0;
        end else if(count2==54)begin
            sub_accum_all_store_0<=(sub_accum_all_store_0>>2);
        end
    end
end
////comp////相同時輸出小
always @(*) begin
    if(comp_a>=comp_b)begin
        if(c1)begin
            flag_max=0; //a larger 
        end else begin
            flag_max=flag_max_store;
        end
    end else begin
        if(c1)begin
            flag_max=1; //a larger 
        end else begin
            flag_max=2;
        end
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        cc<=0;
    end else if(count2==54||count2==3)begin
        cc<=1;
    end else begin
        cc<=0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        c1<=0;
    end else if(count2==54)begin
        c1<=1;
    end else begin
        c1<=0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        c2<=0;
    end else if(count2==3)begin
        c2<=1;
    end else begin
        c2<=0;
    end
end

always @(*) begin
    if(c1)begin
        comp_a=sub_accum_all_store_0;
        comp_b=sub_accum_all_store_1;
    end else if(c2)begin
        if(flag_max_store==0)begin
            comp_a=sub_accum_all_store_0;
            comp_b=sub_accum_all_store_2;
        end else begin
            comp_a=sub_accum_all_store_1;
            comp_b=sub_accum_all_store_2;
        end
    end else begin
        comp_a=0;
        comp_b=0;
    end
end


////
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        flag_max_store<=0;
    end else begin
        if(cc)begin
            flag_max_store<=flag_max;
        end 
    end
end


// always @(*) begin
//     divide_out=divide_a/divide_b;
// end

// always @(*) begin
//     divide_a=sub_accum_all_store_2[13:2];
//     divide_b=9;
// end

always @(*) begin
    if(count2==57)begin
        en=1;
    end else begin
        en=0;
    end
end

always @(*) begin
    dividend=sub_accum_all_store_2;
end


div_fsm dd1 (
    .clk       (clk),
    .rstn      (rst_n),
    .en        (en),
    .dividend  (dividend),
    .quotient  (quotient),
    .vld_out   (vld_out)
);



always @(*) begin
    if(count2==3)begin
        en2=1;
    end else begin
        en2=0;
    end
end

always @(*) begin
    dividend2=max_acc;
end

div_fsm_3 dd2 (
    .clk       (clk),
    .rstn      (rst_n),
    .en        (en2),
    .dividend  (dividend2),
    .quotient  (quotient2),
    .vld_out   (vld_out2)
);

always @(*) begin
    if(count2==3)begin
        en3=1;
    end else begin
        en3=0;
    end
end

always @(*) begin
    dividend3=min_acc;
end

div_fsm_3 dd3 (
    .clk       (clk),
    .rstn      (rst_n),
    .en        (en3),
    .dividend  (dividend3),
    .quotient  (quotient3),
    .vld_out   (vld_out3)
);




//count2==52有max值


always @(*) begin
    data_from_dram[0]  = rdata_s_inf[7:0];
    data_from_dram[1]  = rdata_s_inf[15:8];
    data_from_dram[2]  = rdata_s_inf[23:16];
    data_from_dram[3]  = rdata_s_inf[31:24];
    data_from_dram[4]  = rdata_s_inf[39:32];
    data_from_dram[5]  = rdata_s_inf[47:40];
    data_from_dram[6]  = rdata_s_inf[55:48];
    data_from_dram[7]  = rdata_s_inf[63:56];
    data_from_dram[8]  = rdata_s_inf[71:64];
    data_from_dram[9]  = rdata_s_inf[79:72];
    data_from_dram[10] = rdata_s_inf[87:80];
    data_from_dram[11] = rdata_s_inf[95:88];
    data_from_dram[12] = rdata_s_inf[103:96];
    data_from_dram[13] = rdata_s_inf[111:104];
    data_from_dram[14] = rdata_s_inf[119:112];
    data_from_dram[15] = rdata_s_inf[127:120];
end

//accum gray RGB
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<16;i=i+1)begin
            dram_data_for_avg_min_max[i]<=0;
        end
    end else begin
        dram_data_for_avg_min_max[0]  <= rdata_s_inf[7:0];
        dram_data_for_avg_min_max[1]  <= rdata_s_inf[15:8];
        dram_data_for_avg_min_max[2]  <= rdata_s_inf[23:16];
        dram_data_for_avg_min_max[3]  <= rdata_s_inf[31:24];
        dram_data_for_avg_min_max[4]  <= rdata_s_inf[39:32];
        dram_data_for_avg_min_max[5]  <= rdata_s_inf[47:40];
        dram_data_for_avg_min_max[6]  <= rdata_s_inf[55:48];
        dram_data_for_avg_min_max[7]  <= rdata_s_inf[63:56];
        dram_data_for_avg_min_max[8]  <= rdata_s_inf[71:64];
        dram_data_for_avg_min_max[9]  <= rdata_s_inf[79:72];
        dram_data_for_avg_min_max[10] <= rdata_s_inf[87:80];
        dram_data_for_avg_min_max[11] <= rdata_s_inf[95:88];
        dram_data_for_avg_min_max[12] <= rdata_s_inf[103:96];
        dram_data_for_avg_min_max[13] <= rdata_s_inf[111:104];
        dram_data_for_avg_min_max[14] <= rdata_s_inf[119:112];
        dram_data_for_avg_min_max[15] <= rdata_s_inf[127:120];
    end
end
//accum gray RGB
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<16;i=i+1)begin
            data_from_dram_store[i]<=0;
        end
    end else begin
        if(RGB==0||RGB==2)begin
            data_from_dram_store[0]  <= (data_to_dram[7:0]     >>2);
            data_from_dram_store[1]  <= (data_to_dram[15:8]    >>2);
            data_from_dram_store[2]  <= (data_to_dram[23:16]   >>2);
            data_from_dram_store[3]  <= (data_to_dram[31:24]   >>2);
            data_from_dram_store[4]  <= (data_to_dram[39:32]   >>2);
            data_from_dram_store[5]  <= (data_to_dram[47:40]   >>2);
            data_from_dram_store[6]  <= (data_to_dram[55:48]   >>2);
            data_from_dram_store[7]  <= (data_to_dram[63:56]   >>2);
            data_from_dram_store[8]  <= (data_to_dram[71:64]   >>2);
            data_from_dram_store[9]  <= (data_to_dram[79:72]   >>2);
            data_from_dram_store[10] <= (data_to_dram[87:80]   >>2);
            data_from_dram_store[11] <= (data_to_dram[95:88]   >>2);
            data_from_dram_store[12] <= (data_to_dram[103:96]  >>2);
            data_from_dram_store[13] <= (data_to_dram[111:104] >>2);
            data_from_dram_store[14] <= (data_to_dram[119:112] >>2);
            data_from_dram_store[15] <= (data_to_dram[127:120] >>2);
        end else if(RGB==1)begin
            data_from_dram_store[0]  <= (data_to_dram[7:0]      >>1);
            data_from_dram_store[1]  <= (data_to_dram[15:8]     >>1);
            data_from_dram_store[2]  <= (data_to_dram[23:16]    >>1);
            data_from_dram_store[3]  <= (data_to_dram[31:24]    >>1);
            data_from_dram_store[4]  <= (data_to_dram[39:32]    >>1);
            data_from_dram_store[5]  <= (data_to_dram[47:40]    >>1);
            data_from_dram_store[6]  <= (data_to_dram[55:48]    >>1);
            data_from_dram_store[7]  <= (data_to_dram[63:56]    >>1);
            data_from_dram_store[8]  <= (data_to_dram[71:64]    >>1);
            data_from_dram_store[9]  <= (data_to_dram[79:72]    >>1);
            data_from_dram_store[10] <= (data_to_dram[87:80]    >>1);
            data_from_dram_store[11] <= (data_to_dram[95:88]    >>1);
            data_from_dram_store[12] <= (data_to_dram[103:96]   >>1);
            data_from_dram_store[13] <= (data_to_dram[111:104]  >>1);
            data_from_dram_store[14] <= (data_to_dram[119:112]  >>1);
            data_from_dram_store[15] <= (data_to_dram[127:120]  >>1);
        end
    end
end
// 第一級加法：處理 data_from_dram_store[0] 到 data_from_dram_store[3]
always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        input16_add_out1_1 <= 0;
    end else begin
        input16_add_out1_1 <= data_from_dram_store[0] + data_from_dram_store[1];
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        input16_add_out1_2 <= 0;
    end else begin
        input16_add_out1_2 <= data_from_dram_store[2] + data_from_dram_store[3];
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        input16_add_out1 <= 0;
    end else begin
        input16_add_out1 <= input16_add_out1_1 + input16_add_out1_2;
    end
end

// 第二級加法：處理 data_from_dram_store[4] 到 data_from_dram_store[7]
always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        input16_add_out3_1 <= 0;
    end else begin
        input16_add_out3_1 <= data_from_dram_store[4] + data_from_dram_store[5];
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        input16_add_out3_2 <= 0;
    end else begin
        input16_add_out3_2 <= data_from_dram_store[6] + data_from_dram_store[7];
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n) begin
        input16_add_out3 <= 0;
    end else begin
        input16_add_out3 <= input16_add_out3_1 + input16_add_out3_2;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        input16_add_out2_1<=0;
    end else begin       
        input16_add_out2_1 <= 
            (data_from_dram_store[8 ] + data_from_dram_store[9 ]) ;

    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        input16_add_out2_2<=0;
    end else begin       
        input16_add_out2_2 <= 
            (data_from_dram_store[10] + data_from_dram_store[11]) ;

    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        input16_add_out2<=0;
    end else begin       
        input16_add_out2 <= 
            (input16_add_out2_1 + input16_add_out2_2) ;

    end
end



// 第一級加法：處理 data_from_dram_store[12] 到 data_from_dram_store[15]
always @(negedge rst_n or posedge clk) begin
    if (!rst_n) begin
        input16_add_out4_1 <= 0;
    end else begin
        input16_add_out4_1 <= data_from_dram_store[12] + data_from_dram_store[13];
    end
end

always @(negedge rst_n or posedge clk) begin
    if (!rst_n) begin
        input16_add_out4_2 <= 0;
    end else begin
        input16_add_out4_2 <= data_from_dram_store[14] + data_from_dram_store[15];
    end
end

// 第二級加法：將前兩個加法結果相加
always @(negedge rst_n or posedge clk) begin
    if (!rst_n) begin
        input16_add_out4 <= 0;
    end else begin
        input16_add_out4 <= input16_add_out4_1 + input16_add_out4_2;
    end
end

always @(negedge rst_n or posedge clk) begin
    if (!rst_n) begin
        input16_add_outadd12 <= 0;
    end else begin
        input16_add_outadd12 <= input16_add_out1 + input16_add_out2;
    end
end

always @(negedge rst_n or posedge clk) begin
    if (!rst_n) begin
        input16_add_outadd34 <= 0;
    end else begin
        input16_add_outadd34 <= input16_add_out3 + input16_add_out4;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        input16_add_out<=0;
    end else begin       
        input16_add_out <= input16_add_outadd12+input16_add_outadd34;
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        exposure_add_out<=0;
    end else if(state==IDLE)begin
        exposure_add_out<=0;
    end else begin
        exposure_add_out<=exposure_add_out+input16_add_out;
    end
end


//writeback ratio
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        data_to_dram<=0;
    end else begin
        if(in_mode_store==0||in_mode_store==2)begin
            data_to_dram[7:0]      <=  data_from_dram[0] ;
            data_to_dram[15:8]     <=  data_from_dram[1] ;
            data_to_dram[23:16]    <=  data_from_dram[2] ;
            data_to_dram[31:24]    <=  data_from_dram[3] ;
            data_to_dram[39:32]    <=  data_from_dram[4] ;
            data_to_dram[47:40]    <=  data_from_dram[5] ;
            data_to_dram[55:48]    <=  data_from_dram[6] ;
            data_to_dram[63:56]    <=  data_from_dram[7] ;
            data_to_dram[71:64]    <=  data_from_dram[8] ;
            data_to_dram[79:72]    <=  data_from_dram[9] ;
            data_to_dram[87:80]    <=  data_from_dram[10];
            data_to_dram[95:88]    <=  data_from_dram[11];
            data_to_dram[103:96]   <=  data_from_dram[12];
            data_to_dram[111:104]  <=  data_from_dram[13];
            data_to_dram[119:112]  <=  data_from_dram[14];
            data_to_dram[127:120]  <=  data_from_dram[15];
        end else begin
            case(in_ratio_mode_store)
                0: begin 
                    data_to_dram[7:0]      <= (data_from_dram[0] >>  2);
                    data_to_dram[15:8]     <= (data_from_dram[1] >>  2);
                    data_to_dram[23:16]    <= (data_from_dram[2] >>  2);
                    data_to_dram[31:24]    <= (data_from_dram[3] >>  2);
                    data_to_dram[39:32]    <= (data_from_dram[4] >>  2);
                    data_to_dram[47:40]    <= (data_from_dram[5] >>  2);
                    data_to_dram[55:48]    <= (data_from_dram[6] >>  2);
                    data_to_dram[63:56]    <= (data_from_dram[7] >>  2);
                    data_to_dram[71:64]    <= (data_from_dram[8] >>  2);
                    data_to_dram[79:72]    <= (data_from_dram[9] >>  2);
                    data_to_dram[87:80]    <= (data_from_dram[10] >> 2);
                    data_to_dram[95:88]    <= (data_from_dram[11] >> 2);
                    data_to_dram[103:96]   <= (data_from_dram[12] >> 2);
                    data_to_dram[111:104]  <= (data_from_dram[13] >> 2);
                    data_to_dram[119:112]  <= (data_from_dram[14] >> 2);
                    data_to_dram[127:120]  <= (data_from_dram[15] >> 2);
                end
                1: begin 
                    data_to_dram[7:0]      <= (data_from_dram[0] >>  1);
                    data_to_dram[15:8]     <= (data_from_dram[1] >>  1);
                    data_to_dram[23:16]    <= (data_from_dram[2] >>  1);
                    data_to_dram[31:24]    <= (data_from_dram[3] >>  1);
                    data_to_dram[39:32]    <= (data_from_dram[4] >>  1);
                    data_to_dram[47:40]    <= (data_from_dram[5] >>  1);
                    data_to_dram[55:48]    <= (data_from_dram[6] >>  1);
                    data_to_dram[63:56]    <= (data_from_dram[7] >>  1);
                    data_to_dram[71:64]    <= (data_from_dram[8] >>  1);
                    data_to_dram[79:72]    <= (data_from_dram[9] >>  1);
                    data_to_dram[87:80]    <= (data_from_dram[10] >> 1);
                    data_to_dram[95:88]    <= (data_from_dram[11] >> 1);
                    data_to_dram[103:96]   <= (data_from_dram[12] >> 1);
                    data_to_dram[111:104]  <= (data_from_dram[13] >> 1);
                    data_to_dram[119:112]  <= (data_from_dram[14] >> 1);
                    data_to_dram[127:120]  <= (data_from_dram[15] >> 1);
                end
                2: begin
                    data_to_dram[7:0]      <= data_from_dram[0];
                    data_to_dram[15:8]     <= data_from_dram[1];
                    data_to_dram[23:16]    <= data_from_dram[2];
                    data_to_dram[31:24]    <= data_from_dram[3];
                    data_to_dram[39:32]    <= data_from_dram[4];
                    data_to_dram[47:40]    <= data_from_dram[5];
                    data_to_dram[55:48]    <= data_from_dram[6];
                    data_to_dram[63:56]    <= data_from_dram[7];
                    data_to_dram[71:64]    <= data_from_dram[8];
                    data_to_dram[79:72]    <= data_from_dram[9];
                    data_to_dram[87:80]    <= data_from_dram[10];
                    data_to_dram[95:88]    <= data_from_dram[11];
                    data_to_dram[103:96]   <= data_from_dram[12];
                    data_to_dram[111:104]  <= data_from_dram[13];
                    data_to_dram[119:112]  <= data_from_dram[14];
                    data_to_dram[127:120]  <= data_from_dram[15];
                end
                3: begin
                    if(data_from_dram[0] >= 128) begin
                        data_to_dram[7:0] <= 255;
                    end else begin
                        data_to_dram[7:0] <= (data_from_dram[0] << 1);
                    end

                    if(data_from_dram[1] >= 128) begin
                        data_to_dram[15:8] <= 255;
                    end else begin
                        data_to_dram[15:8] <= (data_from_dram[1] << 1);
                    end

                    if(data_from_dram[2] >= 128) begin
                        data_to_dram[23:16] <= 255;
                    end else begin
                        data_to_dram[23:16] <= (data_from_dram[2] << 1);
                    end

                    if(data_from_dram[3] >= 128) begin
                        data_to_dram[31:24] <= 255;
                    end else begin
                        data_to_dram[31:24] <= (data_from_dram[3] << 1);
                    end

                    if(data_from_dram[4] >= 128) begin
                        data_to_dram[39:32] <= 255;
                    end else begin
                        data_to_dram[39:32] <= (data_from_dram[4] << 1);
                    end

                    if(data_from_dram[5] >= 128) begin
                        data_to_dram[47:40] <= 255;
                    end else begin
                        data_to_dram[47:40] <= (data_from_dram[5] << 1);
                    end

                    if(data_from_dram[6] >= 128) begin
                        data_to_dram[55:48] <= 255;
                    end else begin
                        data_to_dram[55:48] <= (data_from_dram[6] << 1);
                    end

                    if(data_from_dram[7] >= 128) begin
                        data_to_dram[63:56] <= 255;
                    end else begin
                        data_to_dram[63:56] <= (data_from_dram[7] << 1);
                    end

                    if(data_from_dram[8] >= 128) begin
                        data_to_dram[71:64] <= 255;
                    end else begin
                        data_to_dram[71:64] <= (data_from_dram[8] << 1);
                    end

                    if(data_from_dram[9] >= 128) begin
                        data_to_dram[79:72] <= 255;
                    end else begin
                        data_to_dram[79:72] <= (data_from_dram[9] << 1);
                    end

                    if(data_from_dram[10] >= 128) begin
                        data_to_dram[87:80] <= 255;
                    end else begin
                        data_to_dram[87:80] <= (data_from_dram[10] << 1);
                    end

                    if(data_from_dram[11] >= 128) begin
                        data_to_dram[95:88] <= 255;
                    end else begin
                        data_to_dram[95:88] <= (data_from_dram[11] << 1);
                    end

                    if(data_from_dram[12] >= 128) begin
                        data_to_dram[103:96] <= 255;
                    end else begin
                        data_to_dram[103:96] <= (data_from_dram[12] << 1);
                    end

                    if(data_from_dram[13] >= 128) begin
                        data_to_dram[111:104] <= 255;
                    end else begin
                        data_to_dram[111:104] <= (data_from_dram[13] << 1);
                    end

                    if(data_from_dram[14] >= 128) begin
                        data_to_dram[119:112] <= 255;
                    end else begin
                        data_to_dram[119:112] <= (data_from_dram[14] << 1);
                    end

                    if(data_from_dram[15] >= 128) begin
                        data_to_dram[127:120] <= 255;
                    end else begin
                        data_to_dram[127:120] <= (data_from_dram[15] << 1);
                    end
                end
            endcase
        end
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        data_to_dram1<=0;
    end else begin
        data_to_dram1<=data_to_dram;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        data_to_dram2<=0;
    end else begin
        data_to_dram2<=data_to_dram1;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        data_to_dram3<=0;
    end else begin
        data_to_dram3<=data_to_dram2;
    end
end



// Your Design

// always@(posedge clk or negedge rst_n) begin
// 	if(!rst_n) begin
// 		for(i=0;i<12;i=i+1)
//             data_store[i]<=0;
// 	end else begin
//         case()
//     end
// end


always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		count1<='d0;
        count2<='d0;
    end else begin
        count1<=count;
        count2<=count1;
    end 
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		count_reduce<=14;
    end else if(count2==25)begin
        count_reduce<=0;
    end else if(count2>=26&&count_reduce<=13) begin
        count_reduce<=count_reduce+1;
    end 
end


always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		count<='d0;
	end else if(state==IDLE)begin
        count<='d0;
    end else if(rvalid_s_inf||RGB==2)begin
        if(count==63)
            count<=0;
        else 
            count<=count+1;
    end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cnt_192<='d0;
	end else if(state==IDLE)begin
        cnt_192<='d0;
    end else if(rvalid_s_inf)begin
        cnt_192<=cnt_192+1;
    end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		W_cnt_192<='d0;
	end else if(state==IDLE)begin
        W_cnt_192<='d0;
    end else if(wready_s_inf)begin
        W_cnt_192<=W_cnt_192+1;
    end
end

// always@(posedge clk or negedge rst_n) begin
// 	if(!rst_n) begin
// 		cal_count2<='d0;
// 	end else if(state==CAL)begin
// 		if(next_state==MAX)begin
// 			cal_count2<='d0;
// 		end else begin
// 			cal_count2<=cal_count2+'d1;
// 		end
// 	end else if(state==MAX)begin
// 		if(next_state==OUT)begin
// 			cal_count2<='d0;
// 		end else begin
// 			cal_count2<=cal_count2+'d1;
// 		end
// 	end else if(state==OUT)begin
// 		cal_count2<=cal_count2+'d1;
// 	end else begin
// 		cal_count2<='d0;
// 	end
// end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		in_mode_store<='d0;
        in_ratio_mode_store<='d0;
        in_pic_no_store<='d0;
	end else if(in_valid)begin
        in_mode_store<=in_mode;
        in_ratio_mode_store<=in_ratio_mode;
        in_pic_no_store<=in_pic_no;
    end
end

// always@(posedge clk or negedge rst_n) begin
// 	if(!rst_n) begin
// 		<='d0;
// 	end 
// end


Comparator_max_min uut0_1 (.A(data_to_dram[7:0]), .B(data_to_dram[15:8]), .max(max_1[0]),.min(min_1[0]));
Comparator_max_min uut0_2 (.A(data_to_dram[23:16]), .B(data_to_dram[31:24]), .max(max_1[1]),.min(min_1[1]));
Comparator_max_min uut0_3 (.A(data_to_dram[39:32]), .B(data_to_dram[47:40]), .max(max_1[2]),.min(min_1[2]));
Comparator_max_min uut0_4 (.A(data_to_dram[55:48]), .B(data_to_dram[63:56]), .max(max_1[3]),.min(min_1[3]));
Comparator_max_min uut0_5 (.A(data_to_dram[71:64]), .B(data_to_dram[79:72]), .max(max_1[4]),.min(min_1[4]));
Comparator_max_min uut0_6 (.A(data_to_dram[87:80]),.B(data_to_dram[95:88]),.max(max_1[5]),.min(min_1[5]));
Comparator_max_min uut0_7 (.A(data_to_dram[103:96]),.B(data_to_dram[111:104]),.max(max_1[6]),.min(min_1[6]));
Comparator_max_min uut0_8 (.A(data_to_dram[119:112]),.B(data_to_dram[127:120]),.max(max_1[7]),.min(min_1[7]));

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
        for(i=0;i<8;i=i+1)begin
		    max_1_store[i]<='d0;
            min_1_store[i]<='d0;
        end
    end else begin
        for(i=0;i<8;i=i+1)begin
		    max_1_store[i]<=max_1[i];
            min_1_store[i]<=min_1[i];
        end
    end
end


Comparator_max uut1_1 (.A(max_1_store[0]),.B(max_1_store[1]),.max(max_2[0]));
Comparator_max uut1_2 (.A(max_1_store[2]),.B(max_1_store[3]),.max(max_2[1]));
Comparator_max uut1_3 (.A(max_1_store[4]),.B(max_1_store[5]),.max(max_2[2]));
Comparator_max uut1_4 (.A(max_1_store[6]),.B(max_1_store[7]),.max(max_2[3]));

Comparator_min uut1_5 (.A(min_1_store[0]),.B(min_1_store[1]),.min(min_2[0]));
Comparator_min uut1_6 (.A(min_1_store[2]),.B(min_1_store[3]),.min(min_2[1]));
Comparator_min uut1_7 (.A(min_1_store[4]),.B(min_1_store[5]),.min(min_2[2]));
Comparator_min uut1_8 (.A(min_1_store[6]),.B(min_1_store[7]),.min(min_2[3]));

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
        for(i=0;i<4;i=i+1)begin
		    max_2_store[i]<='d0;
            min_2_store[i]<='d0;
        end
    end else begin
        for(i=0;i<4;i=i+1)begin
		    max_2_store[i]<=max_2[i];
            min_2_store[i]<=min_2[i];
        end
    end
end


Comparator_max uut2_1 (.A(max_2_store[0]),.B(max_2_store[1]),.max(max_3[0]));
Comparator_max uut2_2 (.A(max_2_store[2]),.B(max_2_store[3]),.max(max_3[1]));
Comparator_min uut2_3 (.A(min_2_store[0]),.B(min_2_store[1]),.min(min_3[0]));
Comparator_min uut2_4 (.A(min_2_store[2]),.B(min_2_store[3]),.min(min_3[1]));

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
        for(i=0;i<2;i=i+1)begin
		    max_3_store[i]<='d0;
            min_3_store[i]<='d0;
        end
    end else begin
        for(i=0;i<2;i=i+1)begin
		    max_3_store[i]<=max_3[i];
            min_3_store[i]<=min_3[i];
        end
    end
end

Comparator_max uut3_1 (.A(max_3_store[0]),.B(max_3_store[1]),.max(max_4));
Comparator_min uut3_2 (.A(min_3_store[0]),.B(min_3_store[1]),.min(min_4));



always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
        max_acc<='d0;
    end else if((count2=='d2&&RGB=='d1)) begin
        max_acc<=max_last;
    end else if(count2=='d2&&RGB=='d2) begin
        max_acc<=max_acc+max_last;
    end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
        min_acc<='d0;
    end else if((count2=='d2&&RGB=='d0)) begin
        min_acc<=min_last;
    end else if(count2=='d2&&RGB=='d2) begin
        min_acc<=min_acc+min_last;
    end
end

// always@(posedge clk or negedge rst_n) begin
// 	if(!rst_n) begin
//         max_divide<='d0;
//     end else if((count2=='d3&&cnt_192=='d192)) begin
//         max_divide<=max_acc/3;
//     end 
// end

// always@(posedge clk or negedge rst_n) begin
// 	if(!rst_n) begin
//         min_divide<='d0;
//     end else if((count2=='d3&&cnt_192=='d192)) begin
//         min_divide<=min_acc/3;
//     end 
// end
 
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
        max_min_out<='d0;
    end else if((count2=='d13)) begin
        max_min_out<=(quotient2+quotient3)>>1;
    end 
end



Comparator_max uut4_1 (.A(max_last),.B(max_4),.max(max_temp1));
Comparator_min uut4_2 (.A(min_last),.B(min_4),.min(min_temp1));



always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
        max_last<='d0;
        min_last<='d0;
    end else if((count2=='d2&&RGB=='d0)||(count2=='d2&&RGB=='d1)||(count2=='d2&&RGB=='d2&&cnt_192!=192)) begin
        max_last<=max_4;
        min_last<=min_4;
    end else if(cnt_192>=4&&cnt_192<=191)begin
        max_last<=max_temp1;
        min_last<=min_temp1;
    end else if(count2<='d1&&RGB=='d2) begin
        max_last<=max_temp1;
        min_last<=min_temp1;
    end
end



/////////////output/////////////////
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		out_data<='d0;
    end else if(state==OUT) begin
        if(in_mode_store==0)begin
            if(!flag_temp)begin
                if(flag_max_store==0)begin
                    out_data<=0;
                end else if(flag_max_store==1)begin
                    out_data<=1;
                end else begin
                    out_data<=2;
                end
            end else begin
                out_data<=focus_store[in_pic_no_store];
            end
        end else if(in_mode_store==1) begin
            if(!flag_temp)begin
                out_data<=exposure_add_out[17:10];
            end else begin
                out_data<=exposure_store[in_pic_no_store];
            end
        end else begin
            if(!flag_temp)begin
                out_data<=max_min_out;
            end else begin
                out_data<=avg_min_max_store[in_pic_no_store];
            end
        end
    end else begin
        out_data<='d0;
    end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		out_valid<='d0;
    end else if(state==OUT)begin
        out_valid<='d1;
    end else begin
        out_valid<='d0;
    end
end


always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        araddr_s_inf<=0;
    end else if(delay_valid) begin
        case(in_pic_no_store)
            4'd0:  araddr_s_inf   <= 32'h10000;
            4'd1:  araddr_s_inf   <= 32'h10C00;
            4'd2:  araddr_s_inf   <= 32'h11800;
            4'd3:  araddr_s_inf   <= 32'h12400;
            4'd4:  araddr_s_inf   <= 32'h13000;
            4'd5:  araddr_s_inf   <= 32'h13C00;
            4'd6:  araddr_s_inf   <= 32'h14800;
            4'd7:  araddr_s_inf   <= 32'h15400;
            4'd8:  araddr_s_inf   <= 32'h16000;
            4'd9:  araddr_s_inf   <= 32'h16C00;
            4'd10: araddr_s_inf   <= 32'h17800;
            4'd11: araddr_s_inf   <= 32'h18400;
            4'd12: araddr_s_inf   <= 32'h19000;
            4'd13: araddr_s_inf   <= 32'h19C00;
            4'd14: araddr_s_inf   <= 32'h1A800;
            4'd15: araddr_s_inf   <= 32'h1B400;
            default: araddr_s_inf <= 32'h0; 
        endcase
    end
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        awaddr_s_inf<=0;
    end else if(delay_valid) begin
        case(in_pic_no_store)
            4'd0:  awaddr_s_inf   <= 32'h10000;
            4'd1:  awaddr_s_inf   <= 32'h10C00;
            4'd2:  awaddr_s_inf   <= 32'h11800;
            4'd3:  awaddr_s_inf   <= 32'h12400;
            4'd4:  awaddr_s_inf   <= 32'h13000;
            4'd5:  awaddr_s_inf   <= 32'h13C00;
            4'd6:  awaddr_s_inf   <= 32'h14800;
            4'd7:  awaddr_s_inf   <= 32'h15400;
            4'd8:  awaddr_s_inf   <= 32'h16000;
            4'd9:  awaddr_s_inf   <= 32'h16C00;
            4'd10: awaddr_s_inf   <= 32'h17800;
            4'd11: awaddr_s_inf   <= 32'h18400;
            4'd12: awaddr_s_inf   <= 32'h19000;
            4'd13: awaddr_s_inf   <= 32'h19C00;
            4'd14: awaddr_s_inf   <= 32'h1A800;
            4'd15: awaddr_s_inf   <= 32'h1B400;
            default: awaddr_s_inf <= 32'h0; 
        endcase
    end
end



// assign base_addr=32'h10000+(3072*in_pic_no_store);
////////////AXI CONTROL///////////
// ----------------------------------------- AXI READ ----------------------------------------- //
// (1)	axi read address channel (AR)
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        delay_valid <= 0;
    end
    else begin
        delay_valid <= in_valid;
    end
end


always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        arvalid_s_inf <= 0;
    end else if(arready_s_inf)begin
        arvalid_s_inf <= 0;
    end else if(state == INPUT && !delay_valid) begin
        arvalid_s_inf <= 1;
    end else begin
        arvalid_s_inf <= 0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        awvalid_s_inf <= 0;
    end else if(awready_s_inf)begin
        awvalid_s_inf <= 0;
    end else if(state == INPUT && !delay_valid && (in_mode_store==1) ) begin
        awvalid_s_inf <= 1;
    end else begin
        awvalid_s_inf <= 0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rready_s_inf <= 0;
    // end else if(awready_s_inf)begin
    //     awvalid_s_inf <= 0;
    end else if(state == R_IMG&&cnt_192<=190) begin
        rready_s_inf <= 1;
    end else begin
        rready_s_inf <= 0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        wvalid_s_inf <= 0;
    // end else if(awready_s_inf)begin
    //     awvalid_s_inf <= 0;
    end else if(out_AXI == W_IMG && W_cnt_192 <= 190) begin
        wvalid_s_inf <= 1;
    end else begin
        wvalid_s_inf <= 0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        wlast_s_inf <= 0;
    // end else if(awready_s_inf)begin
    //     awvalid_s_inf <= 0;
    end else if(out_AXI == W_IMG && W_cnt_192 == 190) begin
        wlast_s_inf <= 1;
    end else begin
        wlast_s_inf <= 0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        wdata_s_inf <= 0;
    end else begin
        wdata_s_inf <= data_to_dram3;
    end
end




//((state == INPUT && !delay_valid && !zero_flag[in_pic_no_store]&&((!flag_pic[in_pic_no_store]&&in_mode_store==0)||((!flag_pic[in_pic_no_store]||in_ratio_mode_store!=2)&&in_mode_store==1))) ? 1 : 0);
// AXI Read Address Channel (AR)
assign arid_s_inf    = !rst_n ? 0 : 0;
assign arburst_s_inf = !rst_n ? 0 : 1;
assign arsize_s_inf  = !rst_n ? 0 : 4;
assign arlen_s_inf   = !rst_n ? 0 : 191;
// assign arvalid_s_inf = !rst_n ? 0 : (state == INPUT && !delay_valid  ? 1 : 0);
// assign araddr_s_inf  = !rst_n ? 0 : base_addr;

// AXI Read Data Channel (R)
// assign rready_s_inf = !rst_n ? 0 : ((state == R_IMG&&cnt_192<=191) ? 1 : 0);

// AXI Write Address Channel (AW)
assign awid_s_inf    = !rst_n ? 0 : 0;
assign awburst_s_inf = !rst_n ? 0 : 1;
assign awsize_s_inf  = !rst_n ? 0 : 4;
assign awlen_s_inf   = !rst_n ? 0 : 191;
// assign awvalid_s_inf = !rst_n ? 0 : (state == INPUT && !delay_valid && (in_mode_store==1) ? 1 : 0);
// assign awaddr_s_inf  = !rst_n ? 0 : base_addr;

// AXI Write Data Channel (W)
// assign wvalid_s_inf = !rst_n ? 0 : ((out_AXI==W_IMG) ? 1 : 0);
// assign wdata_s_inf  = !rst_n ? 0 : data_to_dram3;
// assign wlast_s_inf  = !rst_n ? 0 : ((out_AXI == W_IMG && W_cnt_192 == 191) ? 1 : 0);

// AXI Write Response Channel (B)
assign bready_s_inf = !rst_n ? 0 : 1;




endmodule


module div_fsm 
#(
parameter DATAWIDTH=14
)
(
  input                       clk      ,
  input                       rstn    ,
  input                       en   ,
  input  [13:0]      dividend ,
  output wire [8:0] quotient ,
  output reg                 vld_out
);

reg [14:0]  dividend_e;
wire [14:0] dividend_store,dividend_shift;
reg [8:0]   quotient_e ;
wire [7:0]temp_bit;  
wire [6:0] comp_val; 
reg [3:0] count;
reg flag;

assign comp_val = dividend_e[14:8];
assign temp_bit = dividend_e[7:0];
assign dividend_store = {comp_val - 36, temp_bit};
assign dividend_shift = dividend_store<<1;
always@(posedge clk or negedge rstn) begin
    if(!rstn)begin
        dividend_e  <= 0;
        quotient_e  <= 0;
    end else if(en)begin
        dividend_e  <= {1'd0,dividend};
        quotient_e  <= 0;
    end else begin 
        if(comp_val>='b100100)begin
            quotient_e <= (quotient_e<<1)+'b1;
            dividend_e <= dividend_shift;
        end else begin
            quotient_e <= (quotient_e<<1);
            dividend_e <= dividend_e<<1;
        end
    end
end

always@(posedge clk or negedge rstn) begin
    if(!rstn)begin
        count<=0;
    end else if(flag) begin
        count<=count+1;
    end else begin
        count<=0;
    end
end

always@(posedge clk or negedge rstn) begin
    if(!rstn)begin
        flag<=0;
    end else if(en) begin
        flag<=1;
    end else if(vld_out)begin
        flag<=0;
    end
end
  
assign quotient  = quotient_e;
assign vld_out=(count==9)? 1'b1:1'b0;
	       
endmodule

module div_fsm_3 
#(
parameter DATAWIDTH=14
)
(
  input                       clk      ,
  input                       rstn    ,
  input                       en   ,
  input  [9:0]      dividend ,
  output wire [7:0] quotient ,
  output reg                 vld_out
);

reg [10:0]  dividend_e;
wire [10:0] dividend_store,dividend_shift;
reg [7:0]   quotient_e ;
wire [7:0]temp_bit;  
wire [2:0] comp_val; 
reg [3:0] count;
reg flag;

assign comp_val = dividend_e[10:8];
assign temp_bit = dividend_e[7:0];
assign dividend_store = {comp_val - 3, temp_bit};
assign dividend_shift = dividend_store<<1;
always@(posedge clk or negedge rstn) begin
    if(!rstn)begin
        dividend_e  <= 0;
        quotient_e  <= 0;
    end else if(en)begin
        dividend_e  <= {1'd0,dividend};
        quotient_e  <= 0;
    end else begin 
        if(comp_val>='b11)begin
            quotient_e <= (quotient_e<<1)+'b1;
            dividend_e <= dividend_shift;
        end else begin
            quotient_e <= (quotient_e<<1);
            dividend_e <= dividend_e<<1;
        end
    end
end

always@(posedge clk or negedge rstn) begin
    if(!rstn)begin
        count<=0;
    end else if(flag) begin
        count<=count+1;
    end else begin
        count<=0;
    end
end

always@(posedge clk or negedge rstn) begin
    if(!rstn)begin
        flag<=0;
    end else if(en) begin
        flag<=1;
    end else if(vld_out)begin
        flag<=0;
    end
end
  
assign quotient  = quotient_e;
assign vld_out=(count==9)? 1'b1:1'b0;
	       
endmodule


module Comparator_max_min (
    input [7:0] A,    
    input [7:0] B,    
    output reg [7:0] max,
    output reg [7:0] min
);

always @(*) begin
    if (A >= B) begin
        max=A;
        min=B;
    end else begin
        max=B;
        min=A;
    end
end

endmodule

module Comparator_max (
    input [7:0] A,    
    input [7:0] B,    
    output reg [7:0] max
);

always @(*) begin
    if (A >= B) begin
        max=A;
    end else begin
        max=B;
    end
end

endmodule

module Comparator_min (
    input [7:0] A,    
    input [7:0] B,    
    output reg [7:0] min
);

always @(*) begin
    if (A >= B) begin
        min=B;
    end else begin
        min=A;
    end
end

endmodule