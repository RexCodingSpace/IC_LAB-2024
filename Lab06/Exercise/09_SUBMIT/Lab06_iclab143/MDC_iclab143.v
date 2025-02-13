//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//    (C) Copyright System Integration and Silicon Implementation Laboratory
//    All Right Reserved
//		Date		: 2024/9
//		Version		: v1.0
//   	File Name   : MDC.v
//   	Module Name : MDC
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

//synopsys translate_off
`include "HAMMING_IP.v"
//synopsys translate_on

module MDC(
    // Input signals
    clk,
	rst_n,
	in_valid,
    in_data, 
	in_mode,
    // Output signals
    out_valid, 
	out_data
);

// ===============================================================
// Input & Output Declaration
// ===============================================================
input clk, rst_n, in_valid;
input [8:0] in_mode;
input [14:0] in_data;

output reg out_valid;
output reg [206:0] out_data;
// ===============================================================
// register
// ===============================================================
parameter IDLE = 3'd0;
parameter READ = 3'd1;
parameter OUT = 3'd3;

parameter SIZE_2x2 = 5'b00100;  
parameter SIZE_3x3 = 5'b00110;  
parameter SIZE_4x4 = 5'b10110;  

reg [1:0] state, next_state;
reg [14:0] decode_in_data;
reg signed[10:0] decode_out_data;

reg [8:0] decode_in_ins;
reg signed[4:0] decode_out_ins;
reg [4:0] Instruction;

reg signed [10:0] a, b, c, d, e, f, g, h, i;
wire signed [22:0] det1;
wire signed [35:0] det_last;

reg signed [10:0] decoded_data [15:0];
reg [8:0] in_mode_store;
reg signed [206:0] out_data_store;

reg signed [35:0] m1_36bit; 
reg signed [11:0] m2_12bit;
reg signed [47:0] mult_result;

reg signed [48:0] add1_49bit; 
reg signed [48:0] add2_49bit;
reg signed [48:0] add_result;

reg signed [35:0] store_det;
reg [14:0] store_input;

reg[3:0] read_cnt;
reg[3:0] cal_cnt;
reg out_cnt;

integer j;
// ===============================================================
// DESIGN
// ===============================================================
HAMMING_IP #(5) HMP1(.IN_code(decode_in_ins),.OUT_code(decode_out_ins));
HAMMING_IP #(11) HMP2(.IN_code(decode_in_data),.OUT_code(decode_out_data));


determinant_3x3 uut (
    .a(a), .b(b), .c(c),
    .d(d), .e(e), .f(f),
    .g(g), .h(h), .i(i),
    .det1(det1),.det_last(det_last)
);

multi m3(
    .m1_36bit(m1_36bit),  
    .m2_12bit(m2_12bit),
    .mult_result(mult_result)
);

add add1(
    .add1_49bit(add1_49bit),  // 第一行元素
    .add2_49bit(add2_49bit),
    .add_result(add_result)
);

// ===============================================================
// FSM
// ===============================================================
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
                next_state = READ;
            else
                next_state = state;
        end 
        READ: begin
            if (!in_valid)
                next_state = OUT;
            else
                next_state = state;
        end
        OUT: begin
            next_state = IDLE;
        end
        default: next_state = IDLE;
    endcase
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        store_input<='d0;
    end else if(next_state==IDLE)begin
        store_input<='d0;
    end else if(next_state==READ)begin
        if(read_cnt<='d15)begin
            store_input<=in_data;
        end
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        in_mode_store<='d0;
    end else if(next_state==IDLE)begin
        in_mode_store<='d0;
    end else if(next_state==READ&&state==IDLE&&read_cnt=='d0)begin
        in_mode_store<=in_mode;
    end
end
//decode instruction
always @(*) begin
    if(state==READ&&read_cnt=='d0)begin
        decode_in_ins=in_mode_store;
    end else begin
        decode_in_ins=0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        Instruction<='d0;
    end else if(next_state==READ&&read_cnt=='d0)begin
        Instruction<=decode_out_ins;
    end
end
//decode data
always @(*) begin
    if(state==READ)begin
        decode_in_data=store_input;
    end else begin
        decode_in_data=0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(j=0;j<=15;j=j+1)begin
            decoded_data[j]<='d0;
        end
    end else if(next_state==IDLE)begin
        for(j=0;j<=15;j=j+1)begin
            decoded_data[j]<='d0;
        end
    end else if(state==READ)begin
        if(read_cnt<='d15)begin
            decoded_data[read_cnt]<=decode_out_data;
        end
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        read_cnt<='d0;
    end else if(state==IDLE)begin
        read_cnt<='d0;
    end else if(state==READ&&read_cnt<='d14) begin
        read_cnt<=read_cnt+'d1;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_cnt<='d0;
    end else if(state==IDLE)begin
        out_cnt<='d0;
    end else if(state==OUT) begin
        out_cnt<=out_cnt+'d1;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        cal_cnt<='d0;
    end else if(state==IDLE)begin
        cal_cnt<='d0;
    end else begin
        case(Instruction)
            SIZE_2x2:begin
                case(read_cnt)
                    6:begin
                        cal_cnt<=1;
                    end
                    7:begin
                        cal_cnt<=2;
                    end
                    9:begin
                        cal_cnt<=4;
                    end
                    10:begin
                        cal_cnt<=5;
                    end
                    11:begin
                        cal_cnt<=6;
                    end
                    13:begin
                        cal_cnt<=8;
                    end
                    14:begin
                        cal_cnt<=9;
                    end
                    15:begin
                        cal_cnt<=10;
                    end
                    default:begin
                        cal_cnt<=cal_cnt;
                    end
                endcase
            end
            SIZE_3x3:begin
                case(read_cnt)
                    11:begin
                        cal_cnt<=1;
                    end
                    14:begin
                        cal_cnt<=4;
                    end
                    15:begin
                        cal_cnt<=5;
                    end
                    default:begin
                        cal_cnt<=cal_cnt;
                    end
                endcase
            end
            default:begin
                cal_cnt<='d0;
            end
        endcase
    end
end

always @(*) begin
    case(Instruction)
        SIZE_2x2:begin
            if(read_cnt>='d6)begin
                a=0;
                b=0;
                c=0;
                d=0;
                e=decoded_data[cal_cnt];
                f=decoded_data[cal_cnt+1];
                g=0;
                h=decoded_data[cal_cnt+4];
                i=decoded_data[cal_cnt+5];
            end else begin
                a=0;
                b=0;
                c=0;
                d=0;
                e=0;
                f=0;
                g=0;
                h=0;
                i=0;
            end
        end
        SIZE_3x3:begin
            if(read_cnt>='d11)begin
                a=decoded_data[cal_cnt];
                b=decoded_data[cal_cnt+1];
                c=decoded_data[cal_cnt+2];
                d=decoded_data[cal_cnt+4];
                e=decoded_data[cal_cnt+5];
                f=decoded_data[cal_cnt+6];
                g=decoded_data[cal_cnt+8];
                h=decoded_data[cal_cnt+9];
                i=decoded_data[cal_cnt+10];
            end else begin
                a=0;
                b=0;
                c=0;
                d=0;
                e=0;
                f=0;
                g=0;
                h=0;
                i=0;
            end
        end
        SIZE_4x4:begin
            if(read_cnt=='d12)begin
                a=decoded_data[1];
                b=decoded_data[2];
                c=decoded_data[3];
                d=decoded_data[5];
                e=decoded_data[6];
                f=decoded_data[7];
                g=decoded_data[9];
                h=decoded_data[10];
                i=decoded_data[11];
            end else if(read_cnt=='d13)begin
                a=decoded_data[0];
                b=decoded_data[2];
                c=decoded_data[3];
                d=decoded_data[4];
                e=decoded_data[6];
                f=decoded_data[7];
                g=decoded_data[8];
                h=decoded_data[10];
                i=decoded_data[11];
            end else if(read_cnt=='d14)begin
                a=decoded_data[0];
                b=decoded_data[1];
                c=decoded_data[3];
                d=decoded_data[4];
                e=decoded_data[5];
                f=decoded_data[7];
                g=decoded_data[8];
                h=decoded_data[9];
                i=decoded_data[11];
            end else if(read_cnt=='d15)begin
                a=decoded_data[0];
                b=decoded_data[1];
                c=decoded_data[2];
                d=decoded_data[4];
                e=decoded_data[5];
                f=decoded_data[6];
                g=decoded_data[8];
                h=decoded_data[9];
                i=decoded_data[10];
            end else begin
                a=0;
                b=0;
                c=0;
                d=0;
                e=0;
                f=0;
                g=0;
                h=0;
                i=0;
            end
        end
        default:begin
            a=0;
            b=0;
            c=0;
            d=0;
            e=0;
            f=0;
            g=0;
            h=0;
            i=0;
        end
    endcase
end
//out_store
always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        for(j=0;j<=206;j=j+1)begin
            out_data_store[j]<='d0;
        end
    end else if(state==IDLE&&next_state==READ)begin
        for(j=0;j<=206;j=j+1)begin
            out_data_store[j]<='d0;
        end
    end else begin
        case(Instruction)
            SIZE_2x2:begin
                case(cal_cnt)
                    0:begin
                        out_data_store[206:184]<=det1;
                    end
                    1:begin
                        out_data_store[183:161]<=det1;
                    end
                    2:begin
                        out_data_store[160:138]<=det1;
                    end
                    4:begin
                        out_data_store[137:115]<=det1;
                    end
                    5:begin
                        out_data_store[114:92]<=det1;
                    end
                    6:begin
                        out_data_store[91:69]<=det1;
                    end 
                    8:begin
                        out_data_store[68:46]<=det1;
                    end
                    9:begin
                        out_data_store[45:23]<=det1;
                    end
                    10:begin
                        out_data_store[22:0]<=det1;
                    end
                endcase
            end
            SIZE_3x3:begin
                out_data_store[206:204]<=3'b000;
                case(cal_cnt)
                    0:begin
                        out_data_store[203:153]<=det_last;
                    end
                    1:begin
                        out_data_store[152:102]<=det_last;
                    end
                    4:begin
                        out_data_store[101:51]<=det_last;
                    end
                    5:begin
                        out_data_store[50:0]<=det_last;
                    end
                endcase
            end
            SIZE_4x4:begin
                if(state==OUT)begin
                    out_data_store<={{158{add_result[48]}},add_result};
                end else if(read_cnt>='d13)begin
                    out_data_store[48:0]<=add_result;
                end 
            end
        endcase 
    end 
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        store_det<='d0;
    end else if(state==READ)begin
        if(Instruction==SIZE_4x4)begin
            if(read_cnt>='d12&&read_cnt<='d15)begin
                store_det<=det_last;
            end
        end
    end
end

always @(*) begin
    if(Instruction==SIZE_4x4)begin
        if(read_cnt=='d13)begin
            m1_36bit=store_det;
            // unsigned reg [10:0] abc;
            // abc = (~decoded_data[12]+1);
            // m2_11bit = {~decoded_data[12][10], abc};            
            m2_12bit=(~decoded_data[12]+1);
        end else if(read_cnt=='d14)begin
            m1_36bit=store_det;
            m2_12bit=decoded_data[13];
        end else if(read_cnt=='d15&&state==READ)begin
            m1_36bit=store_det;
            m2_12bit=(~decoded_data[14]+1);
        end else if(state==OUT&&out_cnt=='d0)begin
            m1_36bit=store_det;
            m2_12bit=decoded_data[15];
        end else begin
            m1_36bit=0;
            m2_12bit=0;
        end
    end else begin
        m1_36bit=0;
        m2_12bit=0;
    end
end

always @(*) begin
    if(Instruction==SIZE_4x4)begin
        if(read_cnt=='d13)begin
            add1_49bit=out_data_store[48:0];
            add2_49bit={{1{mult_result[47]}},mult_result};
        end else if(read_cnt=='d14)begin
            add1_49bit=out_data_store[48:0];
            add2_49bit={{1{mult_result[47]}},mult_result};
        end else if(read_cnt=='d15&&state==READ)begin
            add1_49bit=out_data_store[48:0];
            add2_49bit={{1{mult_result[47]}},mult_result};
        end else if(state==OUT&&out_cnt=='d0)begin
            add1_49bit=out_data_store[48:0];
            add2_49bit={{1{mult_result[47]}},mult_result};
        end else begin
            add1_49bit=0;
            add2_49bit=0;
        end
    end else begin
        add1_49bit=0;
        add2_49bit=0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_valid<='d0;
    end else if(state==OUT)begin
        out_valid<='d1;
    end else begin
        out_valid<='d0;
    end
end

always @(*) begin
    if(out_cnt=='d1)begin
        out_data=out_data_store;
    end else begin
        out_data=0;
    end
end


endmodule

module determinant_3x3 (
    input signed [10:0] a,  // 第一行元素
    input signed [10:0] b,
    input signed [10:0] c,
    input signed [10:0] d,  // 第二行元素
    input signed [10:0] e,
    input signed [10:0] f,
    input signed [10:0] g,  // 第三行元素
    input signed [10:0] h,
    input signed [10:0] i,
    output reg signed [22:0] det1,  // 行列式結果
    output reg signed [35:0] det_last
);
    reg signed [22:0] det2;
    reg signed [22:0] det3;
    always @(*) begin
        det1 = (e * i) - (f * h);
        det2 = (d * i) - (f * g);
        det3 = (d * h) - (e * g);
        det_last = (a * det1) - (b * det2) + (c * det3);
    end
endmodule

module multi (
    input signed [35:0] m1_36bit,  // 第一行元素
    input signed [11:0] m2_12bit,
    output reg signed [47:0] mult_result
);
    always @(*) begin
        mult_result=m1_36bit*m2_12bit;
    end
endmodule

module add (
    input signed [48:0] add1_49bit,  // 第一行元素
    input signed [48:0] add2_49bit,
    output reg signed [48:0] add_result
);
    always @(*) begin
        add_result=add1_49bit+add2_49bit;
    end
endmodule



