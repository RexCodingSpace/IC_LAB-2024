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

`define CYCLE_TIME      50.0
`define SEED_NUMBER     28825252
`define PATTERN_NUMBER 10000

module PATTERN(
    //Output Port
    clk,
    rst_n,
    in_valid,
    Img,
    Kernel_ch1,
    Kernel_ch2,
	Weight,
    Opt,
    //Input Port
    out_valid,
    out
    );

//---------------------------------------------------------------------
//   PORT DECLARATION          
//---------------------------------------------------------------------
output  logic        clk, rst_n, in_valid;
output  logic[31:0]  Img;
output  logic[31:0]  Kernel_ch1;
output  logic[31:0]  Kernel_ch2;
output  logic[31:0]  Weight;
output  logic        Opt;
input           out_valid;
input   [31:0]  out;

//---------------------------------------------------------------------
//   PARAMETER & INTEGER DECLARATION
//---------------------------------------------------------------------
real CYCLE = `CYCLE_TIME;

parameter sig_width = 23;
parameter exp_width = 8;
parameter ieee_compliance = 0;
parameter arch_type = 0;
parameter arch = 0;

parameter inst_sig_width = 23;
parameter inst_exp_width = 8;
parameter inst_ieee_compliance = 0;
parameter inst_arch_type = 0;
parameter inst_arch = 0;
reg  [31:0]  read_value;
reg  [31:0]  Kernel_ch1_s [11:0];
reg  [31:0]  Kernel_ch2_s[11:0];
reg  [31:0]  Img_s [74:0];
reg  [31:0]  Out_s [2:0];
reg  [31:0]  Weight_s [23:0];
reg[31:0] ans_abs[2:0],ans[2:0];
reg fail[2:0];
// reg  [31:0]  Kernel_ch1_s [2:0][1:0][1:0];
// reg  [31:0]  Kernel_ch2_s[2:0][1:0][1:0];
// reg  [31:0]  Img_s [2:0][4:0][4:0];
// reg  [31:0]  Out_s [2:0];
// reg  [31:0]  Weight_s [2:0][7:0];
reg  Opt_s;

integer i, j , k;
integer total_latency, pattern_count, latency,result;
integer f_in_Img,f_in_Kernel_ch1,f_in_Kernel_ch2,f_in_Opt,f_in_Out,f_in_Weight;
//---------------------------------------------------------------------
//   Reg & Wires
//---------------------------------------------------------------------


//================================================================
// clock
//================================================================

always #(CYCLE/2.0) clk = ~clk;
initial	clk = 0;

//---------------------------------------------------------------------
//   Pattern_Design
//---------------------------------------------------------------------
initial begin
    // f_in_Img = $fopen("../00_TESTBED/Img.txt", "r");
    // f_in_Kernel_ch1 = $fopen("../00_TESTBED/Kernel_ch1.txt", "r");
    // f_in_Kernel_ch2 = $fopen("../00_TESTBED/Kernel_ch2.txt", "r");
    // f_in_Out = $fopen("../00_TESTBED/Out.txt", "r");
    // f_in_Opt = $fopen("../00_TESTBED/Opt.txt", "r");
    // f_in_Weight = $fopen("../00_TESTBED/Weight.txt", "r");
    f_in_Img = $fopen("/RAID2/COURSE/iclab/iclab143/Lab04/Exercise/00_TESTBED/pat/Img.txt", "r");
    f_in_Kernel_ch1 = $fopen("/RAID2/COURSE/iclab/iclab143/Lab04/Exercise/00_TESTBED/pat/Kernel_ch1.txt", "r");
    f_in_Kernel_ch2 = $fopen("/RAID2/COURSE/iclab/iclab143/Lab04/Exercise/00_TESTBED/pat/Kernel_ch2.txt", "r");
    f_in_Out = $fopen("/RAID2/COURSE/iclab/iclab143/Lab04/Exercise/00_TESTBED/pat/Out.txt", "r");
    f_in_Opt = $fopen("/RAID2/COURSE/iclab/iclab143/Lab04/Exercise/00_TESTBED/pat/Opt.txt", "r");
    f_in_Weight = $fopen("/RAID2/COURSE/iclab/iclab143/Lab04/Exercise/00_TESTBED/pat/Weight.txt", "r");


	if (f_in_Img == 0) begin
		$display("Failed to open input.txt");
		$finish;
	end
    if (f_in_Kernel_ch1 == 0) begin
		$display("Failed to open input.txt");
		$finish;
	end
    if (f_in_Kernel_ch2 == 0) begin
		$display("Failed to open input.txt");
		$finish;
	end
    if (f_in_Out == 0) begin
		$display("Failed to open input.txt");
		$finish;
	end
    if (f_in_Opt == 0) begin
		$display("Failed to open input.txt");
		$finish;
	end
    if (f_in_Weight == 0) begin
		$display("Failed to open input.txt");
		$finish;
	end
    total_latency=0;
    // Reset system
    reset_task;

    // Run test patterns
    for (pattern_count = 0; pattern_count < 3; pattern_count = pattern_count + 1) begin
