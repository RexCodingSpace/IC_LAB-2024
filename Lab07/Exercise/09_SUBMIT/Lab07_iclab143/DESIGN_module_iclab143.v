module CLK_1_MODULE (
    clk,
    rst_n,
    in_valid,
	in_row,
    in_kernel,
    out_idle,
    handshake_sready,
    handshake_din,

    flag_handshake_to_clk1,
    flag_clk1_to_handshake,

	fifo_empty,
    fifo_rdata,
    fifo_rinc,
    out_valid,
    out_data,

    flag_clk1_to_fifo,
    flag_fifo_to_clk1
);
input clk;
input rst_n;
input in_valid;
input [17:0] in_row;
input [11:0] in_kernel;
input out_idle;
output reg handshake_sready;
output reg [29:0] handshake_din;
// You can use the the custom flag ports for your design
input  flag_handshake_to_clk1;
output flag_clk1_to_handshake;

input fifo_empty;
input [7:0] fifo_rdata;
output reg fifo_rinc;
output reg out_valid;
output reg [7:0] out_data;
// You can use the the custom flag ports for your design
output reg flag_clk1_to_fifo;
input flag_fifo_to_clk1;

parameter IDLE = 0;
parameter IN = 1;
parameter WAIT = 2;
parameter Read_FIFO = 3;
integer i;
reg [2:0] state, next_state;
reg [29:0] in_matrix[0:5];
reg [7:0] count,cal_count,in_count,hand_count,idle_count,out_count;

