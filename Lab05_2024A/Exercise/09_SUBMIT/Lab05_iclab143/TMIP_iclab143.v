module TMIP(
    // input signals
    clk,
    rst_n,
    in_valid, 
    in_valid2,
    
    image,
    template,
    image_size,
	action,
	
    // output signals
    out_valid,
    out_value
    );

input            clk, rst_n;
input            in_valid, in_valid2;

input      [7:0] image;
input      [7:0] template;
input      [1:0] image_size;
input      [2:0] action;

output reg       out_valid;
output reg       out_value;

//==================================================================
// parameter & integer
//==================================================================
parameter IDLE = 3'd0;
parameter READ1 = 3'd1;
parameter READ2 = 3'd2;
parameter READGRAY = 3'd3;
parameter CALCULATE = 3'd4;
parameter OUT =3'd5;

parameter MAXPOOLING = 3'd3;
parameter NEGETIVE = 3'd4;
parameter FLIP = 3'd5;
parameter FILTER = 3'd6;
parameter CONVOLUTION =3'd7;

integer i,j;
//==================================================================
// reg & wire
//==================================================================

reg [2:0] state, next_state,current_act,next_act;
reg [8:0] process_cnt_a,process_cnt_b,padding_cnt_b;
reg [9:0] cnt;
reg [7:0] gray_cnt;
reg [7:0] store_RGB[5:0],grayscale[5:0];
reg [2:0] store_cnt,max_cnt,act_cnt,act_num,act_add1;
reg [7:0] gray_scale_s[5:0];
reg [7:0] store_process[1:0][255:0];
reg a,b,change_act;
//MEM
reg [8:0] A1,A2,A1_signal,A2_signal,A3_signal,A_gray;  
reg [15:0] DO1,DO2,DI1,DI2;  
reg WEB1,OE1,CS1,WEB2,OE2,CS2,half;   
//store the initial value
reg   [7:0] template_s[8:0];
reg   [1:0] image_size_s,image_size_store;
reg   [2:0] action_s[7:0];
reg [7:0] median_out,pad_median_out;
reg [7:0] data_in0, data_in1, data_in2, data_in3, data_in4, 
          data_in5, data_in6, data_in7, data_in8;
reg [7:0] data1_in0, data1_in1, data1_in2, data1_in3, data1_in4, 
          data1_in5, data1_in6, data1_in7, data1_in8;
reg [19:0]pad_mac_out;
reg [4:0] out_cnt1;
reg [8:0] out_cnt2;
reg out_s;
//==================================================================
// FSM
//==================================================================
always @(negedge rst_n or posedge clk) begin
    if (!rst_n)
        current_act <= 0;
    else begin
        current_act <= next_act;
    end
end

