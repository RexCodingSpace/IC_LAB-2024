//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//    (C) Copyright System Integration and Silicon Implementation Laboratory
//    All Right Reserved
//		Date		: 2024/10
//		Version		: v1.0
//   	File Name   : HAMMING_IP.v
//   	Module Name : HAMMING_IP
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################
module HAMMING_IP #(parameter IP_BIT = 8) (
    // Input signals
    IN_code,
    // Output signals
    OUT_code
);

// ===============================================================
// Input & Output
// ===============================================================
input [IP_BIT+4-1:0]  IN_code;
output reg [IP_BIT-1:0] OUT_code;

reg [3:0] data [IP_BIT+4-1:0];
reg [3:0] result;
reg [IP_BIT+4-1:0] input_store;
// ===============================================================
// Design
// ===============================================================

//calculate 
genvar i,j;
generate
    case(IP_BIT)
        5: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2];
                result[3]=data[7][3]^data[8][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8]};
            end
        end
        6: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1]^data[9][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2];
                result[3]=data[7][3]^data[8][3]^data[9][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9:0]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9], IN_code[IP_BIT+4-10]};
                    end
                    'd10: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-9], ~IN_code[IP_BIT+4-10]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8:0]};
            end
        end
        7: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0]^data[10][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1]^data[9][1]^data[10][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2];
                result[3]=data[7][3]^data[8][3]^data[9][3]^data[10][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9:0]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9], IN_code[IP_BIT+4-10:0]};
                    end
                    'd10: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-9], ~IN_code[IP_BIT+4-10], IN_code[IP_BIT+4-11]};
                    end
                    'd11: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-10], ~IN_code[IP_BIT+4-11]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8:0]};
            end
        end
        8: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0]^data[10][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1]^data[9][1]^data[10][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2]^data[11][2];
                result[3]=data[7][3]^data[8][3]^data[9][3]^data[10][3]^data[11][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9:0]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9], IN_code[IP_BIT+4-10:0]};
                    end
                    'd10: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-9], ~IN_code[IP_BIT+4-10], IN_code[IP_BIT+4-11:0]};
                    end
                    'd11: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-10], ~IN_code[IP_BIT+4-11], IN_code[IP_BIT+4-12]};
                    end
                    'd12: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-11], ~IN_code[IP_BIT+4-12]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8:0]};
            end
        end
        9: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0]^data[10][0]^data[12][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1]^data[9][1]^data[10][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2]^data[11][2]^data[12][2];
                result[3]=data[7][3]^data[8][3]^data[9][3]^data[10][3]^data[11][3]^data[12][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9:0]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9], IN_code[IP_BIT+4-10:0]};
                    end
                    'd10: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-9], ~IN_code[IP_BIT+4-10], IN_code[IP_BIT+4-11:0]};
                    end
                    'd11: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-10], ~IN_code[IP_BIT+4-11], IN_code[IP_BIT+4-12:0]};
                    end
                    'd12: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-11], ~IN_code[IP_BIT+4-12], IN_code[IP_BIT+4-13]};
                    end
                    'd13: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-12], ~IN_code[IP_BIT+4-13]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8:0]};
            end
        end
        10: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0]^data[10][0]^data[12][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1]^data[9][1]^data[10][1]^data[13][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2]^data[11][2]^data[12][2]^data[13][2];
                result[3]=data[7][3]^data[8][3]^data[9][3]^data[10][3]^data[11][3]^data[12][3]^data[13][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9:0]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9], IN_code[IP_BIT+4-10:0]};
                    end
                    'd10: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-9], ~IN_code[IP_BIT+4-10], IN_code[IP_BIT+4-11:0]};
                    end
                    'd11: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-10], ~IN_code[IP_BIT+4-11], IN_code[IP_BIT+4-12:0]};
                    end
                    'd12: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-11], ~IN_code[IP_BIT+4-12], IN_code[IP_BIT+4-13:0]};
                    end
                    'd13: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-12], ~IN_code[IP_BIT+4-13], IN_code[IP_BIT+4-14]};
                    end
                    'd14: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-13], ~IN_code[IP_BIT+4-14]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8:0]};
            end
        end
        11: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0]^data[10][0]^data[12][0]^data[14][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1]^data[9][1]^data[10][1]^data[13][1]^data[14][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2]^data[11][2]^data[12][2]^data[13][2]^data[14][2];
                result[3]=data[7][3]^data[8][3]^data[9][3]^data[10][3]^data[11][3]^data[12][3]^data[13][3]^data[14][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9:0]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9], IN_code[IP_BIT+4-10:0]};
                    end
                    'd10: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-9], ~IN_code[IP_BIT+4-10], IN_code[IP_BIT+4-11:0]};
                    end
                    'd11: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-10], ~IN_code[IP_BIT+4-11], IN_code[IP_BIT+4-12:0]};
                    end
                    'd12: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-11], ~IN_code[IP_BIT+4-12], IN_code[IP_BIT+4-13:0]};
                    end
                    'd13: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-12], ~IN_code[IP_BIT+4-13], IN_code[IP_BIT+4-14:0]};
                    end
                    'd14: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-13], ~IN_code[IP_BIT+4-14], IN_code[IP_BIT+4-15]};
                    end
                    'd15: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-14], ~IN_code[IP_BIT+4-15]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8:0]};
            end
        end
        default: begin
            for(i=0;i<=IP_BIT+4-1;i=i+1)begin:loop1 
                always @(*) begin
                    if(IN_code[i])begin
                        data[IP_BIT+4-1-i]=IP_BIT+4-i;
                    end else begin
                        data[IP_BIT+4-1-i]=0;
                    end
                end
            end
            always@(*)begin
                result[0]=data[0][0]^data[2][0]^data[4][0]^data[6][0]^data[8][0];
                result[1]=data[1][1]^data[2][1]^data[5][1]^data[6][1];
                result[2]=data[3][2]^data[4][2]^data[5][2]^data[6][2];
                result[3]=data[7][3]^data[8][3];
            end
            always @(*) begin
                case(result)
                    'd0: begin
                        input_store = IN_code;
                    end
                    'd1: begin
                        input_store = {~IN_code[IP_BIT+4-1], IN_code[IP_BIT+4-2:0]};
                    end
                    'd2: begin
                        input_store = {IN_code[IP_BIT+4-1], ~IN_code[IP_BIT+4-2], IN_code[IP_BIT+4-3:0]};
                    end
                    'd3: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-2], ~IN_code[IP_BIT+4-3], IN_code[IP_BIT+4-4:0]};
                    end
                    'd4: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-3], ~IN_code[IP_BIT+4-4], IN_code[IP_BIT+4-5:0]};
                    end
                    'd5: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-4], ~IN_code[IP_BIT+4-5], IN_code[IP_BIT+4-6:0]};
                    end
                    'd6: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-5], ~IN_code[IP_BIT+4-6], IN_code[IP_BIT+4-7:0]};
                    end
                    'd7: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-6], ~IN_code[IP_BIT+4-7], IN_code[IP_BIT+4-8:0]};
                    end
                    'd8: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-7], ~IN_code[IP_BIT+4-8], IN_code[IP_BIT+4-9]};
                    end
                    'd9: begin
                        input_store = {IN_code[IP_BIT+4-1:IP_BIT+4-8], ~IN_code[IP_BIT+4-9]};
                    end
                    default: begin
                        input_store = IN_code;
                    end
                endcase
            end
            always @(*) begin
                OUT_code={input_store[IP_BIT+4-1-2],input_store[IP_BIT+4-1-4:IP_BIT+4-1-6],input_store[IP_BIT+4-1-8]};
            end
        end
    endcase
endgenerate

endmodule