reg       delay_sready;
reg       delay_fifo_to_clk1;
//////////////////FSM///////////////////
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
                next_state = state;
        end 
        IN:begin
            if (hand_count=='d6)
                next_state = WAIT;
            else
                next_state = state;
        end
        WAIT:begin
            if(flag_fifo_to_clk1=='d0)
                next_state = Read_FIFO;
            else 
                next_state = WAIT;
        end
        //要改
        Read_FIFO:begin
            if(out_count=='d150)
                next_state=IDLE;
            else begin
                if(out_count=='d150)
                    next_state=WAIT;
                else 
                    next_state=IDLE;
            end
        end
        default: next_state = IDLE;
    endcase
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin 
        for(i=0;i<6;i=i+1)begin
            in_matrix[i]<='d0;
        end
    end else if(in_valid||state==IN) begin 
        in_matrix[in_count]<={in_kernel,in_row};
    end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		in_count<='d0;
	end else if(state==IN||in_valid)begin
		in_count<=in_count+'d1;
    end else begin
        in_count<='d0;
    end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		idle_count<='d0;
	end else if(state==IDLE)begin
		idle_count<='d0;
    end else if(out_count=='d150&&out_valid)begin
        idle_count<=idle_count+'d1;
    end 
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		out_count<='d0;
	end else if(state==WAIT)begin
		out_count<='d0;
    end else if(out_valid)begin
        out_count<=out_count+'d1;
    end
end

always @(posedge clk or negedge rst_n)begin
    if (!rst_n) begin
        delay_sready <= 0;
    end else begin      
        delay_sready <= handshake_sready;
    end
end
//延遲訊號判斷counter
always @(posedge clk or negedge rst_n)begin
    if (!rst_n) begin                             
        hand_count <= 0;
    end else if (hand_count == 6) begin                
        hand_count <= 0;
    end else if (delay_sready && !handshake_sready) begin
        hand_count <= hand_count + 1;
    end
end

//輸出給handshake//
always @(posedge clk or negedge rst_n)begin
    if (!rst_n) begin
        handshake_sready <= 0;
        handshake_din    <= 0;
    end else begin
        if (state == IN && out_idle)begin
            handshake_sready <= 1;
            handshake_din    <= in_matrix[hand_count];
        end else begin
            handshake_sready <= 0;
            handshake_din    <= handshake_din;
        end
    end
end
////FIFO////
always @(posedge clk or negedge rst_n)begin
    if (!rst_n)
        delay_fifo_to_clk1 <= 0;
    else
        delay_fifo_to_clk1 <= flag_fifo_to_clk1;
end

always @(posedge clk or negedge rst_n)begin
    if (!rst_n)
        out_valid <= 0;
    else begin
        if (fifo_rinc&&out_count<150)
            out_valid <= 1;
        else
            out_valid <= 0;
    end
end

always @(*)begin
    if (out_valid)
        out_data = fifo_rdata;
    else
        out_data = 0;
end

always @(*)begin
    if (!delay_fifo_to_clk1 && flag_fifo_to_clk1 && !fifo_empty)
        fifo_rinc = 1;
    else
        fifo_rinc = 0;
end

endmodule

module CLK_2_MODULE (
    clk,
    rst_n,
    in_valid,
    fifo_full,
    in_data,
    out_valid,
    out_data,
    busy,

    flag_handshake_to_clk2,
    flag_clk2_to_handshake,

    flag_fifo_to_clk2,
    flag_clk2_to_fifo
);

input clk;
input rst_n;
input in_valid;
input fifo_full;
input [29:0] in_data;
output reg out_valid;
output reg [7:0] out_data;
output reg busy;

// You can use the the custom flag ports for your design
input  flag_handshake_to_clk2;
output flag_clk2_to_handshake;

input  flag_fifo_to_clk2;
output flag_clk2_to_fifo;

//////////reg//////////
parameter IDLE   = 0;
parameter INPUT  = 1; // get 16 input from handshake
parameter CAL    = 2; // CALtiply
parameter W_FIFO = 3; // write data into FIFO
parameter W_WAIT = 4; // wait two cycle
parameter WAIT   = 5; // wait clk1 moudule read data from FIFO
integer i,j;

reg [4:0] in_count;
reg [4:0] fifo_count;
reg [7:0] out_count;
reg [4:0] cal_count;
reg [4:0] conv_count;
reg [2:0] state, next_state;

reg [29:0] in_matrix [0:5];
reg [7:0] conv_out   [0:4];
reg [2:0] in_img [0:35];
reg [2:0] in_kernel [0:5][0:3];

reg       delay_valid;

// 狀態機
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
                next_state = INPUT;
            else          
                next_state = IDLE;
        end
        //in_valid可以改掉
        INPUT: begin
            if (!in_valid && in_count == 6) 
                next_state = CAL;
            else                           
                next_state = INPUT;
        end
        CAL: begin
            next_state = W_FIFO;
        end
        W_FIFO: begin
            if (flag_fifo_to_clk2) 
                next_state = W_WAIT;
            else                   
                next_state = W_FIFO;
        end
        W_WAIT: begin
            if (out_count == 5 && !flag_fifo_to_clk2) 
                next_state = WAIT;
            else if (!flag_fifo_to_clk2 && !out_valid) 
                next_state = W_FIFO;
            else                                        
                next_state = W_WAIT;
        end
        WAIT: begin
            if (cal_count == 6) 
                next_state = IDLE;
            else if (flag_fifo_to_clk2) 
                next_state = CAL;
            else                        
                next_state = WAIT;
        end
        default: next_state = IDLE;
    endcase
end

// cal_count 計數器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        cal_count <= 0;
    else if (state == IDLE)
        cal_count <= 0;
    else if (state == CAL)
        if(conv_count=='d24)begin
            cal_count <= cal_count + 1;
        end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        conv_count <= 0;
    else if (state == IDLE)
        conv_count <= 0;
    else if (state == CAL)begin
        if(conv_count=='d24)begin
            conv_count <= 0;
        end else begin
            conv_count <= conv_count + 6;
        end
    end
end

// 儲存來自握手的數據
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        delay_valid <= 0;
    else
        delay_valid <= in_valid;
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        in_count <= 0;
    else if (next_state == IDLE)
        in_count <= 0;
    else if (!delay_valid && in_valid)
        in_count <= in_count + 1;
end

///con in///
always @(*) begin
    // 第一行
    in_img[0]  = in_matrix[0][ 2: 0];
    in_img[1]  = in_matrix[0][ 5: 3];
    in_img[2]  = in_matrix[0][ 8: 6];
    in_img[3]  = in_matrix[0][11: 9];
    in_img[4]  = in_matrix[0][14:12];
    in_img[5]  = in_matrix[0][17:15];

    // 第二行
    in_img[6]  = in_matrix[1][ 2: 0];
    in_img[7]  = in_matrix[1][ 5: 3];
    in_img[8]  = in_matrix[1][ 8: 6];
    in_img[9]  = in_matrix[1][11: 9];
    in_img[10] = in_matrix[1][14:12];
    in_img[11] = in_matrix[1][17:15];

    // 第三行
    in_img[12] = in_matrix[2][ 2: 0];
    in_img[13] = in_matrix[2][ 5: 3];
    in_img[14] = in_matrix[2][ 8: 6];
    in_img[15] = in_matrix[2][11: 9];
    in_img[16] = in_matrix[2][14:12];
    in_img[17] = in_matrix[2][17:15];

    // 第四行
    in_img[18] = in_matrix[3][ 2: 0];
    in_img[19] = in_matrix[3][ 5: 3];
    in_img[20] = in_matrix[3][ 8: 6];
    in_img[21] = in_matrix[3][11: 9];
    in_img[22] = in_matrix[3][14:12];
    in_img[23] = in_matrix[3][17:15];

    // 第五行
    in_img[24] = in_matrix[4][ 2: 0];
    in_img[25] = in_matrix[4][ 5: 3];
    in_img[26] = in_matrix[4][ 8: 6];
    in_img[27] = in_matrix[4][11: 9];
    in_img[28] = in_matrix[4][14:12];
    in_img[29] = in_matrix[4][17:15];

    // 第六行
    in_img[30] = in_matrix[5][ 2: 0];
    in_img[31] = in_matrix[5][ 5: 3];
    in_img[32] = in_matrix[5][ 8: 6];
    in_img[33] = in_matrix[5][11: 9];
    in_img[34] = in_matrix[5][14:12];
    in_img[35] = in_matrix[5][17:15];
end

always @(*) begin
    // 第一行
    in_kernel[0][0] = in_matrix[0][ 20:18];
    in_kernel[0][1] = in_matrix[0][ 23:21];
    in_kernel[0][2] = in_matrix[0][ 26:24];
    in_kernel[0][3] = in_matrix[0][ 29:27];

    // 第二行
    in_kernel[1][0] = in_matrix[1][ 20:18];
    in_kernel[1][1] = in_matrix[1][ 23:21];
    in_kernel[1][2] = in_matrix[1][ 26:24];
    in_kernel[1][3] = in_matrix[1][ 29:27];

    // 第三行
    in_kernel[2][0] = in_matrix[2][ 20:18];
    in_kernel[2][1] = in_matrix[2][ 23:21];
    in_kernel[2][2] = in_matrix[2][ 26:24];
    in_kernel[2][3] = in_matrix[2][ 29:27];

    // 第四行
    in_kernel[3][0] = in_matrix[3][ 20:18];
    in_kernel[3][1] = in_matrix[3][ 23:21];
    in_kernel[3][2] = in_matrix[3][ 26:24];
    in_kernel[3][3] = in_matrix[3][ 29:27];

    // 第五行
    in_kernel[4][0] = in_matrix[4][ 20:18];
    in_kernel[4][1] = in_matrix[4][ 23:21];
    in_kernel[4][2] = in_matrix[4][ 26:24];
    in_kernel[4][3] = in_matrix[4][ 29:27];

    // 第六行
    in_kernel[5][0] = in_matrix[5][ 20:18];
    in_kernel[5][1] = in_matrix[5][ 23:21];
    in_kernel[5][2] = in_matrix[5][ 26:24];
    in_kernel[5][3] = in_matrix[5][ 29:27];
end



always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        for(i=0;i<6;i=i+1)begin
            in_matrix[in_count] <= 'd0;
        end
    end else if (!delay_valid && in_valid)
        in_matrix[in_count] <= in_data;
end

////conv////

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        for(i=0;i<5;i=i+1)begin
            conv_out[i]<='d0;
        end
    end else if (state == CAL)begin
        conv_out[0] <=  in_img[conv_count+0] * in_kernel[cal_count][0] +
                        in_img[conv_count+1] * in_kernel[cal_count][1] +
                        in_img[conv_count+6] * in_kernel[cal_count][2] +
                        in_img[conv_count+7] * in_kernel[cal_count][3];

        conv_out[1] <=  in_img[conv_count+0+1] * in_kernel[cal_count][0] +
                        in_img[conv_count+1+1] * in_kernel[cal_count][1] +
                        in_img[conv_count+6+1] * in_kernel[cal_count][2] +
                        in_img[conv_count+7+1] * in_kernel[cal_count][3];

        conv_out[2] <=  in_img[conv_count+0+2] * in_kernel[cal_count][0] +
                        in_img[conv_count+1+2] * in_kernel[cal_count][1] +
                        in_img[conv_count+6+2] * in_kernel[cal_count][2] +
                        in_img[conv_count+7+2] * in_kernel[cal_count][3];

        conv_out[3] <=  in_img[conv_count+0+3] * in_kernel[cal_count][0] +
                        in_img[conv_count+1+3] * in_kernel[cal_count][1] +
                        in_img[conv_count+6+3] * in_kernel[cal_count][2] +
                        in_img[conv_count+7+3] * in_kernel[cal_count][3];

        conv_out[4] <=  in_img[conv_count+0+4] * in_kernel[cal_count][0] +
                        in_img[conv_count+1+4] * in_kernel[cal_count][1] +
                        in_img[conv_count+6+4] * in_kernel[cal_count][2] +
                        in_img[conv_count+7+4] * in_kernel[cal_count][3];
    end
end


// FIFO 寫入計數器
always @(posedge clk or negedge rst_n)begin                
    if (!rst_n)
        fifo_count <= 0;
    else if (next_state == WAIT || fifo_full)
        fifo_count <= 0;
    else if (state == W_FIFO && flag_fifo_to_clk2)
        fifo_count <= 0;
    //flag==0
    else if ((state == W_FIFO || state == W_WAIT) && !fifo_full)
        // if(fifo_count==170)begin
        //     fifo_count <= 0;
        // end else begin
        //     fifo_count <= fifo_count + 1;
        // end
        fifo_count <= fifo_count + 1;
end

// out_count 計數器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        out_count <= 0;
    else if (state == WAIT)
        out_count <= 0;
    else if (out_valid)
        out_count <= out_count + 1;
end

// FIFO 的 winc 信號
always @(*) begin
    if (fifo_count == 1 && !fifo_full)
        out_valid = 1;
    else
        out_valid = 0;
end

// FIFO 的 wdata 信號
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        out_data <= 0;
    else
        if(out_count<=4)
            out_data <= conv_out[out_count];
        else 
            out_data <= out_data;
end

// 握手忙碌標誌
always @(*) begin
    if (state == IDLE || state == INPUT || state == WAIT)
        busy = 0;
    else
        busy = 1;
end

endmodule