////////////////////load in///////////////////////////////// 
        //Img input
        result = $fscanf(f_in_Img, "%d\n", read_value);
        for (i = 0; i < 75; i = i + 1) begin
            result = $fscanf(f_in_Img, "%h\n", read_value);
            Img_s[i]=read_value;
        end
        //Kernal_ch1 input
        result = $fscanf(f_in_Kernel_ch1, "%d\n", read_value);
        for (i = 0; i < 12; i = i + 1) begin
            result = $fscanf(f_in_Kernel_ch1, "%h\n", read_value);
            Kernel_ch1_s[i]=read_value;
        end
        //Kernal_ch2 input
        result = $fscanf(f_in_Kernel_ch2, "%d\n", read_value);
        for (i = 0; i < 12; i = i + 1) begin
            result = $fscanf(f_in_Kernel_ch2, "%h\n", read_value);
            Kernel_ch2_s[i]=read_value;
        end
        //Opt input
        result = $fscanf(f_in_Opt, "%d\n", read_value);
        result = $fscanf(f_in_Opt, "%h\n", read_value);
        Opt_s=read_value;
        //Weight input
        result = $fscanf(f_in_Weight, "%d\n", read_value);
        for (i = 0; i < 24; i = i + 1) begin
            result = $fscanf(f_in_Weight, "%h\n", read_value);
            Weight_s[i]=read_value;
        end
        //Out input
        result = $fscanf(f_in_Out, "%d\n", read_value);
        for(i=0;i<3;i=i+1)begin
            result = $fscanf(f_in_Out, "%h\n", read_value);
            Out_s[i]=read_value;
        end
////////////////////start task/////////////////////////////////      
        input_task;
        check_latency;
        check_three_cycle_ans;
    end

    YOU_PASS_task;
end

task reset_task;
begin
    rst_n = 1'b1;
    in_valid = 1'b0;
    Img = 'd0;
    Kernel_ch1 = 'd0;
    Kernel_ch2 = 'd0;
    Weight = 'd0;
    Opt='d0;

    #CYCLE; rst_n = 1'b0; 
    #CYCLE; rst_n = 1'b1; 
    #100;

    if (out_valid !== 'd0 || out !== 'd0) begin
		$display("************************************************************");
        $display("                    SPEC-4 FAIL                   ");
        $display("************************************************************");
		repeat (2) #CYCLE;
        $finish;  
    end
    #CYCLE;release clk;
end
endtask

integer cnt=0;


task input_task;
begin
    //Input
    repeat (10) @(negedge clk); 
    in_valid=1'b1;
    for (i = 0; i < 75; i = i + 1) begin
        Img=Img_s[i];
        if(i<12)begin
            Kernel_ch1=Kernel_ch1_s[i];
            Kernel_ch2=Kernel_ch2_s[i];
        end else begin 
            Kernel_ch1= 'bxxx;
            Kernel_ch2= 'bxxx;
        end

        if(i<24)
            Weight=Weight_s[i];
        else  
            Weight='bxxx;

        if(i<1)
            Opt=Opt_s;
        else
            Opt='bx;

        @(negedge clk);
    end
    in_valid = 1'b0;
    Img='bxxx;
end
endtask


