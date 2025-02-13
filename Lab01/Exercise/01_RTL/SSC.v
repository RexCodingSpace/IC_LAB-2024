//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   ICLAB 2024 Fall
//   Lab01 Exercise		: Snack Shopping Calculator
//   Author     		  : Yu-Hsiang Wang
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : SSC.v
//   Module Name : SSC
//   Release version : V1.0 (Release Date: 2024-09)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

module SSC(
    // Input signals
    card_num,
    input_money,
    snack_num,
    price, 
    // Output signals
    out_valid,
    out_change
);

//================================================================
//   INPUT AND OUTPUT DECLARATION                         
//================================================================
input [63:0] card_num;
input [8:0] input_money;
input [31:0] snack_num;
input [31:0] price;
output reg out_valid;
output reg[8:0] out_change;    

//================================================================
//    Wire & Registers 
//================================================================
// Declare the wire/reg you would use in your circuit
// remember 
// wire for port connection and cont. assignment
// reg for proc. assignment
reg [3:0] dig_1,dig_2,dig_3,dig_4,dig_5,dig_6,dig_7,dig_8,dig_9,dig_10,dig_11,dig_12,dig_13,dig_14,dig_15,dig_16;
reg [7:0] sum_odd; // 用來存儲所有奇數位乘以2之後的數字分離並相加的結果
reg [7:0] sum;
reg valid;
reg [3:0] snack_num_1, snack_num_2, snack_num_3, snack_num_4, snack_num_5, snack_num_6, snack_num_7, snack_num_8;
reg [3:0] price_1, price_2, price_3, price_4, price_5, price_6, price_7, price_8;

reg [7:0] total[0:7];
reg [7:0] total_merg_1[0:7];
reg [7:0] total_merg_2[0:7];
reg [7:0] total_merg_3[0:7];
reg [7:0] total_merg_4[0:7];
reg [7:0] total_merg_5[0:7];
reg [7:0] total_merg_6[0:7];

reg [9:0] remain[0:7];
reg [9:0] out_change_tmp;  

//================================================================
//    DESIGN
//================================================================

/*Multiply all the odd digits by 2, separate all the digits after multiplying them, and sum it up. 
(which means if the digit is 8 and 16 after multiplying, make it 1 and 6 separately) */

always @(*) begin
    dig_1 = card_num[63:60]; // 假設 card_num 是 64 位的二進位數字
    dig_2 = card_num[59:56];
    dig_3 = card_num[55:52];
    dig_4 = card_num[51:48];
    dig_5 = card_num[47:44];
    dig_6 = card_num[43:40];
    dig_7 = card_num[39:36];
    dig_8 = card_num[35:32];
    dig_9 = card_num[31:28];
    dig_10 = card_num[27:24];
    dig_11 = card_num[23:20];
    dig_12 = card_num[19:16];
    dig_13 = card_num[15:12];
    dig_14 = card_num[11:8];
    dig_15 = card_num[7:4];
    dig_16 = card_num[3:0];
end


always @(*) begin
    snack_num_1 = snack_num[31:28];
    snack_num_2 = snack_num[27:24];
    snack_num_3 = snack_num[23:20];
    snack_num_4 = snack_num[19:16];
    snack_num_5 = snack_num[15:12];
    snack_num_6 = snack_num[11:8];
    snack_num_7 = snack_num[7:4];
    snack_num_8 = snack_num[3:0];
end

always @(*) begin
    price_1 = price[31:28];
    price_2 = price[27:24];
    price_3 = price[23:20];
    price_4 = price[19:16];
    price_5 = price[15:12];
    price_6 = price[11:8];
    price_7 = price[7:4];
    price_8 = price[3:0];
end

always @(*) begin
    // 奇數位 (dig_1, dig_3, dig_5, ..., dig_15) 乘以2並處理結果 +1-10=-9
    sum_odd = ((dig_1 <<1) > 'd9 ? (dig_1 <<1) - 'd9 : dig_1 <<1) + ((dig_3 <<1) > 'd9 ? (dig_3 <<1) - 'd9 : dig_3 <<1) + ((dig_5 <<1) > 'd9 ? (dig_5 <<1) - 'd9 : dig_5 <<1) + ((dig_7 <<1) > 'd9 ? (dig_7 <<1) - 'd9 : dig_7 <<1) 
            + ((dig_9 <<1) > 'd9 ? (dig_9 <<1) - 'd9 : dig_9 <<1) + ((dig_11 <<1) > 'd9 ? (dig_11 <<1) - 'd9 : dig_11 <<1) + ((dig_13 <<1) > 'd9 ? (dig_13 <<1) - 'd9 : dig_13 <<1) + ((dig_15 <<1) > 'd9 ? (dig_15 <<1) - 'd9 : dig_15 <<1);
