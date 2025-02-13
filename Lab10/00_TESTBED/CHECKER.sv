/*
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
NYCU Institute of Electronic
2023 Autumn IC Design Laboratory 
Lab10: SystemVerilog Coverage & Assertion
File Name   : CHECKER.sv
Module Name : CHECKER
Release version : v1.0 (Release Date: Nov-2023)
Author : Jui-Huang Tsai (erictsai.10@nycu.edu.tw)
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
*/

`include "Usertype.sv"
module Checker(input clk, INF.CHECKER inf);
import usertype::*;

////assertion
///write message
logic [367:0]  assert_1 = "\033[31m--- Assertion 1 is violated ---\033[0m";
logic [367:0]  assert_2 = "\033[31m--- Assertion 2 is violated ---\033[0m";
logic [367:0]  assert_3 = "\033[31m--- Assertion 3 is violated ---\033[0m";
logic [367:0]  assert_4 = "\033[31m--- Assertion 4 is violated ---\033[0m";
logic [367:0]  assert_5 = "\033[31m--- Assertion 5 is violated ---\033[0m";
logic [367:0]  assert_6 = "\033[31m--- Assertion 6 is violated ---\033[0m";
logic [367:0]  assert_7 = "\033[31m--- Assertion 7 is violated ---\033[0m";
logic [367:0]  assert_8 = "\033[31m--- Assertion 8 is violated ---\033[0m";
logic [367:0]  assert_9 = "\033[31m--- Assertion 9 is violated ---\033[0m";

class Formula_and_mode;
    Formula_Type f_type;
    Mode f_mode;
endclass

Formula_and_mode fm_info = new();

always_ff @(posedge clk) begin
    if(inf.formula_valid) fm_info.f_type = inf.D.d_formula[0];
end

always_comb begin
    if(inf.mode_valid) fm_info.f_mode = inf.D.d_mode[0];
end
////spec1 Each Formula_Type case must be selected at least 150 times.
covergroup Spec1 @(posedge clk iff(inf.formula_valid));
    option.per_instance = 1;
    option.at_least     = 150;
    coverpoint fm_info.f_type{
        bins formula_bin [] = {[Formula_A:Formula_H]};
    }
endgroup


////spec2 Each Mode case must be selected at least 150 times.
covergroup Spec2 @(posedge clk iff(inf.mode_valid));
    option.per_instance = 1;
    option.at_least     = 150;
    coverpoint fm_info.f_mode{
        bins mode_bin [] = {[Insensitive:Sensitive]};
    }
endgroup


////spec3 Generate a cross-coverage bin for SPEC1 and SPEC2, ensuring that every combination is selected at least 150 times.
covergroup Spec3 @(posedge clk iff(inf.mode_valid));
    option.per_instance = 1;
    option.at_least     = 150;
    coverpoint fm_info.f_type;
    coverpoint fm_info.f_mode;
	cross fm_info.f_type, fm_info.f_mode;
endgroup

////spec4 The output signal inf.warn_msg should appear as “No_Warn”, “Date_Warn”, “Data_Warn”, and “Risk_Warn” at least 50 times each.
covergroup Spec4 @(posedge clk iff(inf.out_valid));
    option.per_instance = 1;
    option.at_least     = 50;
    coverpoint inf.warn_msg{
        bins warn_msg_bin [] = {[No_Warn:Data_Warn]};
    }
endgroup
////spec5 Define a transitions bin for the inf.D.act[0] signal to track changes from [Index_Check:Check_Valid_Date] to [Index_Check:Check_Valid_Date].
covergroup Spec5 @(posedge clk iff(inf.sel_action_valid));
    option.per_instance = 1;
    option.at_least     = 300;
    coverpoint inf.D.d_act[0]{
        bins action_bin [] = ([Index_Check:Check_Valid_Date]=>[Index_Check:Check_Valid_Date]);
    }
endgroup
//spec6 Create a covergroup to observe variations of the Update action, setting auto_bin_max to 32, with every bin required to hit at least once.
covergroup Spec6 @(posedge clk iff(inf.index_valid));
    option.per_instance = 1;
    option.at_least     = 1;
    coverpoint inf.D.d_index[0]{
        option.auto_bin_max = 32;
    }
endgroup

///new spec
Spec1 spec1 = new();
Spec2 spec2 = new();
Spec3 spec3 = new();
Spec4 spec4 = new();
Spec5 spec5 = new();
Spec6 spec6 = new();

//---------------------------------------------------------------------
//   ASSERATION
//---------------------------------------------------------------------

Action      action;
logic [2:0] total_valid;


///a1 All output signals in Program.sv must be reset to zero after a reset operation.
assertion1: assert property (rst_n_check) 
    else $fatal(0, "%0s", assert_1);
//change posedge
property rst_n_check;
	@(posedge inf.rst_n) inf.rst_n === 0 |-> (inf.out_valid === 0 && inf.warn_msg === 0 && inf.complete === 0 && inf.AR_VALID === 0 && inf.AR_ADDR === 0 && inf.R_READY === 0 && inf.AW_VALID === 0 && inf.AW_ADDR === 0 && inf.W_VALID === 0 && inf.W_DATA === 0 && inf.B_READY === 0);
endproperty

///a2 The latency for each operation must be less than 1000 clock cycles.
assertion2: assert property (latency1000_check) 
    else $fatal(0, "%0s", assert_2);

property latency1000_check;
	@(posedge clk) inf.sel_action_valid |-> ##[1:1000] inf.out_valid;
endproperty
///a3 When an action is completed (complete=1), the warning message (warn_msg) must be 2'b0 (No Warning).
assertion3: assert property (complete_task_check) 
    else $fatal(0, "%0s", assert_3);

property complete_task_check;
	@(negedge clk) (inf.complete && inf.out_valid) |-> (inf.warn_msg === No_Warn);
endproperty


always_ff @(posedge clk) if(inf.sel_action_valid) action = inf.D.d_act[0];

///a4 The next input valid signal should become active within 1 to 4 clock cycles after the previous input valid signal goes low.
assertion4: assert property (action_check and index_check and update_check and date_check) else $fatal(0, "%0s", assert_4);

property action_check;
	@(posedge clk) inf.sel_action_valid 
    |-> ##[1:4] (inf.formula_valid || inf.date_valid);
endproperty

property index_check;
	@(posedge clk) (action === Index_Check && inf.formula_valid) 
    |-> ##[1:4] inf.mode_valid ##[1:4] inf.date_valid ##[1:4] inf.data_no_valid;
endproperty

property update_check;
	@(posedge clk) (action === Update && inf.date_valid) 
    |-> ##[1:4] inf.data_no_valid ##[1:4] inf.index_valid ##[1:4] inf.index_valid ##[1:4] inf.index_valid ##[1:4] inf.index_valid;
endproperty

property date_check;
	@(posedge clk) (action === Check_Valid_Date && inf.date_valid) 
    |-> ##[1:4] inf.data_no_valid;
endproperty


///a5 Input valid signals should never overlap with one another.
always_comb total_valid = inf.sel_action_valid + inf.formula_valid + inf.mode_valid + inf.date_valid + inf.data_no_valid + inf.index_valid;
assertion5: assert property (valid_overlap_check) 
    else $fatal(0, "%0s", assert_5);

property valid_overlap_check;
	@(posedge clk) total_valid <= 1;
endproperty


//a6 The out_valid signal should remain high for exactly one clock cycle only.
assertion6: assert property (out_valid_check) 
    else $fatal(0, "%0s", assert_6);

property out_valid_check;
	@(posedge clk) inf.out_valid 
    |=> inf.out_valid === 0;
endproperty


//a7 The valid signal for the next operation must be active within 1 to 4 clock cycles after out_valid goes low.
assertion7: assert property (selection_valid_check) 
    else $fatal(0, "%0s", assert_7);

property selection_valid_check;
	@(negedge clk) inf.out_valid 
    |=> ##[1:4] inf.sel_action_valid;
endproperty


//a8 The input date must conform to a real calendar format.
assertion8: assert property (calendar_check) 
    else $fatal(0, "%0s", assert_8);

property calendar_check;
    @(posedge clk) inf.date_valid 
    |-> (((inf.D.d_date[0].M === 1 || inf.D.d_date[0].M === 3 || inf.D.d_date[0].M === 5 || inf.D.d_date[0].M === 7 || inf.D.d_date[0].M === 8 || inf.D.d_date[0].M === 10 || inf.D.d_date[0].M === 12) && (1 <= inf.D.d_date[0].D && inf.D.d_date[0].D <= 31)) ||
        ((inf.D.d_date[0].M === 4 || inf.D.d_date[0].M === 6 || inf.D.d_date[0].M === 9 || inf.D.d_date[0].M === 11)                                                                                   && (1 <= inf.D.d_date[0].D && inf.D.d_date[0].D <= 30)) || 
        ((inf.D.d_date[0].M === 2)                                                                                                                                                                     && (1 <= inf.D.d_date[0].D && inf.D.d_date[0].D <= 28)));
endproperty

//a9 The AR_VALID signal should not overlap with the AW_VALID signal. 
assertion9: assert property (AR_AW_valid_overlap_check) 
    else $fatal(0, "%0s", assert_9);

property AR_AW_valid_overlap_check;
    @(posedge clk) !(inf.AR_VALID && inf.AW_VALID);  // AR_VALID 和 AW_VALID 不應該同時為 1
endproperty


endmodule