DW_fp_sub #(sig_width, exp_width, ieee_compliance)
s1 ( .a(out), .b(Out_s[0]), .rnd(3'b000), .z(ans[0]), .status() );

DW_fp_sub #(sig_width, exp_width, ieee_compliance)
s2 ( .a(out), .b(Out_s[1]), .rnd(3'b000), .z(ans[1]), .status() );

DW_fp_sub #(sig_width, exp_width, ieee_compliance)
s3 ( .a(out), .b(Out_s[2]), .rnd(3'b000), .z(ans[2]), .status() );

always @(*)begin
    ans_abs[0]={1'b0,ans[0][30:0]};
    ans_abs[1]={1'b0,ans[1][30:0]};
    ans_abs[2]={1'b0,ans[2][30:0]};
end

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)
U1 ( .a(ans_abs[0]), .b(32'h38D1B717), .zctr(1'b0), .aeqb(), 
.altb(), .agtb(fail[0]), .unordered(), 
.z0(), .z1(), .status0(), 
.status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)
U2 ( .a(ans_abs[1]), .b(32'h38D1B717), .zctr(1'b0), .aeqb(), 
.altb(), .agtb(fail[1]), .unordered(), 
.z0(), .z1(), .status0(), 
.status1() );

DW_fp_cmp #(sig_width, exp_width, ieee_compliance)
U3 ( .a(ans_abs[2]), .b(32'h38D1B717), .zctr(1'b0), .aeqb(), 
.altb(), .agtb(fail[2]), .unordered(), 
.z0(), .z1(), .status0(), 
.status1() );

task check_three_cycle_ans;
begin 
    if(out_valid===1)begin
        if (fail[0]) begin
            $display("************************************************************");  
            $display("                    SPEC-7 FAIL pattern wrong                  ");
            $display("************************************************************");
            repeat (9) @(negedge clk);
            $finish;
        end 
        #CYCLE;
        if(out_valid===0)begin
            $display("************************************************************");
            $display("                    SPEC-8 FAIL                   ");
            $display("************************************************************");
            $finish;
        end 
        
        if (fail[1]) begin
            $display("************************************************************");  
            $display("                   SPEC-7 FAIL pattern wrong                    ");
            $display("************************************************************");
            repeat (9) @(negedge clk);
            $finish;
        end 
        #CYCLE;
        if(out_valid===0)begin
            $display("************************************************************");
            $display("                    SPEC-8 FAIL                   ");
            $display("************************************************************");
            $finish;
        end 

        if (fail[2]) begin
            $display("************************************************************");  
            $display("                    SPEC-7 FAIL pattern wrong                    ");
            $display("************************************************************");
            repeat (9) @(negedge clk);
            $finish;
        end 
        #CYCLE;
        if(out_valid===1)begin
            $display("************************************************************");
            $display("                    SPEC-8 FAIL                   ");
            $display("************************************************************");
            $finish;
        end 
    end
end
endtask

// task check_ans_task; begin
//     //Out input
//     result = $fscanf(f_in_Out, "d\n", read_value);
//     for(i=0;i<2;i=i+1)begin
//         result = $fscanf(f_in_Out, "%b\n", read_value);
//         Out_s[i]=read_value;
//     end

//     if(out_valid === 1) begin
//         // Compare expected and received values
//         if (out !== Out_s[i_out]) begin
//             $display("************************************************************");  
//             $display("                    SPEC-7 FAIL                   ");
//             $display("************************************************************");
//             repeat (9) @(negedge clk);
//             $finish;
//         end 
//     end
// end endtask


always@(negedge clk)begin
    if (out_valid === 1'b0) begin
        // 檢查 score, fail, tetris_valid 是否為 0
        if (out !== 32'b0) begin
			$display("************************************************************");
            $display("                    SPEC-5 FAIL                   ");
			$display("************************************************************");
            $finish;
        end
    end
end


task check_latency;
begin
    latency = 1;
    while (out_valid !== 1'b1) begin
        latency = latency + 1;
        if (latency > 1000) begin
            $display("********************************************************");
            $display("                    SPEC-6 FAIL                   ");
            $display("********************************************************");
            repeat (2) @(negedge clk);
            $finish;
        end
        @(negedge clk);
    end
    total_latency = total_latency + latency;
end
endtask


task YOU_PASS_task; begin
    $display("----------------------------------------------------------------------------------------------------------------------");
    $display("                                                  Congratulations!                                                    ");
    $display("                                           You have passed all patterns!                                               ");
    $display("                                           Your execution cycles = %5d cycles                                          ", total_latency);
    $display("                                           Your clock period = %.1f ns                                                 ", CYCLE);
    $display("                                           Total Latency = %.1f ns                                                    ", total_latency * CYCLE);
    $display("----------------------------------------------------------------------------------------------------------------------");
    repeat (2) @(negedge clk);
    $finish;
end endtask

endmodule