end

/*Add on the even digits. */

always @(*) begin
    sum = sum_odd + dig_2 + dig_4 + dig_6 + dig_8 + dig_10 + dig_12 + dig_14 + dig_16;
end

/*If the sum of all the digits can be divided by 10, then it’s a valid number.*/
always @(*)begin
    if(sum==0||sum==10||sum==20||sum==30||sum==40||sum==50||sum==60||sum==70||sum==80||sum==90||sum==100||sum==110||sum==120||sum==130||sum==140||sum==150)begin 
        valid=1;
    end else begin  
        valid=0;
    end
end

/*multiply snack_num and price*/
// always @(*) begin
//     total[0] = snack_num_1 * price_1;
//     total[1] = snack_num_2 * price_2;
//     total[2] = snack_num_3 * price_3;
//     total[3] = snack_num_4 * price_4;
//     total[4] = snack_num_5 * price_5;
//     total[5] = snack_num_6 * price_6;
//     total[6] = snack_num_7 * price_7;
//     total[7] = snack_num_8 * price_8;
// end

Multiplier4bit M1 (.A(snack_num_1), .B(price_1), .Product(total[0]));
Multiplier4bit M2 (.A(snack_num_2), .B(price_2), .Product(total[1]));
Multiplier4bit M3 (.A(snack_num_3), .B(price_3), .Product(total[2]));
Multiplier4bit M4 (.A(snack_num_4), .B(price_4), .Product(total[3]));
Multiplier4bit M5 (.A(snack_num_5), .B(price_5), .Product(total[4]));
Multiplier4bit M6 (.A(snack_num_6), .B(price_6), .Product(total[5]));
Multiplier4bit M7 (.A(snack_num_7), .B(price_7), .Product(total[6]));
Multiplier4bit M8 (.A(snack_num_8), .B(price_8), .Product(total[7]));


/*Buy them from the highest total price until you can’t buy them anymore.*/

// comparator_8bit C1(.A(total[0]),.B(total[1]),.great_num(total_merg_1[0]),.small_num(total_merg_1[1]));
// comparator_8bit C2(.A(total[2]),.B(total[3]),.great_num(total_merg_1[2]),.small_num(total_merg_1[3]));
// comparator_8bit C3(.A(total[4]),.B(total[5]),.great_num(total_merg_1[4]),.small_num(total_merg_1[5]));
// comparator_8bit C4(.A(total[6]),.B(total[7]),.great_num(total_merg_1[6]),.small_num(total_merg_1[7]));

// comparator_8bit C5(.A(total_merg_1[0]),.B(total_merg_1[2]),.great_num(total_merg_2[0]),.small_num(total_merg_2[1]));
// comparator_8bit C6(.A(total_merg_1[1]),.B(total_merg_1[3]),.great_num(total_merg_2[2]),.small_num(total_merg_2[3]));
// comparator_8bit C7(.A(total_merg_1[4]),.B(total_merg_1[6]),.great_num(total_merg_2[4]),.small_num(total_merg_2[5]));
// comparator_8bit C8(.A(total_merg_1[5]),.B(total_merg_1[7]),.great_num(total_merg_2[6]),.small_num(total_merg_2[7]));

// comparator_8bit C9(.A(total_merg_2[0]),.B(total_merg_2[4]),.great_num(total_merg_3[0]),.small_num(total_merg_3[1]));
// comparator_8bit C10(.A(total_merg_2[1]),.B(total_merg_2[2]),.great_num(total_merg_3[2]),.small_num(total_merg_3[3]));
// comparator_8bit C11(.A(total_merg_2[5]),.B(total_merg_2[6]),.great_num(total_merg_3[4]),.small_num(total_merg_3[5]));
// comparator_8bit C12(.A(total_merg_2[3]),.B(total_merg_2[7]),.great_num(total_merg_3[6]),.small_num(total_merg_3[7]));

// comparator_8bit C13(.A(total_merg_3[3]),.B(total_merg_3[5]),.great_num(total_merg_4[2]),.small_num(total_merg_4[3]));
// comparator_8bit C14(.A(total_merg_3[2]),.B(total_merg_3[4]),.great_num(total_merg_4[4]),.small_num(total_merg_4[5]));

// comparator_8bit C15(.A(total_merg_4[2]),.B(total_merg_3[1]),.great_num(total_merg_5[1]),.small_num(total_merg_5[2]));
// comparator_8bit C16(.A(total_merg_4[5]),.B(total_merg_3[6]),.great_num(total_merg_5[5]),.small_num(total_merg_5[6]));