always @(*) begin
    case (current_act)
        MAXPOOLING:begin
            if(image_size_s=='d0)begin
                if(padding_cnt_b=='d1)begin
                    change_act = 1; 
                end else begin
                    change_act = 0;
                end
            end else if (image_size_s=='d1)begin
                if(process_cnt_a=='d56)begin
                    change_act = 1;
                end else begin
                    change_act = 0;
                end
            end else if(image_size_s=='d2)begin
                if(process_cnt_a=='d240)begin
                    change_act = 1;
                end else begin
                    change_act = 0;
                end
            end else begin
                change_act = 0;
            end
        end
        NEGETIVE:begin
            if(image_size_s=='d0)begin
                if(process_cnt_a=='d16)begin
                    change_act = 1;
                end else begin
                    change_act = 0;
                end
            end else if (image_size_s=='d1)begin
                if(process_cnt_a=='d64)begin
                    change_act = 1;
                end else begin
                    change_act = 0;
                end
            end else if(image_size_s=='d2)begin
                if(process_cnt_a=='d256)begin
                    change_act = 1;
                end else begin
                    change_act = 0;
                end
            end else begin
                change_act = 0;
            end    
        end
        FLIP:begin
            if(padding_cnt_b=='d1)begin
                change_act = 1; 
            end else begin
                change_act = 0;
            end
        end
        FILTER:begin
            if(image_size_s=='d0)begin
                if(padding_cnt_b=='d16)begin
                    change_act = 1;
                end else begin
                    change_act = 0;
                end
            end else if (image_size_s=='d1)begin
                if(padding_cnt_b=='d64)begin
                    change_act = 1;
                end else begin
                    change_act = 0;
                end
            end else if(image_size_s=='d2)begin
                if(padding_cnt_b=='d256)begin
                    change_act=1;
                end else begin
                    change_act=0;
                end
            end else begin
                change_act=0;
            end
        end
        CONVOLUTION:begin
            change_act=0;
        end
        default: change_act = 0;
    endcase
end

always @(*) begin
    case (current_act)
        0:begin
            if(state==READGRAY&&next_state==CALCULATE)begin 
                next_act=action_s[act_cnt];
            end else begin
                next_act=0;
            end
        end
        MAXPOOLING:begin
            if(change_act)begin
                case(action_s[act_cnt+1])
                    'd3:begin
                        next_act = MAXPOOLING;
                    end
                    'd4:begin
                        next_act = NEGETIVE;
                    end
                    'd5:begin
                        next_act = FLIP;
                    end 
                    'd6:begin
                        next_act = FILTER;
                    end
                    'd7:begin
                        next_act = CONVOLUTION;
                    end
                    default:next_act = 0;
                endcase
            end else begin
                next_act = current_act;
            end
        end
        NEGETIVE:begin
            if(change_act)begin
                case(action_s[act_cnt+1])
                    'd3:begin
                        next_act = MAXPOOLING;
                    end
                    'd4:begin
                        next_act = NEGETIVE;
                    end
                    'd5:begin
                        next_act = FLIP;
                    end 
                    'd6:begin
                        next_act = FILTER;
                    end
                    'd7:begin
                        next_act = CONVOLUTION;
                    end
                    default:next_act = 0;
                endcase
            end else begin
                next_act = current_act;
            end
        end
        FLIP:begin
            if(change_act)begin
                case(action_s[act_cnt+1])
                    'd3:begin
                        next_act = MAXPOOLING;
                    end
                    'd4:begin
                        next_act = NEGETIVE;
                    end
                    'd5:begin
                        next_act = FLIP;
                    end 
                    'd6:begin
                        next_act = FILTER;
                    end
                    'd7:begin
                        next_act = CONVOLUTION;
                    end
                    default:next_act = 0;
                endcase
            end else begin
                next_act = current_act;
            end
        end
        FILTER:begin
            if(change_act)begin
                case(action_s[act_cnt+1])
                    'd3:begin
                        next_act = MAXPOOLING;
                    end
                    'd4:begin
                        next_act = NEGETIVE;
                    end
                    'd5:begin
                        next_act = FLIP;
                    end 
                    'd6:begin
                        next_act = FILTER;
                    end
                    'd7:begin
                        next_act = CONVOLUTION;
                    end
                    default:next_act = 0;
                endcase
            end else begin
                next_act = current_act;
            end
        end
        CONVOLUTION:begin
            next_act = 0;
        end
        //改
        default: next_act = 0;
    endcase
end

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
                next_state = READ1;
            else if(in_valid2)
                next_state = READ2;
            else
                next_state = state;
        end 
        READ1: begin
            if (in_valid2)begin 
                next_state = READ2;
            end
            else
                next_state = state;
        end
        READ2: begin
            if (!in_valid2)begin 
                next_state = READGRAY;
            end else
                next_state = state;
        end
        READGRAY:begin
            if(image_size_s=='d0)begin
                if(gray_cnt=='d8)begin
                    next_state=CALCULATE;
                end else begin
                    next_state = state;
                end
            end else if (image_size_s=='d1)begin
                if(gray_cnt=='d32)begin
                    next_state=CALCULATE;
                end else begin
                    next_state = state;
                end
            end else if(image_size_s=='d2)begin
                if(gray_cnt=='d128)begin
                    next_state=CALCULATE;
                end else begin
                    next_state = state;
                end
            end else begin 
                next_state = state;
            end
        end
        CALCULATE:begin
            if(current_act==CONVOLUTION)begin
                next_state = OUT;
            end else begin
                next_state = state;
            end
        end
        OUT: begin
            if(image_size_s=='d0)begin
                if(out_cnt2=='d16)begin
                    next_state = IDLE;
                end else begin
                    next_state = OUT;
                end
            end else if(image_size_s=='d1)begin
                if(out_cnt2=='d64)begin
                    next_state = IDLE;
                end else begin
                    next_state = OUT;
                end
            end else if(image_size_s=='d2)begin
                if(out_cnt2=='d256)begin
                    next_state = IDLE;
                end else begin
                    next_state = OUT;
                end
            end else begin
                next_state = IDLE;
            end
        end
        default: next_state = IDLE;
    endcase
end

//==================================================================
// MEM
//==================================================================
MEM_3 M1(
    .A0(A1[0]), .A1(A1[1]), .A2(A1[2]), .A3(A1[3]), .A4(A1[4]),
    .A5(A1[5]), .A6(A1[6]), .A7(A1[7]), .A8(A1[8]),
    .DO0(DO1[0]), .DO1(DO1[1]), .DO2(DO1[2]), .DO3(DO1[3]), .DO4(DO1[4]),
    .DO5(DO1[5]), .DO6(DO1[6]), .DO7(DO1[7]), .DO8(DO1[8]), .DO9(DO1[9]),
    .DO10(DO1[10]), .DO11(DO1[11]), .DO12(DO1[12]), .DO13(DO1[13]), 
    .DO14(DO1[14]), .DO15(DO1[15]),
    .DI0(DI1[0]), .DI1(DI1[1]), .DI2(DI1[2]), .DI3(DI1[3]), .DI4(DI1[4]),
    .DI5(DI1[5]), .DI6(DI1[6]), .DI7(DI1[7]), .DI8(DI1[8]), .DI9(DI1[9]),
    .DI10(DI1[10]), .DI11(DI1[11]), .DI12(DI1[12]), .DI13(DI1[13]), 
    .DI14(DI1[14]), .DI15(DI1[15]),
    .CK(clk), .WEB(WEB1), .OE(1'b1), .CS(1'b1)
);
//==================================================================
// design
//==================================================================
//==================================================================
// store to MEM
//==================================================================
////////////////////store RGB////////////////////////
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        store_RGB[0]<='d0;
        store_RGB[1]<='d0;
        store_RGB[2]<='d0;
        store_RGB[3]<='d0;
        store_RGB[4]<='d0;
        store_RGB[5]<='d0;
    end else begin
        if(store_cnt=='d0)begin
            store_RGB[0]<=image;
        end else if(store_cnt=='d1)begin
            store_RGB[1]<=image;
        end else if(store_cnt=='d2)begin
            store_RGB[2]<=image;
        end else if(store_cnt=='d3)begin
            store_RGB[3]<=image;
        end else if(store_cnt=='d4)begin
            store_RGB[4]<=image;
        end else if(store_cnt=='d5)begin
            store_RGB[5]<=image;
        end
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        store_cnt<='d0;
    end else if(state==IDLE&&next_state==IDLE)begin
        store_cnt<='d0;
    end else if(store_cnt=='d5)begin
        store_cnt<='d0;
    end else if(state==READ2&&next_state==READGRAY)begin
        store_cnt<='d0;
    end else begin 
        store_cnt<=store_cnt+'d1;
    end
end
////////////////////store into MEM////////////////////////

//改
always @(*) begin
    if(state==READGRAY)begin
        A1=A_gray;
    end else begin
        if(store_cnt=='d1)begin
            A1=A1_signal;
        end else if(store_cnt=='d2)begin
            A1=A2_signal;
        end else if(store_cnt=='d3)begin
            A1=A3_signal;
        end else begin
            A1='d1;
        end
    end
end

always @(*) begin
    if(store_cnt=='d1)begin
        DI1={gray_scale_s[3],gray_scale_s[0]};
    end else if(store_cnt=='d2)begin
        DI1={gray_scale_s[4],gray_scale_s[1]};
    end else if(store_cnt=='d3)begin
        DI1={gray_scale_s[5],gray_scale_s[2]};
    end else begin
        DI1='d0;
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        A_gray<='d0;
    end else if(state==READGRAY&&A_gray<383)begin
        A_gray<=A_gray+'d1;
    end else begin
        if(action_s[0]=='d0)begin
            A_gray<='d0;
        end else if(action_s[0]=='d1)begin
            A_gray<='d128;
        end else if(action_s[0]=='d2)begin
            A_gray<='d256;
        end
    end
end



always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        A1_signal<='d0;
    end else begin
        case(image_size_s)
            'd0:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A1_signal<='d0;
                end else if(cnt<='d51&&cnt>='d6)begin
                    if(store_cnt=='d1&&A1_signal<383)begin
                        A1_signal<=A1_signal+'d1;
                    end 
                end 
            end
            'd1:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A1_signal<='d0;
                end else if(cnt<='d195&&cnt>='d6)begin
                    if(store_cnt=='d1&&A1_signal<383)begin
                        A1_signal<=A1_signal+'d1;
                    end 
                end 
            end
            'd2:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A1_signal<='d0;
                end else if(cnt<='d771&&cnt>='d6)begin
                    if(store_cnt=='d1&&A1_signal<383)begin
                        A1_signal<=A1_signal+'d1;
                    end 
                end 
            end
            default : begin
                A1_signal<=0;
            end
        endcase
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        A2_signal<='d128;
    end else begin
        case(image_size_s)
            'd0:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A2_signal<='d128;
                end else if(cnt<='d51&&cnt>='d6)begin
                    if(store_cnt=='d2&&A2_signal<383)begin
                        A2_signal<=A2_signal+'d1;
                    end 
                end 
            end
            'd1:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A2_signal<='d128;
                end else if(cnt<='d195&&cnt>='d6)begin
                    if(store_cnt=='d2&&A2_signal<383)begin
                        A2_signal<=A2_signal+'d1;
                    end 
                end 
            end
            'd2:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A2_signal<='d128;
                end else if(cnt<='d771&&cnt>='d6)begin
                    if(store_cnt=='d2&&A2_signal<383)begin
                        A2_signal<=A2_signal+'d1;
                    end 
                end
            end
            default : begin
                A2_signal<=0;
            end
        endcase
    end
end
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        A3_signal<='d256;
    end else begin
        case(image_size_s)
            'd0:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A3_signal<='d256;
                end else if(cnt<='d51&&cnt>='d6)begin
                    if(store_cnt=='d3&&A3_signal<383)begin
                        A3_signal<=A3_signal+'d1;
                    end 
                end 
            end
            'd1:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A3_signal<='d256;
                end else if(cnt<='d195&&cnt>='d6)begin
                    if(store_cnt=='d3&&A3_signal<383)begin
                        A3_signal<=A3_signal+'d1;
                    end 
                end 
            end
            'd2:begin
                if(state==IDLE&&next_state==IDLE)begin
                    A3_signal<='d256;
                end else if(cnt<='d771&&cnt>='d6)begin
                    if(store_cnt=='d3&&A3_signal<383)begin
                        A3_signal<=A3_signal+'d1;
                    end 
                end 
            end
            default : begin
                A3_signal<=0;
            end
        endcase
    end
end

////////////////////CALCULATE MAXGRAY////////////////////////
always @(*) begin
    if(store_RGB[0]>=store_RGB[1]&&store_RGB[0]>=store_RGB[2])begin
        grayscale[0]=store_RGB[0];
    end else if(store_RGB[1]>=store_RGB[2]&&store_RGB[1]>=store_RGB[0])begin 
        grayscale[0]=store_RGB[1];
    end else begin 
        grayscale[0]=store_RGB[2];
    end
end
always @(*) begin
    if(store_RGB[3]>=store_RGB[4]&&store_RGB[3]>=store_RGB[5])begin
        grayscale[3]=store_RGB[3];
    end else if(store_RGB[4]>=store_RGB[3]&&store_RGB[4]>=store_RGB[5])begin 
        grayscale[3]=store_RGB[4];
    end else begin 
        grayscale[3]=store_RGB[5];
    end
end
////////////////////CALCULATE AVERAGEGRAY////////////////////////
always @(*) begin
    grayscale[1]=(store_RGB[0]+store_RGB[1]+store_RGB[2])/'d3;
    grayscale[4]=(store_RGB[3]+store_RGB[4]+store_RGB[5])/'d3;
end
////////////////////CALCULATE WEIGHTGRAY////////////////////////
always @(*) begin
    grayscale[2]=(store_RGB[0]>>2)+(store_RGB[1]>>1)+(store_RGB[2]>>2);
    grayscale[5]=(store_RGB[3]>>2)+(store_RGB[4]>>1)+(store_RGB[5]>>2);
end
////////////////////store grayscale////////////////////////
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<=5;i=i+1)begin
            gray_scale_s[0]<='d0;
        end
    end else if(store_cnt=='d3)begin
        gray_scale_s[0]<=grayscale[0];
        gray_scale_s[1]<=grayscale[1];
        gray_scale_s[2]<=grayscale[2];
    end else if(store_cnt=='d0)begin
        gray_scale_s[3]<=grayscale[3];
        gray_scale_s[4]<=grayscale[4];
        gray_scale_s[5]<=grayscale[5];
    end 
end

////////////////////MEM ENABLE////////////////////////


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        WEB1<='d1; 
    end else if(image_size_s=='d0)begin
        if(store_cnt>='d0&&store_cnt<='d2&&cnt<='d51&&cnt>='d6)begin
            WEB1<='d0;
        end else begin
            WEB1<='d1;
        end 
    end else if(image_size_s=='d1)begin
        if(store_cnt>='d0&&store_cnt<='d2&&cnt<='d195&&cnt>='d6)begin
            WEB1<='d0;
        end else begin
            WEB1<='d1;
        end
    end else if(image_size_s=='d2)begin
        if(store_cnt>='d0&&store_cnt<='d2&&cnt<='d771&&cnt>='d6)begin
            WEB1<='d0;
        end else begin
            WEB1<='d1;
        end
    end
end


////////////////////COUNT////////////////////////
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        cnt<='d0;
    end else if(state==IDLE&&next_state==IDLE)begin
        cnt<='d0;
    end else if((next_state==READ1||next_state==READ2)&&act_num=='d0)begin
        cnt<=cnt+'d1;
    end else begin
        cnt<='d0;
    end
end

//==================================================================
// store initail information
//==================================================================
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        image_size_s<=0;
    end else if(next_state==READ1&&cnt=='d0) begin 
        image_size_s<=image_size;
    end else if(next_state==READ2)begin
        image_size_s<=image_size_store;
    end else if(state==CALCULATE&&current_act==MAXPOOLING&&change_act)begin
        if(image_size_s=='d0)begin
            image_size_s<=image_size_s;
        end else begin
            image_size_s<=image_size_s-1;
        end
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        image_size_store<=0;
    end else if(next_state==READ1&&cnt=='d0) begin 
        image_size_store<=image_size;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<=8;i=i+1)begin
            template_s[i] <= 0;
        end
    end else if(next_state==READ1&&cnt<='d9) begin 
        template_s[cnt]<=template;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<=7;i=i+1)begin
            action_s[i] <= 0;
        end
    end else if (next_state==READ2) begin
        action_s[act_num] <= action;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        act_num<='d0;
    end else if(state==OUT)begin
        act_num<='d0;
    end else if (next_state==READ2) begin
        act_num <= act_num+'d1;
    end else begin
        act_num <= 0;
    end
end
//==================================================================
// take out from MEM
//==================================================================

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        act_cnt<='d1;
    end else if(state==IDLE)begin
        act_cnt<='d1;
    end else if(change_act)begin
        act_cnt<=act_cnt+'d1;
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        gray_cnt<='d0;
    end else if(state==READ2&&next_state==READGRAY)begin
        gray_cnt<=0;
    end else if(state==READGRAY)begin
        gray_cnt<=gray_cnt+1;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        process_cnt_a<='d0;
    end else if(state==READGRAY&&next_state==CALCULATE)begin
        process_cnt_a<='d0;
    end else if(change_act)begin
        process_cnt_a<='d0;
    end else begin
        case (action_s[act_cnt])
            MAXPOOLING:begin
                if(image_size_s=='d0)begin
                    process_cnt_a<=process_cnt_a+1;
                end else if (image_size_s=='d1)begin
                    if (process_cnt_a == 'd6 ||  process_cnt_a == 'd22 || process_cnt_a == 'd38) begin
                        process_cnt_a<=process_cnt_a+'d10;
                    end else begin
                        process_cnt_a<=process_cnt_a+'d2;
                    end
                end else if(image_size_s=='d2)begin
                    if (process_cnt_a == 'd14 || process_cnt_a == 'd46 || process_cnt_a == 'd78 || process_cnt_a == 'd110 || 
                    process_cnt_a == 'd142 || process_cnt_a == 'd174 || process_cnt_a == 'd206) begin
                        process_cnt_a<=process_cnt_a+'d18;
                    end else begin
                        process_cnt_a<=process_cnt_a+'d2;
                    end
                end
            end
            //可以在一個cycle做完
            NEGETIVE:begin
                process_cnt_a<=process_cnt_a+1;
            end
        endcase
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        process_cnt_b<='d0;
    end else if(state==READGRAY&&next_state==CALCULATE)begin
        process_cnt_b<='d0;
    end else if(change_act)begin
        process_cnt_b<='d0; 
    end else begin
        if (action_s[act_cnt]==MAXPOOLING)begin
            process_cnt_b<=process_cnt_b+'d1;
        end
    end
end

//padding cnt
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        padding_cnt_b<='d0;
    end else if(state==READGRAY&&next_state==CALCULATE)begin
        padding_cnt_b<='d0;
    end else if(change_act)begin
        padding_cnt_b<='d0;
    end else begin
        case (action_s[act_cnt])
            MAXPOOLING:begin
                if(padding_cnt_b<='d14) begin
                    padding_cnt_b<=padding_cnt_b+'d1;
                end 
            end
            FILTER:begin
                if(image_size_s=='d0)begin
                    if(padding_cnt_b<='d15) begin
                        padding_cnt_b<=padding_cnt_b+'d1;
                    end 
                end else if(image_size_s=='d1)begin
                    if(padding_cnt_b<='d63) begin
                        padding_cnt_b<=padding_cnt_b+'d1;
                    end 
                end else if(image_size_s=='d2)begin
                    if(padding_cnt_b<='d255) begin
                        padding_cnt_b<=padding_cnt_b+'d1;
                    end 
                end
            end
            FLIP:begin
                padding_cnt_b<=padding_cnt_b+1;
            end
            CONVOLUTION:begin
                if(image_size_s=='d0)begin
                    if(padding_cnt_b<='d14&&out_cnt1=='d0) begin
                        padding_cnt_b<=padding_cnt_b+'d1;
                    end 
                end else if(image_size_s=='d1)begin
                    if(padding_cnt_b<='d62&&out_cnt1=='d0) begin
                        padding_cnt_b<=padding_cnt_b+'d1;
                    end 
                end else if(image_size_s=='d2)begin
                    if(padding_cnt_b<='d254&&out_cnt1=='d0) begin
                        padding_cnt_b<=padding_cnt_b+'d1;
                    end 
                end
            end
        endcase
    end
end

always @(*) begin
    if(image_size_s=='d0)begin
        if(padding_cnt_b=='d0)begin
            data_in0=store_process[0][0];
            data_in1=store_process[0][0];
            data_in2=store_process[0][0];
            data_in3=store_process[0][1];
            data_in4=store_process[0][4];
            data_in5=store_process[0][0];
            data_in6=store_process[0][1];
            data_in7=store_process[0][4];    
            data_in8=store_process[0][5];  
        end else if(padding_cnt_b=='d3)begin
            data_in0=store_process[0][3];
            data_in1=store_process[0][3];
            data_in2=store_process[0][3];
            data_in3=store_process[0][2];
            data_in4=store_process[0][7];
            data_in5=store_process[0][2];
            data_in6=store_process[0][3];
            data_in7=store_process[0][6];    
            data_in8=store_process[0][7];  
        end else if(padding_cnt_b=='d12)begin
            data_in0=store_process[0][12];
            data_in1=store_process[0][12];
            data_in2=store_process[0][12];
            data_in3=store_process[0][8];
            data_in4=store_process[0][13];
            data_in5=store_process[0][8];
            data_in6=store_process[0][9];
            data_in7=store_process[0][12];    
            data_in8=store_process[0][13]; 
        end else if(padding_cnt_b=='d15)begin
            data_in0=store_process[0][15];
            data_in1=store_process[0][15];
            data_in2=store_process[0][15];
            data_in3=store_process[0][11];
            data_in4=store_process[0][14];
            data_in5=store_process[0][10];
            data_in6=store_process[0][11];
            data_in7=store_process[0][14];    
            data_in8=store_process[0][15]; 
        end else if(padding_cnt_b=='d1||padding_cnt_b=='d2)begin
            data_in0=store_process[0][padding_cnt_b-1];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+1];
            data_in3=store_process[0][padding_cnt_b+3];
            data_in4=store_process[0][padding_cnt_b+4];
            data_in5=store_process[0][padding_cnt_b+5];
            data_in6=store_process[0][padding_cnt_b-1];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+1]; 
        end else if(padding_cnt_b=='d13||padding_cnt_b=='d14)begin
            data_in0=store_process[0][padding_cnt_b-1];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+1];
            data_in3=store_process[0][padding_cnt_b-5];
            data_in4=store_process[0][padding_cnt_b-4];
            data_in5=store_process[0][padding_cnt_b-3];
            data_in6=store_process[0][padding_cnt_b-1];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+1]; 
        end else if (padding_cnt_b == 'd8  || padding_cnt_b == 'd4) begin
            data_in0=store_process[0][padding_cnt_b-4];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+4];
            data_in3=store_process[0][padding_cnt_b-3];
            data_in4=store_process[0][padding_cnt_b+1];
            data_in5=store_process[0][padding_cnt_b+5];
            data_in6=store_process[0][padding_cnt_b-4];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+4]; 
        end else if (padding_cnt_b == 'd7 || padding_cnt_b == 'd11) begin
            data_in0=store_process[0][padding_cnt_b-4];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+4];
            data_in3=store_process[0][padding_cnt_b-5];
            data_in4=store_process[0][padding_cnt_b-1];
            data_in5=store_process[0][padding_cnt_b+3];
            data_in6=store_process[0][padding_cnt_b-4];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+4]; 
        end else begin
            data_in0=store_process[0][padding_cnt_b-5];
            data_in1=store_process[0][padding_cnt_b-4];
            data_in2=store_process[0][padding_cnt_b-3];
            data_in3=store_process[0][padding_cnt_b-1];
            data_in4=store_process[0][padding_cnt_b];
            data_in5=store_process[0][padding_cnt_b+1];
            data_in6=store_process[0][padding_cnt_b+3];
            data_in7=store_process[0][padding_cnt_b+4];    
            data_in8=store_process[0][padding_cnt_b+5]; 
        end
    end else if(image_size_s=='d1)begin
        if(padding_cnt_b=='d0)begin
            data_in0=store_process[0][0];
            data_in1=store_process[0][0];
            data_in2=store_process[0][0];
            data_in3=store_process[0][1];
            data_in4=store_process[0][8];
            data_in5=store_process[0][0];
            data_in6=store_process[0][1];
            data_in7=store_process[0][8];    
            data_in8=store_process[0][9];  
        end else if(padding_cnt_b=='d7)begin
            data_in0=store_process[0][7];
            data_in1=store_process[0][7];
            data_in2=store_process[0][7];
            data_in3=store_process[0][6];
            data_in4=store_process[0][15];
            data_in5=store_process[0][6];
            data_in6=store_process[0][7];
            data_in7=store_process[0][14];    
            data_in8=store_process[0][15];  
        end else if(padding_cnt_b=='d56)begin
            data_in0=store_process[0][56];
            data_in1=store_process[0][56];
            data_in2=store_process[0][56];
            data_in3=store_process[0][48];
            data_in4=store_process[0][57];
            data_in5=store_process[0][48];
            data_in6=store_process[0][49];
            data_in7=store_process[0][56];    
            data_in8=store_process[0][57]; 
        end else if(padding_cnt_b=='d63)begin
            data_in0=store_process[0][63];
            data_in1=store_process[0][63];
            data_in2=store_process[0][63];
            data_in3=store_process[0][62];
            data_in4=store_process[0][55];
            data_in5=store_process[0][54];
            data_in6=store_process[0][55];
            data_in7=store_process[0][62];    
            data_in8=store_process[0][63]; 
        end else if(padding_cnt_b>='d1&&padding_cnt_b<='d7)begin
            data_in0=store_process[0][padding_cnt_b-1];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+1];
            data_in3=store_process[0][padding_cnt_b+7];
            data_in4=store_process[0][padding_cnt_b+8];
            data_in5=store_process[0][padding_cnt_b+9];
            data_in6=store_process[0][padding_cnt_b-1];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+1]; 
        end else if(padding_cnt_b>='d57&&padding_cnt_b<='d62)begin
            data_in0=store_process[0][padding_cnt_b-1];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+1];
            data_in3=store_process[0][padding_cnt_b-9];
            data_in4=store_process[0][padding_cnt_b-8];
            data_in5=store_process[0][padding_cnt_b-7];
            data_in6=store_process[0][padding_cnt_b-1];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+1]; 
        end else if (padding_cnt_b == 'd8  || padding_cnt_b == 'd16 || 
        padding_cnt_b == 'd24 || padding_cnt_b == 'd32 || 
        padding_cnt_b == 'd40 || padding_cnt_b == 'd48) begin
            data_in0=store_process[0][padding_cnt_b-8];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+8];
            data_in3=store_process[0][padding_cnt_b-7];
            data_in4=store_process[0][padding_cnt_b+1];
            data_in5=store_process[0][padding_cnt_b+9];
            data_in6=store_process[0][padding_cnt_b-8];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+8]; 
        end else if (padding_cnt_b == 'd15 || padding_cnt_b == 'd23 || 
        padding_cnt_b == 'd31 || padding_cnt_b == 'd39 || 
        padding_cnt_b == 'd47 || padding_cnt_b == 'd55) begin
            data_in0=store_process[0][padding_cnt_b-8];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+8];
            data_in3=store_process[0][padding_cnt_b-9];
            data_in4=store_process[0][padding_cnt_b-1];
            data_in5=store_process[0][padding_cnt_b+7];
            data_in6=store_process[0][padding_cnt_b-8];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+8]; 
        end else begin
            data_in0=store_process[0][padding_cnt_b-9];
            data_in1=store_process[0][padding_cnt_b-8];
            data_in2=store_process[0][padding_cnt_b-7];
            data_in3=store_process[0][padding_cnt_b-1];
            data_in4=store_process[0][padding_cnt_b];
            data_in5=store_process[0][padding_cnt_b+1];
            data_in6=store_process[0][padding_cnt_b+7];
            data_in7=store_process[0][padding_cnt_b+8];    
            data_in8=store_process[0][padding_cnt_b+9]; 
        end
    end else if(image_size_s=='d2)begin
        if(padding_cnt_b=='d0)begin
            data_in0=store_process[0][0];
            data_in1=store_process[0][0];
            data_in2=store_process[0][0];
            data_in3=store_process[0][1];
            data_in4=store_process[0][16];
            data_in5=store_process[0][0];
            data_in6=store_process[0][1];
            data_in7=store_process[0][16];    
            data_in8=store_process[0][17];  
        end else if(padding_cnt_b=='d15)begin
            data_in0=store_process[0][15];
            data_in1=store_process[0][15];
            data_in2=store_process[0][15];
            data_in3=store_process[0][14];
            data_in4=store_process[0][31];
            data_in5=store_process[0][14];
            data_in6=store_process[0][15];
            data_in7=store_process[0][30];    
            data_in8=store_process[0][31];  
        end else if(padding_cnt_b=='d240)begin
            data_in0=store_process[0][240];
            data_in1=store_process[0][240];
            data_in2=store_process[0][240];
            data_in3=store_process[0][224];
            data_in4=store_process[0][241];
            data_in5=store_process[0][224];
            data_in6=store_process[0][225];
            data_in7=store_process[0][240];    
            data_in8=store_process[0][241]; 
        end else if(padding_cnt_b=='d255)begin
            data_in0=store_process[0][255];
            data_in1=store_process[0][255];
            data_in2=store_process[0][255];
            data_in3=store_process[0][239];
            data_in4=store_process[0][254];
            data_in5=store_process[0][238];
            data_in6=store_process[0][239];
            data_in7=store_process[0][254];    
            data_in8=store_process[0][255]; 
        end else if(padding_cnt_b>='d1&&padding_cnt_b<='d14)begin
            data_in0=store_process[0][padding_cnt_b-1];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+1];
            data_in3=store_process[0][padding_cnt_b+15];
            data_in4=store_process[0][padding_cnt_b+16];
            data_in5=store_process[0][padding_cnt_b+17];
            data_in6=store_process[0][padding_cnt_b-1];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+1]; 
        end else if(padding_cnt_b>='d241&&padding_cnt_b<='d254)begin
            data_in0=store_process[0][padding_cnt_b-1];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+1];
            data_in3=store_process[0][padding_cnt_b-17];
            data_in4=store_process[0][padding_cnt_b-16];
            data_in5=store_process[0][padding_cnt_b-15];
            data_in6=store_process[0][padding_cnt_b-1];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+1]; 
        end else if (padding_cnt_b == 'd16  || padding_cnt_b == 'd32  || 
         padding_cnt_b == 'd48  || padding_cnt_b == 'd64  || 
         padding_cnt_b == 'd80  || padding_cnt_b == 'd96  || 
         padding_cnt_b == 'd112 || padding_cnt_b == 'd128 || 
         padding_cnt_b == 'd144 || padding_cnt_b == 'd160 || 
         padding_cnt_b == 'd176 || padding_cnt_b == 'd192 || 
         padding_cnt_b == 'd208 || padding_cnt_b == 'd224) begin
            data_in0=store_process[0][padding_cnt_b-16];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+16];
            data_in3=store_process[0][padding_cnt_b-15];
            data_in4=store_process[0][padding_cnt_b+1];
            data_in5=store_process[0][padding_cnt_b+17];
            data_in6=store_process[0][padding_cnt_b-16];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+16]; 
        end else if (padding_cnt_b == 'd31  || padding_cnt_b == 'd47  || 
         padding_cnt_b == 'd63  || padding_cnt_b == 'd79  || 
         padding_cnt_b == 'd95  || padding_cnt_b == 'd111 || 
         padding_cnt_b == 'd127 || padding_cnt_b == 'd143 || 
         padding_cnt_b == 'd159 || padding_cnt_b == 'd175 || 
         padding_cnt_b == 'd191 || padding_cnt_b == 'd207 || 
         padding_cnt_b == 'd223 || padding_cnt_b == 'd239) begin
            data_in0=store_process[0][padding_cnt_b-16];
            data_in1=store_process[0][padding_cnt_b];
            data_in2=store_process[0][padding_cnt_b+16];
            data_in3=store_process[0][padding_cnt_b-17];
            data_in4=store_process[0][padding_cnt_b-1];
            data_in5=store_process[0][padding_cnt_b+15];
            data_in6=store_process[0][padding_cnt_b-16];
            data_in7=store_process[0][padding_cnt_b];    
            data_in8=store_process[0][padding_cnt_b+16]; 
         end else begin
            data_in0=store_process[0][padding_cnt_b-17];
            data_in1=store_process[0][padding_cnt_b-16];
            data_in2=store_process[0][padding_cnt_b-15];
            data_in3=store_process[0][padding_cnt_b-1];
            data_in4=store_process[0][padding_cnt_b];
            data_in5=store_process[0][padding_cnt_b+1];
            data_in6=store_process[0][padding_cnt_b+15];
            data_in7=store_process[0][padding_cnt_b+16];    
            data_in8=store_process[0][padding_cnt_b+17]; 
         end
    end else begin
        data_in0=0;
        data_in1=0;
        data_in2=0;
        data_in3=0;
        data_in4=0;
        data_in5=0;
        data_in6=0;
        data_in7=0;
        data_in8=0;
    end
end

median_network med1(.data_in_0(data_in0),.data_in_1(data_in1),.data_in_2(data_in2)
,.data_in_3(data_in3),.data_in_4(data_in4),.data_in_5(data_in5),.data_in_6(data_in6)
,.data_in_7(data_in7),.data_in_8(data_in8),.data_out(pad_median_out));


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(i=0;i<=255;i=i+1)begin
            store_process[0][i]<=0;
            store_process[1][i]<=0;
        end
    end else if(state==READGRAY)begin
        store_process[0][(gray_cnt-1)*2]<=DO1[7:0];
        store_process[0][(gray_cnt-1)*2+1]<=DO1[15:8];
    end else if(change_act)begin
        for(i=0;i<=255;i=i+1)begin
            store_process[0][i]<=store_process[1][i];
        end
    end else if(state==CALCULATE)begin
        case (action_s[act_cnt])
            MAXPOOLING:begin
                if(image_size_s=='d0)begin
                    store_process[1][0] <=  store_process[0][0] ;
                    store_process[1][1] <=  store_process[0][1] ;
                    store_process[1][2] <=  store_process[0][2] ;
                    store_process[1][3] <=  store_process[0][3] ;
                    store_process[1][4] <=  store_process[0][4] ;
                    store_process[1][5] <=  store_process[0][5] ;
                    store_process[1][6] <=  store_process[0][6] ;
                    store_process[1][7] <=  store_process[0][7] ;
                    store_process[1][8] <=  store_process[0][8] ;
                    store_process[1][9] <=  store_process[0][9] ;
                    store_process[1][10] <= store_process[0][10];
                    store_process[1][11] <= store_process[0][11];
                    store_process[1][12] <= store_process[0][12];
                    store_process[1][13] <= store_process[0][13];
                    store_process[1][14] <= store_process[0][14];
                    store_process[1][15] <= store_process[0][15];

                end else if (image_size_s=='d1)begin
                    if (store_process[0][process_cnt_a] >= store_process[0][process_cnt_a+1] &&
                        store_process[0][process_cnt_a] >= store_process[0][process_cnt_a+8] &&
                        store_process[0][process_cnt_a] >= store_process[0][process_cnt_a+9]) begin
                        // 当前值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a];
                    end else if (store_process[0][process_cnt_a+1] >= store_process[0][process_cnt_a] &&
                                store_process[0][process_cnt_a+1] >= store_process[0][process_cnt_a+8] &&
                                store_process[0][process_cnt_a+1] >= store_process[0][process_cnt_a+9]) begin
                        // process_cnt_a+1 的值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a+1];
                    end else if (store_process[0][process_cnt_a+8] >= store_process[0][process_cnt_a] &&
                                store_process[0][process_cnt_a+8] >= store_process[0][process_cnt_a+1] &&
                                store_process[0][process_cnt_a+8] >= store_process[0][process_cnt_a+9]) begin
                        // process_cnt_a+8 的值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a+8];
                    end else if (store_process[0][process_cnt_a+9] >= store_process[0][process_cnt_a] &&
                                store_process[0][process_cnt_a+9] >= store_process[0][process_cnt_a+1] &&
                                store_process[0][process_cnt_a+9] >= store_process[0][process_cnt_a+8]) begin
                        // process_cnt_a+9 的值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a+9];
                    end
                end else if(image_size_s=='d2)begin
                    if (store_process[0][process_cnt_a] >= store_process[0][process_cnt_a+1] &&
                        store_process[0][process_cnt_a] >= store_process[0][process_cnt_a+16] &&
                        store_process[0][process_cnt_a] >= store_process[0][process_cnt_a+17]) begin
                        // 当前值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a];
                    end else if (store_process[0][process_cnt_a+1] >= store_process[0][process_cnt_a] &&
                                store_process[0][process_cnt_a+1] >= store_process[0][process_cnt_a+16] &&
                                store_process[0][process_cnt_a+1] >= store_process[0][process_cnt_a+17]) begin
                        // process_cnt_a+1 的值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a+1];
                    end else if (store_process[0][process_cnt_a+16] >= store_process[0][process_cnt_a] &&
                                store_process[0][process_cnt_a+16] >= store_process[0][process_cnt_a+1] &&
                                store_process[0][process_cnt_a+16] >= store_process[0][process_cnt_a+17]) begin
                        // process_cnt_a+8 的值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a+16];
                    end else if (store_process[0][process_cnt_a+17] >= store_process[0][process_cnt_a] &&
                                store_process[0][process_cnt_a+17] >= store_process[0][process_cnt_a+1] &&
                                store_process[0][process_cnt_a+17] >= store_process[0][process_cnt_a+16]) begin
                        // process_cnt_a+9 的值最大
                        store_process[1][process_cnt_b] <= store_process[0][process_cnt_a+17];
                    end
                end
            end
            NEGETIVE:begin
                store_process[1][process_cnt_a]<=~store_process[0][process_cnt_a];
            end
            FLIP:begin
                if(image_size_s=='d0)begin
                    store_process[1][0]<= store_process[0][3];
                    store_process[1][4]<= store_process[0][7];
                    store_process[1][8]<= store_process[0][11];
                    store_process[1][12]<=store_process[0][15];
                    store_process[1][1]<= store_process[0][2];
                    store_process[1][5]<= store_process[0][6];
                    store_process[1][9]<= store_process[0][10];
                    store_process[1][13]<=store_process[0][14];
                    store_process[1][2]<= store_process[0][1];
                    store_process[1][6]<= store_process[0][5];
                    store_process[1][10]<=store_process[0][9];
                    store_process[1][14]<=store_process[0][13];
                    store_process[1][3]<= store_process[0][0];
                    store_process[1][7]<= store_process[0][4];
                    store_process[1][11]<=store_process[0][8];
                    store_process[1][15]<=store_process[0][12];
                end else if (image_size_s=='d1)begin
                    store_process[1][0]  <= store_process[0][7];
                    store_process[1][8]  <= store_process[0][15];
                    store_process[1][16] <= store_process[0][23];
                    store_process[1][24] <= store_process[0][31];
                    store_process[1][32] <= store_process[0][39];
                    store_process[1][40] <= store_process[0][47];
                    store_process[1][48] <= store_process[0][55];
                    store_process[1][56] <= store_process[0][63];

                    store_process[1][1]  <= store_process[0][6];
                    store_process[1][9]  <= store_process[0][14];
                    store_process[1][17] <= store_process[0][22];
                    store_process[1][25] <= store_process[0][30];
                    store_process[1][33] <= store_process[0][38];
                    store_process[1][41] <= store_process[0][46];
                    store_process[1][49] <= store_process[0][54];
                    store_process[1][57] <= store_process[0][62];

                    store_process[1][2]  <= store_process[0][5];
                    store_process[1][10] <= store_process[0][13];
                    store_process[1][18] <= store_process[0][21];
                    store_process[1][26] <= store_process[0][29];
                    store_process[1][34] <= store_process[0][37];
                    store_process[1][42] <= store_process[0][45];
                    store_process[1][50] <= store_process[0][53];
                    store_process[1][58] <= store_process[0][61];

                    store_process[1][3]  <= store_process[0][4];
                    store_process[1][11] <= store_process[0][12];
                    store_process[1][19] <= store_process[0][20];
                    store_process[1][27] <= store_process[0][28];
                    store_process[1][35] <= store_process[0][36];
                    store_process[1][43] <= store_process[0][44];
                    store_process[1][51] <= store_process[0][52];
                    store_process[1][59] <= store_process[0][60];

                    store_process[1][4]  <= store_process[0][3];
                    store_process[1][12] <= store_process[0][11];
                    store_process[1][20] <= store_process[0][19];
                    store_process[1][28] <= store_process[0][27];
                    store_process[1][36] <= store_process[0][35];
                    store_process[1][44] <= store_process[0][43];
                    store_process[1][52] <= store_process[0][51];
                    store_process[1][60] <= store_process[0][59];

                    store_process[1][5]  <= store_process[0][2];
                    store_process[1][13] <= store_process[0][10];
                    store_process[1][21] <= store_process[0][18];
                    store_process[1][29] <= store_process[0][26];
                    store_process[1][37] <= store_process[0][34];
                    store_process[1][45] <= store_process[0][42];
                    store_process[1][53] <= store_process[0][50];
                    store_process[1][61] <= store_process[0][58];

                    store_process[1][6]  <= store_process[0][1];
                    store_process[1][14] <= store_process[0][9];
                    store_process[1][22] <= store_process[0][17];
                    store_process[1][30] <= store_process[0][25];
                    store_process[1][38] <= store_process[0][33];
                    store_process[1][46] <= store_process[0][41];
                    store_process[1][54] <= store_process[0][49];
                    store_process[1][62] <= store_process[0][57];

                    store_process[1][7]  <= store_process[0][0];
                    store_process[1][15] <= store_process[0][8];
                    store_process[1][23] <= store_process[0][16];
                    store_process[1][31] <= store_process[0][24];
                    store_process[1][39] <= store_process[0][32];
                    store_process[1][47] <= store_process[0][40];
                    store_process[1][55] <= store_process[0][48];
                    store_process[1][63] <= store_process[0][56];
                end else if(image_size_s=='d2)begin
                    store_process[1][0]   <= store_process[0][15];
                    store_process[1][16]   <= store_process[0][31];
                    store_process[1][32]   <= store_process[0][47];
                    store_process[1][48]   <= store_process[0][63];
                    store_process[1][64]   <= store_process[0][79];
                    store_process[1][80]   <= store_process[0][95];
                    store_process[1][96]   <= store_process[0][111];
                    store_process[1][112]   <= store_process[0][127];
                    store_process[1][128]   <= store_process[0][143];
                    store_process[1][144]   <= store_process[0][159];
                    store_process[1][160]  <= store_process[0][175];
                    store_process[1][176]  <= store_process[0][191];
                    store_process[1][192]  <= store_process[0][207];
                    store_process[1][208]  <= store_process[0][223];
                    store_process[1][224]  <= store_process[0][239];
                    store_process[1][240]  <= store_process[0][255];

                    store_process[1][1]   <= store_process[0][14];
                    store_process[1][17]  <= store_process[0][30];
                    store_process[1][33]  <= store_process[0][46];
                    store_process[1][49]  <= store_process[0][62];
                    store_process[1][65]  <= store_process[0][78];
                    store_process[1][81]  <= store_process[0][94];
                    store_process[1][97]  <= store_process[0][110];
                    store_process[1][113] <= store_process[0][126];
                    store_process[1][129] <= store_process[0][142];
                    store_process[1][145] <= store_process[0][158];
                    store_process[1][161] <= store_process[0][174];
                    store_process[1][177] <= store_process[0][190];
                    store_process[1][193] <= store_process[0][206];
                    store_process[1][209] <= store_process[0][222];
                    store_process[1][225] <= store_process[0][238];
                    store_process[1][241] <= store_process[0][254];

                    store_process[1][2]   <= store_process[0][13];
                    store_process[1][18]  <= store_process[0][29];
                    store_process[1][34]  <= store_process[0][45];
                    store_process[1][50]  <= store_process[0][61];
                    store_process[1][66]  <= store_process[0][77];
                    store_process[1][82]  <= store_process[0][93];
                    store_process[1][98]  <= store_process[0][109];
                    store_process[1][114] <= store_process[0][125];
                    store_process[1][130] <= store_process[0][141];
                    store_process[1][146] <= store_process[0][157];
                    store_process[1][162] <= store_process[0][173];
                    store_process[1][178] <= store_process[0][189];
                    store_process[1][194] <= store_process[0][205];
                    store_process[1][210] <= store_process[0][221];
                    store_process[1][226] <= store_process[0][237];
                    store_process[1][242] <= store_process[0][253];

                    store_process[1][3]   <= store_process[0][12];
                    store_process[1][19]  <= store_process[0][28];
                    store_process[1][35]  <= store_process[0][44];
                    store_process[1][51]  <= store_process[0][60];
                    store_process[1][67]  <= store_process[0][76];
                    store_process[1][83]  <= store_process[0][92];
                    store_process[1][99]  <= store_process[0][108];
                    store_process[1][115] <= store_process[0][124];
                    store_process[1][131] <= store_process[0][140];
                    store_process[1][147] <= store_process[0][156];
                    store_process[1][163] <= store_process[0][172];
                    store_process[1][179] <= store_process[0][188];
                    store_process[1][195] <= store_process[0][204];
                    store_process[1][211] <= store_process[0][220];
                    store_process[1][227] <= store_process[0][236];
                    store_process[1][243] <= store_process[0][252];

                    store_process[1][4]   <= store_process[0][11];
                    store_process[1][20]  <= store_process[0][27];
                    store_process[1][36]  <= store_process[0][43];
                    store_process[1][52]  <= store_process[0][59];
                    store_process[1][68]  <= store_process[0][75];
                    store_process[1][84]  <= store_process[0][91];
                    store_process[1][100] <= store_process[0][107];
                    store_process[1][116] <= store_process[0][123];
                    store_process[1][132] <= store_process[0][139];
                    store_process[1][148] <= store_process[0][155];
                    store_process[1][164] <= store_process[0][171];
                    store_process[1][180] <= store_process[0][187];
                    store_process[1][196] <= store_process[0][203];
                    store_process[1][212] <= store_process[0][219];
                    store_process[1][228] <= store_process[0][235];
                    store_process[1][244] <= store_process[0][251];

                    store_process[1][5]   <= store_process[0][10];
                    store_process[1][21]  <= store_process[0][26];
                    store_process[1][37]  <= store_process[0][42];
                    store_process[1][53]  <= store_process[0][58];
                    store_process[1][69]  <= store_process[0][74];
                    store_process[1][85]  <= store_process[0][90];
                    store_process[1][101] <= store_process[0][106];
                    store_process[1][117] <= store_process[0][122];
                    store_process[1][133] <= store_process[0][138];
                    store_process[1][149] <= store_process[0][154];
                    store_process[1][165] <= store_process[0][170];
                    store_process[1][181] <= store_process[0][186];
                    store_process[1][197] <= store_process[0][202];
                    store_process[1][213] <= store_process[0][218];
                    store_process[1][229] <= store_process[0][234];
                    store_process[1][245] <= store_process[0][250];

                    store_process[1][6]   <= store_process[0][9];
                    store_process[1][22]  <= store_process[0][25];
                    store_process[1][38]  <= store_process[0][41];
                    store_process[1][54]  <= store_process[0][57];
                    store_process[1][70]  <= store_process[0][73];
                    store_process[1][86]  <= store_process[0][89];
                    store_process[1][102] <= store_process[0][105];
                    store_process[1][118] <= store_process[0][121];
                    store_process[1][134] <= store_process[0][137];
                    store_process[1][150] <= store_process[0][153];
                    store_process[1][166] <= store_process[0][169];
                    store_process[1][182] <= store_process[0][185];
                    store_process[1][198] <= store_process[0][201];
                    store_process[1][214] <= store_process[0][217];
                    store_process[1][230] <= store_process[0][233];
                    store_process[1][246] <= store_process[0][249];

                    store_process[1][7]   <= store_process[0][8];
                    store_process[1][23]  <= store_process[0][24];
                    store_process[1][39]  <= store_process[0][40];
                    store_process[1][55]  <= store_process[0][56];
                    store_process[1][71]  <= store_process[0][72];
                    store_process[1][87]  <= store_process[0][88];
                    store_process[1][103] <= store_process[0][104];
                    store_process[1][119] <= store_process[0][120];
                    store_process[1][135] <= store_process[0][136];
                    store_process[1][151] <= store_process[0][152];
                    store_process[1][167] <= store_process[0][168];
                    store_process[1][183] <= store_process[0][184];
                    store_process[1][199] <= store_process[0][200];
                    store_process[1][215] <= store_process[0][216];
                    store_process[1][231] <= store_process[0][232];
                    store_process[1][247] <= store_process[0][248];

                    store_process[1][8] <=  store_process[0][7] ;
                    store_process[1][24]<= store_process[0][23] ;
                    store_process[1][40]<= store_process[0][39] ;
                    store_process[1][56]<= store_process[0][55] ;
                    store_process[1][72]<= store_process[0][71] ;
                    store_process[1][88]<= store_process[0][87] ;
                    store_process[1][104]<=store_process[0][103];
                    store_process[1][120]<=store_process[0][119];
                    store_process[1][136]<=store_process[0][135];
                    store_process[1][152]<=store_process[0][151];
                    store_process[1][168]<=store_process[0][167];
                    store_process[1][184]<=store_process[0][183];
                    store_process[1][200]<=store_process[0][199];
                    store_process[1][216]<=store_process[0][215];
                    store_process[1][232]<=store_process[0][231];
                    store_process[1][248]<=store_process[0][247];

                    store_process[1][9]   <= store_process[0][6];
                    store_process[1][25]  <= store_process[0][22];
                    store_process[1][41]  <= store_process[0][38];
                    store_process[1][57]  <= store_process[0][54];
                    store_process[1][73]  <= store_process[0][70];
                    store_process[1][89]  <= store_process[0][86];
                    store_process[1][105] <= store_process[0][102];
                    store_process[1][121] <= store_process[0][118];
                    store_process[1][137] <= store_process[0][134];
                    store_process[1][153] <= store_process[0][150];
                    store_process[1][169] <= store_process[0][166];
                    store_process[1][185] <= store_process[0][182];
                    store_process[1][201] <= store_process[0][198];
                    store_process[1][217] <= store_process[0][214];
                    store_process[1][233] <= store_process[0][230];
                    store_process[1][249] <= store_process[0][246];

                    store_process[1][10]  <= store_process[0][5];
                    store_process[1][26]  <= store_process[0][21];
                    store_process[1][42]  <= store_process[0][37];
                    store_process[1][58]  <= store_process[0][53];
                    store_process[1][74]  <= store_process[0][69];
                    store_process[1][90]  <= store_process[0][85];
                    store_process[1][106] <= store_process[0][101];
                    store_process[1][122] <= store_process[0][117];
                    store_process[1][138] <= store_process[0][133];
                    store_process[1][154] <= store_process[0][149];
                    store_process[1][170] <= store_process[0][165];
                    store_process[1][186] <= store_process[0][181];
                    store_process[1][202] <= store_process[0][197];
                    store_process[1][218] <= store_process[0][213];
                    store_process[1][234] <= store_process[0][229];
                    store_process[1][250] <= store_process[0][245];

                    store_process[1][11]  <= store_process[0][4];
                    store_process[1][27]  <= store_process[0][20];
                    store_process[1][43]  <= store_process[0][36];
                    store_process[1][59]  <= store_process[0][52];
                    store_process[1][75]  <= store_process[0][68];
                    store_process[1][91]  <= store_process[0][84];
                    store_process[1][107] <= store_process[0][100];
                    store_process[1][123] <= store_process[0][116];
                    store_process[1][139] <= store_process[0][132];
                    store_process[1][155] <= store_process[0][148];
                    store_process[1][171] <= store_process[0][164];
                    store_process[1][187] <= store_process[0][180];
                    store_process[1][203] <= store_process[0][196];
                    store_process[1][219] <= store_process[0][212];
                    store_process[1][235] <= store_process[0][228];
                    store_process[1][251] <= store_process[0][244];

                    store_process[1][12]  <= store_process[0][3];
                    store_process[1][28]  <= store_process[0][19];
                    store_process[1][44]  <= store_process[0][35];
                    store_process[1][60]  <= store_process[0][51];
                    store_process[1][76]  <= store_process[0][67];
                    store_process[1][92]  <= store_process[0][83];
                    store_process[1][108] <= store_process[0][99];
                    store_process[1][124] <= store_process[0][115];
                    store_process[1][140] <= store_process[0][131];
                    store_process[1][156] <= store_process[0][147];
                    store_process[1][172] <= store_process[0][163];
                    store_process[1][188] <= store_process[0][179];
                    store_process[1][204] <= store_process[0][195];
                    store_process[1][220] <= store_process[0][211];
                    store_process[1][236] <= store_process[0][227];
                    store_process[1][252] <= store_process[0][243];

                    store_process[1][13]  <= store_process[0][2];
                    store_process[1][29]  <= store_process[0][18];
                    store_process[1][45]  <= store_process[0][34];
                    store_process[1][61]  <= store_process[0][50];
                    store_process[1][77]  <= store_process[0][66];
                    store_process[1][93]  <= store_process[0][82];
                    store_process[1][109] <= store_process[0][98];
                    store_process[1][125] <= store_process[0][114];
                    store_process[1][141] <= store_process[0][130];
                    store_process[1][157] <= store_process[0][146];
                    store_process[1][173] <= store_process[0][162];
                    store_process[1][189] <= store_process[0][178];
                    store_process[1][205] <= store_process[0][194];
                    store_process[1][221] <= store_process[0][210];
                    store_process[1][237] <= store_process[0][226];
                    store_process[1][253] <= store_process[0][242];

                    store_process[1][14]  <= store_process[0][1];
                    store_process[1][30]  <= store_process[0][17];
                    store_process[1][46]  <= store_process[0][33];
                    store_process[1][62]  <= store_process[0][49];
                    store_process[1][78]  <= store_process[0][65];
                    store_process[1][94]  <= store_process[0][81];
                    store_process[1][110] <= store_process[0][97];
                    store_process[1][126] <= store_process[0][113];
                    store_process[1][142] <= store_process[0][129];
                    store_process[1][158] <= store_process[0][145];
                    store_process[1][174] <= store_process[0][161];
                    store_process[1][190] <= store_process[0][177];
                    store_process[1][206] <= store_process[0][193];
                    store_process[1][222] <= store_process[0][209];
                    store_process[1][238] <= store_process[0][225];
                    store_process[1][254] <= store_process[0][241];

                    store_process[1][15]  <= store_process[0][0];
                    store_process[1][31]  <= store_process[0][16];
                    store_process[1][47]  <= store_process[0][32];
                    store_process[1][63]  <= store_process[0][48];
                    store_process[1][79]  <= store_process[0][64];
                    store_process[1][95]  <= store_process[0][80];
                    store_process[1][111] <= store_process[0][96];
                    store_process[1][127] <= store_process[0][112];
                    store_process[1][143] <= store_process[0][128];
                    store_process[1][159] <= store_process[0][144];
                    store_process[1][175] <= store_process[0][160];
                    store_process[1][191] <= store_process[0][176];
                    store_process[1][207] <= store_process[0][192];
                    store_process[1][223] <= store_process[0][208];
                    store_process[1][239] <= store_process[0][224];
                    store_process[1][255] <= store_process[0][240];
                end
            end
            FILTER:begin
                if(image_size_s=='d0)begin
                    store_process[1][padding_cnt_b]<=pad_median_out;
                end else if (image_size_s=='d1)begin
                    store_process[1][padding_cnt_b]<=pad_median_out;
                end else if(image_size_s=='d2)begin
                    store_process[1][padding_cnt_b]<=pad_median_out;
                end
            end
        endcase
    end
end

mac9 mac_instance (
        .data_in0(data1_in0), .data_in1(data1_in1), .data_in2(data1_in2),
        .data_in3(data1_in3), .data_in4(data1_in4), .data_in5(data1_in5),
        .data_in6(data1_in6), .data_in7(data1_in7), .data_in8(data1_in8),
        .coeff0(template_s[0]), .coeff1(template_s[1]), .coeff2(template_s[2]),
        .coeff3(template_s[3]), .coeff4(template_s[4]), .coeff5(template_s[5]),
        .coeff6(template_s[6]), .coeff7(template_s[7]), .coeff8(template_s[8]),
        .mac_out(pad_mac_out)
    );

always @(*) begin
    if(image_size_s=='d0)begin
        if(padding_cnt_b=='d0)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=0;
            data1_in4=store_process[0][0];
            data1_in5=store_process[0][1];
            data1_in6=0;
            data1_in7=store_process[0][4];    
            data1_in8=store_process[0][5];  
        end else if(padding_cnt_b=='d3)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=store_process[0][2];
            data1_in4=store_process[0][3];
            data1_in5=0;
            data1_in6=store_process[0][6];
            data1_in7=store_process[0][7];    
            data1_in8=0;  
        end else if(padding_cnt_b=='d12)begin
            data1_in0=0;
            data1_in1=store_process[0][8];
            data1_in2=store_process[0][9];
            data1_in3=0;
            data1_in4=store_process[0][12];
            data1_in5=store_process[0][13];
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if(padding_cnt_b=='d15)begin
            data1_in0=store_process[0][10];
            data1_in1=store_process[0][11];
            data1_in2=0;
            data1_in3=store_process[0][14];
            data1_in4=store_process[0][15];
            data1_in5=0;
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if(padding_cnt_b=='d1||padding_cnt_b=='d2)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=store_process[0][padding_cnt_b+3];
            data1_in7=store_process[0][padding_cnt_b+4];    
            data1_in8=store_process[0][padding_cnt_b+5]; 
        end else if(padding_cnt_b=='d13||padding_cnt_b=='d14)begin
            data1_in0=store_process[0][padding_cnt_b-5];
            data1_in1=store_process[0][padding_cnt_b-4];
            data1_in2=store_process[0][padding_cnt_b-3];
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if (padding_cnt_b == 'd8  || padding_cnt_b == 'd4) begin
            data1_in0=0;
            data1_in1=store_process[0][padding_cnt_b-4];
            data1_in2=store_process[0][padding_cnt_b-3];
            data1_in3=0;
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=0;
            data1_in7=store_process[0][padding_cnt_b+4];    
            data1_in8=store_process[0][padding_cnt_b+5]; 
        end else if (padding_cnt_b == 'd7 || padding_cnt_b == 'd11) begin
            data1_in0=store_process[0][padding_cnt_b-5];
            data1_in1=store_process[0][padding_cnt_b-4];
            data1_in2=0;
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=0;
            data1_in6=store_process[0][padding_cnt_b+3];
            data1_in7=store_process[0][padding_cnt_b+4];    
            data1_in8=0;  
        end else begin
            data1_in0=store_process[0][padding_cnt_b-5];
            data1_in1=store_process[0][padding_cnt_b-4];
            data1_in2=store_process[0][padding_cnt_b-3];
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=store_process[0][padding_cnt_b+3];
            data1_in7=store_process[0][padding_cnt_b+4];    
            data1_in8=store_process[0][padding_cnt_b+5]; 
        end
    end else if(image_size_s=='d1)begin
        if(padding_cnt_b=='d0)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=0;
            data1_in4=store_process[0][0];
            data1_in5=store_process[0][1];
            data1_in6=0;
            data1_in7=store_process[0][8];    
            data1_in8=store_process[0][9];  
        end else if(padding_cnt_b=='d7)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=store_process[0][6];
            data1_in4=store_process[0][7];
            data1_in5=0;
            data1_in6=store_process[0][14];
            data1_in7=store_process[0][15];    
            data1_in8=0;  
        end else if(padding_cnt_b=='d56)begin
            data1_in0=0;
            data1_in1=store_process[0][48];
            data1_in2=store_process[0][49];
            data1_in3=0;
            data1_in4=store_process[0][56];
            data1_in5=store_process[0][57];
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if(padding_cnt_b=='d63)begin
            data1_in0=store_process[0][54];
            data1_in1=store_process[0][55];
            data1_in2=0;
            data1_in3=store_process[0][62];
            data1_in4=store_process[0][63];
            data1_in5=0;
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if(padding_cnt_b>='d1&&padding_cnt_b<='d7)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=store_process[0][padding_cnt_b+7];
            data1_in7=store_process[0][padding_cnt_b+8];    
            data1_in8=store_process[0][padding_cnt_b+9]; 
        end else if(padding_cnt_b>='d57&&padding_cnt_b<='d62)begin
            data1_in0=store_process[0][padding_cnt_b-9];
            data1_in1=store_process[0][padding_cnt_b-8];
            data1_in2=store_process[0][padding_cnt_b-7];
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if (padding_cnt_b == 'd8  || padding_cnt_b == 'd16 || 
        padding_cnt_b == 'd24 || padding_cnt_b == 'd32 || 
        padding_cnt_b == 'd40 || padding_cnt_b == 'd48) begin
            data1_in0=0;
            data1_in1=store_process[0][padding_cnt_b-8];
            data1_in2=store_process[0][padding_cnt_b-7];
            data1_in3=0;
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=0;
            data1_in7=store_process[0][padding_cnt_b+8];    
            data1_in8=store_process[0][padding_cnt_b+9]; 
        end else if (padding_cnt_b == 'd15 || padding_cnt_b == 'd23 || 
        padding_cnt_b == 'd31 || padding_cnt_b == 'd39 || 
        padding_cnt_b == 'd47 || padding_cnt_b == 'd55) begin
            data1_in0=store_process[0][padding_cnt_b-9];
            data1_in1=store_process[0][padding_cnt_b-8];
            data1_in2=0;
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=0;
            data1_in6=store_process[0][padding_cnt_b+7];
            data1_in7=store_process[0][padding_cnt_b+8];    
            data1_in8=0; 
        end else begin 
            data1_in0=store_process[0][padding_cnt_b-9];
            data1_in1=store_process[0][padding_cnt_b-8];
            data1_in2=store_process[0][padding_cnt_b-7];
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=store_process[0][padding_cnt_b+7];
            data1_in7=store_process[0][padding_cnt_b+8];
            data1_in8=store_process[0][padding_cnt_b+9];
        end
    end else if(image_size_s=='d2)begin
        if(padding_cnt_b=='d0)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=0;
            data1_in4=store_process[0][0];
            data1_in5=store_process[0][1];
            data1_in6=0;
            data1_in7=store_process[0][16];    
            data1_in8=store_process[0][17]; 
        end else if(padding_cnt_b=='d15)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=store_process[0][14];
            data1_in4=store_process[0][15];
            data1_in5=0;
            data1_in6=store_process[0][30];
            data1_in7=store_process[0][31];    
            data1_in8=0;  
        end else if(padding_cnt_b=='d240)begin
            data1_in0=0;
            data1_in1=store_process[0][224];
            data1_in2=store_process[0][225];
            data1_in3=0;
            data1_in4=store_process[0][240];
            data1_in5=store_process[0][241];
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if(padding_cnt_b=='d255)begin
            data1_in0=store_process[0][238];
            data1_in1=store_process[0][239];
            data1_in2=0;
            data1_in3=store_process[0][254];
            data1_in4=store_process[0][255];
            data1_in5=0;
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if(padding_cnt_b>='d1&&padding_cnt_b<='d14)begin
            data1_in0=0;
            data1_in1=0;
            data1_in2=0;
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=store_process[0][padding_cnt_b+15];
            data1_in7=store_process[0][padding_cnt_b+16];    
            data1_in8=store_process[0][padding_cnt_b+17]; 
        end else if(padding_cnt_b>='d241&&padding_cnt_b<='d254)begin
            data1_in0=store_process[0][padding_cnt_b-17];
            data1_in1=store_process[0][padding_cnt_b-16];
            data1_in2=store_process[0][padding_cnt_b-15];
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=0;
            data1_in7=0;    
            data1_in8=0; 
        end else if (padding_cnt_b == 'd16  || padding_cnt_b == 'd32  || 
        padding_cnt_b == 'd48  || padding_cnt_b == 'd64  || 
        padding_cnt_b == 'd80  || padding_cnt_b == 'd96  || 
        padding_cnt_b == 'd112 || padding_cnt_b == 'd128 || 
        padding_cnt_b == 'd144 || padding_cnt_b == 'd160 || 
        padding_cnt_b == 'd176 || padding_cnt_b == 'd192 || 
        padding_cnt_b == 'd208 || padding_cnt_b == 'd224) begin
            data1_in0=0;
            data1_in1=store_process[0][padding_cnt_b-16];
            data1_in2=store_process[0][padding_cnt_b-15];
            data1_in3=0;
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=0;
            data1_in7=store_process[0][padding_cnt_b+16];    
            data1_in8=store_process[0][padding_cnt_b+17]; 
        end else if (padding_cnt_b == 'd31  || padding_cnt_b == 'd47  || 
        padding_cnt_b == 'd63  || padding_cnt_b == 'd79  || 
        padding_cnt_b == 'd95  || padding_cnt_b == 'd111 || 
        padding_cnt_b == 'd127 || padding_cnt_b == 'd143 || 
        padding_cnt_b == 'd159 || padding_cnt_b == 'd175 || 
        padding_cnt_b == 'd191 || padding_cnt_b == 'd207 || 
        padding_cnt_b == 'd223 || padding_cnt_b == 'd239) begin
            data1_in0=store_process[0][padding_cnt_b-17];
            data1_in1=store_process[0][padding_cnt_b-16];
            data1_in2=0;
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=0;
            data1_in6=store_process[0][padding_cnt_b+15];
            data1_in7=store_process[0][padding_cnt_b+16];    
            data1_in8=0; 
        end else begin
            data1_in0=store_process[0][padding_cnt_b-17];
            data1_in1=store_process[0][padding_cnt_b-16];
            data1_in2=store_process[0][padding_cnt_b-15];
            data1_in3=store_process[0][padding_cnt_b-1];
            data1_in4=store_process[0][padding_cnt_b];
            data1_in5=store_process[0][padding_cnt_b+1];
            data1_in6=store_process[0][padding_cnt_b+15];
            data1_in7=store_process[0][padding_cnt_b+16];
            data1_in8=store_process[0][padding_cnt_b+17];
        end
    end else begin
        data1_in0=0;
        data1_in1=0;
        data1_in2=0;
        data1_in3=0;
        data1_in4=0;
        data1_in5=0;
        data1_in6=0;
        data1_in7=0;  
        data1_in8=0;
    end
end


//==================================================================
// CALCULATE
//==================================================================

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_valid<='d0;
        out_value<='d0;
    end else if(state==OUT)begin
        out_valid<='d1;
        out_value<=out_s;
    end else begin 
        out_valid<='d0;
        out_value<='d0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_cnt1<='d19;
    end else if(state==IDLE)begin
        out_cnt1<='d19;
    end else if(state==OUT||next_state==OUT)begin
        if(out_cnt1=='d0)begin
            out_cnt1<='d19;
        end else begin
            out_cnt1<=out_cnt1-'d1;
        end
    end 
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_cnt2<='d0;
    end else if(state==IDLE)begin
        out_cnt2<='d0;
    end else if(out_valid)begin
        if(out_cnt1=='d0)begin
            out_cnt2<=out_cnt2+'d1;
        end else begin
            out_cnt2<=out_cnt2;
        end
    end 
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_s<='d0;
    end else if(state==IDLE)begin
        out_s<='d0;
    end else if(state==OUT||next_state==OUT)begin
        out_s<=pad_mac_out[out_cnt1];
    end else begin 
        out_s<='d0;
    end
end


endmodule

module comparator_module(
    input wire [7:0] data_in1,  
    input wire [7:0] data_in2,  
    output reg [7:0] data_out1, 
    output reg [7:0] data_out2  
);

always @(*) begin
    if (data_in1 >= data_in2) begin
        data_out1 = data_in1; 
        data_out2 = data_in2;
    end else begin
        data_out1 = data_in2; 
        data_out2 = data_in1;
    end
end

endmodule


module  median_network(
    input wire [7:0] data_in_0, data_in_1, data_in_2, data_in_3, data_in_4, data_in_5, data_in_6, data_in_7, data_in_8, 
    output wire [7:0] data_out   
);

    wire [7:0] a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
    wire [7:0] b1, b2, b3, b4, b5, b6, b7, b8, b9, b10,b11, b12, b13, b14, b15, b16,b17,b18;
    wire [7:0] c1, c2, c3, c4, c5, c6;

    wire [7:0] stage1 [8:0];
    wire [7:0] stage2 [8:0];

    comparator_module u1 (.data_in1(data_in_0), .data_in2(data_in_1), .data_out1(a1), .data_out2(a2));
    comparator_module u2 (.data_in1(data_in_3), .data_in2(data_in_4), .data_out1(a7), .data_out2(a8));
    comparator_module u3 (.data_in1(data_in_6), .data_in2(data_in_7), .data_out1(a13), .data_out2(a14));

    comparator_module u4 (.data_in1(a2), .data_in2(data_in_2), .data_out1(a3), .data_out2(a4));
    comparator_module u5 (.data_in1(a8), .data_in2(data_in_5),.data_out1(a9), .data_out2(a10));
    comparator_module u6 (.data_in1(a14), .data_in2(data_in_8),.data_out1(a15), .data_out2(a16));

    comparator_module u7 (.data_in1(a1), .data_in2(a3), .data_out1(a5), .data_out2(a6));
    comparator_module u8 (.data_in1(a7), .data_in2(a9),.data_out1(a11), .data_out2(a12));
    comparator_module u9 (.data_in1(a13), .data_in2(a15),.data_out1(a17), .data_out2(a18));

    assign stage1[0]=a5;
    assign stage1[1]=a6;
    assign stage1[2]=a4;
    assign stage1[3]=a11;
    assign stage1[4]=a12;
    assign stage1[5]=a10;
    assign stage1[6]=a17;
    assign stage1[7]=a18;
    assign stage1[8]=a16;

    comparator_module u10 (.data_in1(stage1[0]), .data_in2(stage1[3]), .data_out1(b1), .data_out2(b2));
    comparator_module u11 (.data_in1(b2), .data_in2(stage1[6]), .data_out1(b3), .data_out2(b4));
    comparator_module u12 (.data_in1(b1), .data_in2(b3), .data_out1(b5), .data_out2(b6));

    comparator_module u13 (.data_in1(stage1[1]), .data_in2(stage1[4]), .data_out1(b7), .data_out2(b8));
    comparator_module u14 (.data_in1(b8), .data_in2(stage1[7]), .data_out1(b9), .data_out2(b10));
    comparator_module u15 (.data_in1(b7), .data_in2(b9), .data_out1(b11), .data_out2(b12));

    comparator_module u16 (.data_in1(stage1[2]), .data_in2(stage1[5]), .data_out1(b13), .data_out2(b14));
    comparator_module u17 (.data_in1(b14), .data_in2(stage1[8]), .data_out1(b15), .data_out2(b16));
    comparator_module u18 (.data_in1(b13), .data_in2(b15), .data_out1(b17), .data_out2(b18));

    assign stage2[0]=b5;
    assign stage2[1]=b11;
    assign stage2[2]=b17;
    assign stage2[3]=b6;
    assign stage2[4]=b12;
    assign stage2[5]=b18;
    assign stage2[6]=b4;
    assign stage2[7]=b10;
    assign stage2[8]=b16;

    comparator_module u19 (.data_in1(stage2[2]), .data_in2(stage2[6]), .data_out1(c1), .data_out2(c2));
    comparator_module u20 (.data_in1(stage2[4]), .data_in2(c2), .data_out1(c3), .data_out2(c4));
    comparator_module u21 (.data_in1(c1), .data_in2(c3), .data_out1(c5), .data_out2(c6));
    
    assign data_out=c6;
endmodule

module mac9(
    input wire [7:0] data_in0, data_in1, data_in2, data_in3, data_in4,
                      data_in5, data_in6, data_in7, data_in8,
    input wire [7:0] coeff0, coeff1, coeff2, coeff3, coeff4,
                      coeff5, coeff6, coeff7, coeff8,
    output wire [19:0] mac_out
);

    wire [15:0] mul0, mul1, mul2, mul3, mul4, mul5, mul6, mul7, mul8;

    assign mul0 = data_in0 * coeff0;
    assign mul1 = data_in1 * coeff1;
    assign mul2 = data_in2 * coeff2;
    assign mul3 = data_in3 * coeff3;
    assign mul4 = data_in4 * coeff4;
    assign mul5 = data_in5 * coeff5;
    assign mul6 = data_in6 * coeff6;
    assign mul7 = data_in7 * coeff7;
    assign mul8 = data_in8 * coeff8;

    assign mac_out = mul0 + mul1 + mul2 + mul3 + mul4 + mul5 + mul6 + mul7 + mul8;

endmodule