// comparator_8bit C17(.A(total_merg_5[1]),.B(total_merg_4[4]),.great_num(total_merg_6[1]),.small_num(total_merg_6[2]));
// comparator_8bit C18(.A(total_merg_5[2]),.B(total_merg_5[5]),.great_num(total_merg_6[3]),.small_num(total_merg_6[4]));
// comparator_8bit C19(.A(total_merg_4[3]),.B(total_merg_5[6]),.great_num(total_merg_6[5]),.small_num(total_merg_6[6]));

// assign total_merg_6[0]=total_merg_3[0];
// assign total_merg_6[7]=total_merg_3[7];

always @(*) begin
    // Comparators for total_merg_1
    if (total[0] > total[1]) begin
        total_merg_1[0] = total[0];
        total_merg_1[1] = total[1];
    end else begin
        total_merg_1[0] = total[1];
        total_merg_1[1] = total[0];
    end

    if (total[2] > total[3]) begin
        total_merg_1[2] = total[2];
        total_merg_1[3] = total[3];
    end else begin
        total_merg_1[2] = total[3];
        total_merg_1[3] = total[2];
    end

    if (total[4] > total[5]) begin
        total_merg_1[4] = total[4];
        total_merg_1[5] = total[5];
    end else begin
        total_merg_1[4] = total[5];
        total_merg_1[5] = total[4];
    end

    if (total[6] > total[7]) begin
        total_merg_1[6] = total[6];
        total_merg_1[7] = total[7];
    end else begin
        total_merg_1[6] = total[7];
        total_merg_1[7] = total[6];
    end

    // Comparators for total_merg_2
    if (total_merg_1[0] > total_merg_1[2]) begin
        total_merg_2[0] = total_merg_1[0];
        total_merg_2[1] = total_merg_1[2];
    end else begin
        total_merg_2[0] = total_merg_1[2];
        total_merg_2[1] = total_merg_1[0];
    end

    if (total_merg_1[1] > total_merg_1[3]) begin
        total_merg_2[2] = total_merg_1[1];
        total_merg_2[3] = total_merg_1[3];
    end else begin
        total_merg_2[2] = total_merg_1[3];
        total_merg_2[3] = total_merg_1[1];
    end

    if (total_merg_1[4] > total_merg_1[6]) begin
        total_merg_2[4] = total_merg_1[4];
        total_merg_2[5] = total_merg_1[6];
    end else begin
        total_merg_2[4] = total_merg_1[6];
        total_merg_2[5] = total_merg_1[4];
    end

    if (total_merg_1[5] > total_merg_1[7]) begin
        total_merg_2[6] = total_merg_1[5];
        total_merg_2[7] = total_merg_1[7];
    end else begin
        total_merg_2[6] = total_merg_1[7];
        total_merg_2[7] = total_merg_1[5];
    end

    // Comparators for total_merg_3
    if (total_merg_2[0] > total_merg_2[4]) begin
        total_merg_3[0] = total_merg_2[0];
        total_merg_3[1] = total_merg_2[4];
    end else begin
        total_merg_3[0] = total_merg_2[4];
        total_merg_3[1] = total_merg_2[0];
    end

    if (total_merg_2[1] > total_merg_2[2]) begin
        total_merg_3[2] = total_merg_2[1];
        total_merg_3[3] = total_merg_2[2];
    end else begin
        total_merg_3[2] = total_merg_2[2];
        total_merg_3[3] = total_merg_2[1];
    end

    if (total_merg_2[5] > total_merg_2[6]) begin
        total_merg_3[4] = total_merg_2[5];
        total_merg_3[5] = total_merg_2[6];
    end else begin
        total_merg_3[4] = total_merg_2[6];
        total_merg_3[5] = total_merg_2[5];
    end

    if (total_merg_2[3] > total_merg_2[7]) begin
        total_merg_3[6] = total_merg_2[3];
        total_merg_3[7] = total_merg_2[7];
    end else begin
        total_merg_3[6] = total_merg_2[7];
        total_merg_3[7] = total_merg_2[3];
    end

    // Comparators for total_merg_4
    if (total_merg_3[3] > total_merg_3[5]) begin
        total_merg_4[2] = total_merg_3[3];
        total_merg_4[3] = total_merg_3[5];
    end else begin
        total_merg_4[2] = total_merg_3[5];
        total_merg_4[3] = total_merg_3[3];
    end

    if (total_merg_3[2] > total_merg_3[4]) begin
        total_merg_4[4] = total_merg_3[2];
        total_merg_4[5] = total_merg_3[4];
    end else begin
        total_merg_4[4] = total_merg_3[4];
        total_merg_4[5] = total_merg_3[2];
    end

    // Comparators for total_merg_5
    if (total_merg_4[2] > total_merg_3[1]) begin
        total_merg_5[1] = total_merg_4[2];
        total_merg_5[2] = total_merg_3[1];
    end else begin
        total_merg_5[1] = total_merg_3[1];
        total_merg_5[2] = total_merg_4[2];
    end

    if (total_merg_4[5] > total_merg_3[6]) begin
        total_merg_5[5] = total_merg_4[5];
        total_merg_5[6] = total_merg_3[6];
    end else begin
        total_merg_5[5] = total_merg_3[6];
        total_merg_5[6] = total_merg_4[5];
    end

    // Comparators for total_merg_6
    if (total_merg_5[1] > total_merg_4[4]) begin
        total_merg_6[1] = total_merg_5[1];
        total_merg_6[2] = total_merg_4[4];
    end else begin
        total_merg_6[1] = total_merg_4[4];
        total_merg_6[2] = total_merg_5[1];
    end

    if (total_merg_5[2] > total_merg_5[5]) begin
        total_merg_6[3] = total_merg_5[2];
        total_merg_6[4] = total_merg_5[5];
    end else begin
        total_merg_6[3] = total_merg_5[5];
        total_merg_6[4] = total_merg_5[2];
    end

    if (total_merg_4[3] > total_merg_5[6]) begin
        total_merg_6[5] = total_merg_4[3];
        total_merg_6[6] = total_merg_5[6];
    end else begin
        total_merg_6[5] = total_merg_5[6];
        total_merg_6[6] = total_merg_4[3];
    end

    total_merg_6[0]=total_merg_3[0];
    total_merg_6[7]=total_merg_3[7];
end


always @(*) begin
    remain[0] = input_money - total_merg_6[0];
    remain[1] = remain[0] - total_merg_6[1];
    remain[2] = remain[1] - total_merg_6[2];
    remain[3] = remain[2] - total_merg_6[3];
    remain[4] = remain[3] - total_merg_6[4];
    remain[5] = remain[4] - total_merg_6[5];
    remain[6] = remain[5] - total_merg_6[6];
    remain[7] = remain[6] - total_merg_6[7];
end


always @(*)begin
    if (remain[0][9]) begin
        out_change_tmp = input_money;
    end else if (remain[1][9]) begin
        out_change_tmp = remain[0];
    end else if (remain[2][9]) begin
        out_change_tmp = remain[1];
    end else if (remain[3][9]) begin
        out_change_tmp = remain[2];
    end else if (remain[4][9]) begin
        out_change_tmp = remain[3];
    end else if (remain[5][9]) begin
        out_change_tmp = remain[4];
    end else if (remain[6][9]) begin
        out_change_tmp = remain[5];
    end else if (remain[7][9]) begin
        out_change_tmp = remain[6];
    end else begin
        out_change_tmp = remain[7];  
    end
end

always @(*) begin
    if(valid)begin
        out_change=out_change_tmp;
    end else begin
        out_change=input_money;
    end
end

always@(*)begin
    if(valid)begin 
        out_valid=1;
    end else begin 
        out_valid=0;
    end
end

endmodule

module comparator_8bit (
    input  [7:0] A,           
    input  [7:0] B,           
    output reg [7:0] great_num, 
    output reg [7:0] small_num  
);

    always @(*) begin
        if (A > B) begin
            great_num = A;
            small_num = B;
        end else begin 
            great_num = B;
            small_num = A;
        end
    end

endmodule

module Multiplier4bit (
    input [3:0] A,         
    input [3:0] B,         
    output [7:0] Product   
);

    wire [7:0] partial_sum0, partial_sum1, partial_sum2, partial_sum3;
    wire [7:0] temp_product0, temp_product1, temp_product2, temp_product3;
    
    assign partial_sum0 = A << 0;  // A * 2^0
    assign partial_sum1 = A << 1;  // A * 2^1
    assign partial_sum2 = A << 2;  // A * 2^2
    assign partial_sum3 = A << 3;  // A * 2^3
    
    assign temp_product0 = B[0] ? partial_sum0 : 8'b0;
    assign temp_product1 = B[1] ? partial_sum1 : 8'b0;
    assign temp_product2 = B[2] ? partial_sum2 : 8'b0;
    assign temp_product3 = B[3] ? partial_sum3 : 8'b0;

    assign Product = temp_product0 + temp_product1 + temp_product2 + temp_product3;

endmodule

