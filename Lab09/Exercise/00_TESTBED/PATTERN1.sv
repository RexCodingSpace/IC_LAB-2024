
// `include "../00_TESTBED/pseudo_DRAM.sv"
`include "Usertype.sv"

program automatic PATTERN(input clk, INF.PATTERN inf);
import usertype::*;
//================================================================
// parameters & integer
//================================================================
parameter DRAM_p_r = "../00_TESTBED/DRAM/dram.dat";
parameter MAX_CYCLE=1000;


parameter PAT_NUM  = 1000;
// parameter PAT_NUM  = 3600;
parameter CLK_TIME = 2.2;

integer N;
integer SEED = 42;
integer total_lat, lat;
integer i, i_pat;
integer formula_count;
//================================================================
// wire & registers 
//================================================================
logic [7:0] golden_DRAM [((32'h10000+8*256)-1):(32'h10000)];  // 32 box

//================================================================
// class random
//================================================================
Action         given_action;
Formula_Type   given_formula;
Mode           given_mode;
Date           given_date;
Data_No        given_data_no;
Index          given_index_A, given_index_B, given_index_C, given_index_D;
Index          index_A, index_B, index_C, index_D;                       
logic [12:0] index_A_temp, index_B_temp, index_C_temp, index_D_temp;     
logic [11:0] index_A_temp1, index_B_temp1, index_C_temp1, index_D_temp1;     

logic [63:0] dram_temp;
integer threshold;
Data_Dir    golden_data_from_dram;

Warn_Msg    golden_warn_msg;
logic       golden_complete;



logic [11:0] ti_A,ti_B,ti_C,ti_D;
logic [11:0] i_A,i_B,i_C,i_D;
logic [11:0] g_A,g_B,g_C,g_D;
logic [11:0] max_value,min_value;
logic [13:0] R1;
logic risk_flag;
/**
 * Class representing a random action.
 */
class random_act;
    randc Action act_id;

    function new (int seed);
		this.srandom(seed);
	endfunction

    constraint range{
        act_id inside{Index_Check, Update, Check_Valid_Date};
    }
endclass

class random_Formula;
    randc Formula_Type formula;

	function new (int seed);
		this.srandom(seed);
	endfunction

    constraint range {
        formula inside {Formula_A, Formula_B, Formula_C, Formula_D, Formula_E, Formula_F, Formula_G, Formula_H};
    }
endclass

class random_Mode;
    randc Mode mode;  

    function new(int seed);
        this.srandom(seed);  
    endfunction

    constraint range {
        mode inside {Insensitive, Normal, Sensitive};
    }
endclass


class random_date;
	randc Date date;

	function new (int seed);
		this.srandom(seed);
	endfunction

	constraint valid_date {
        date.M inside {[1:12]};
        if (date.M == 2) {
            date.D inside {[1:28]};  
        } else if (date.M inside {4, 6, 9, 11}) {
            date.D inside {[1:30]};
        } else {
            date.D inside {[1:31]};
        }
    }
endclass

class random_data_no;
	randc Data_No data_no;

	function new (int seed);
		this.srandom(seed);
	endfunction

	constraint limit{
		data_no inside{[0:255]};
	}
endclass

class random_index;
	randc Index index;

	function new (int seed);
		this.srandom(seed);
	endfunction

	constraint limit{
		index inside{[0:4095]};
	}
endclass

random_act   r_action;
random_Formula  r_formula;
random_Mode     r_mode;
random_date     r_date;
random_data_no  r_data_no;
random_index    r_index;

//---------------------------------------------------------------------
//   INITIAL                         
//---------------------------------------------------------------------	
initial 
begin
    r_action   = new(SEED);
    r_formula  = new(SEED);
	r_mode     = new(SEED);
    r_date     = new(SEED);
    r_data_no  = new(SEED);
    r_index    = new(SEED);
	formula_count=0;

    $readmemh(DRAM_p_r, golden_DRAM);
    reset_signal_task;

    for (i_pat=0;i_pat<PAT_NUM;i_pat++) 
	begin
		
		if(i_pat>=2404)begin
			if(formula_count==149)begin
				formula_count=0;
			end else begin
				formula_count++;
			end
		end

        input_task;
        wait_out_valid_task;  
        check_ans_task;      
        total_lat += lat;
		$display("\033[0;34mPASS PATTERN NO.%4d,\033[m \033[0;32m latency: %3d\033[m", i_pat, lat);
    end
    YOU_PASS_task;
end


//---------------------------------------------------------------------
//   TASK                         
//---------------------------------------------------------------------	
task reset_signal_task; 
begin 
    inf.rst_n            = 1;
    inf.sel_action_valid = 0;
	inf.formula_valid       = 0;
	inf.mode_valid       = 0;
	inf.date_valid       = 0;
	inf.data_no_valid     = 0;
	inf.index_valid    = 0;
    inf.D                = 'bx;
	total_lat            = 0;

    #5;  inf.rst_n = 0; 
    #20; inf.rst_n = 1;
end 
endtask

// ----------------------------------------- input task --------------------------------------- //
task input_task; 
begin
    // repeat($urandom_range(1, 4)) @(negedge clk);
	@(negedge clk)

    give_action;

    if(given_action == Index_Check)
    begin
        give_formula;
		give_mode;
        give_date;
        give_data_no;
		give_index;
    end
    else if(given_action == Update)
    begin
        give_date;
        give_data_no;
        give_index;
    end
    else
    begin
        give_date;
        give_data_no;
    end
end 
endtask

task give_action; 
begin 
    

    inf.sel_action_valid = 1;
	// inf.D.d_act[0]       = given_action;

    if(i_pat < 900)
    begin 
        case(i_pat % 6)
            0: inf.D.d_act[0] = Index_Check;
            1: inf.D.d_act[0] = Update;
            2: inf.D.d_act[0] = Check_Valid_Date;
            3: inf.D.d_act[0] = Index_Check;
            4: inf.D.d_act[0] = Update;
            5: inf.D.d_act[0] = Check_Valid_Date;
        endcase
    end
    else if(i_pat < 1801) begin
		case(i_pat % 6)
            0: inf.D.d_act[0] = Index_Check;
            1: inf.D.d_act[0] = Check_Valid_Date;
            2: inf.D.d_act[0] = Update;
            3: inf.D.d_act[0] = Index_Check;
            4: inf.D.d_act[0] = Check_Valid_Date;
            5: inf.D.d_act[0] = Update;
        endcase
	end
	else if(i_pat < 2102) inf.D.d_act[0] = Check_Valid_Date;
    else if(i_pat < 2403) inf.D.d_act[0] = Update;
    else  begin
		i = r_action.randomize(); inf.D.d_act[0] = r_action.act_id;
	end

    given_action = inf.D.d_act[0];

	@(negedge clk); 
	inf.sel_action_valid = 0;
	inf.D = 'bx;
end 
endtask

task give_formula; 
begin 
	if(i_pat<=450)begin
		given_formula = Formula_A;
	end else if(i_pat<=901)begin
		given_formula = Formula_B;
	end else if(i_pat<=1352)begin
		given_formula = Formula_C;
	end else if(i_pat<=1803)begin
		given_formula = Formula_D;
	end else if(i_pat>=2403&&i_pat<=2552)begin
		given_formula = Formula_E;
	end else if(i_pat>=2553&&i_pat<=2702)begin
		given_formula = Formula_F;
	end else if(i_pat>=2703&&i_pat<=2852)begin
		given_formula = Formula_G;
	end else if(i_pat>=2853&&i_pat<=3002)begin
		given_formula = Formula_H;
	end else if(i_pat==3003)begin
		i = r_formula.randomize(); 
		given_formula = r_formula.formula;
	end else if(i_pat>=3003)begin
		if(formula_count==0)begin
			i = r_formula.randomize(); 
			given_formula = r_formula.formula;
		end
	end


	
	inf.formula_valid  = 1;
	inf.D.d_formula[0] = given_formula;

	@(negedge clk); 
	inf.formula_valid  = 0;
	inf.D           = 'bx;
end 
endtask

task give_mode; 
begin 
    // repeat($urandom_range(1, 4)) @(negedge clk);
	if(i_pat<=3002)begin
		given_mode= Insensitive;
	end else if(i_pat<=4202)begin
		given_mode=Normal;
	end else if(i_pat<=6000)begin
		given_mode=Sensitive;
	end else begin
		i = r_mode.randomize(); 
		given_mode = r_mode.mode;
	end
	

	inf.mode_valid  = 1;
	inf.D.d_mode[0] = given_mode;

	@(negedge clk); 
	inf.mode_valid  = 0;
	inf.D           = 'bx;
end 
endtask

task give_date; 
begin 
    i = r_date.randomize(); 
	given_date = r_date.date;

	inf.date_valid  = 1;
    inf.D.d_date[0] = given_date;

	@(negedge clk); 
	inf.date_valid  = 0;
	inf.D           = 'bx;
end 
endtask

task give_data_no; 
begin 
    i = r_data_no.randomize(); 
	given_data_no = r_data_no.data_no;
	
	inf.data_no_valid  = 1;
    inf.D.d_data_no[0] = given_data_no;

	@(negedge clk); 
	inf.data_no_valid  = 0;
	inf.D             = 'bx;
end 
endtask

task give_index; 
begin 
    i = r_index.randomize();
	given_index_A      = r_index.index;
    i = r_index.randomize();
	given_index_B      = r_index.index;
    i = r_index.randomize();
	given_index_C      = r_index.index;
    i = r_index.randomize();
	given_index_D      = r_index.index;
	
	inf.index_valid = 1;
	inf.D.d_index[0]   = given_index_A;

	@(negedge clk); 
	inf.index_valid = 0;
	inf.D             = 'bx;
	
	// repeat($urandom_range(0, 3)) @(negedge clk);

	inf.index_valid = 1;
	inf.D.d_index[0]    = given_index_B;

	@(negedge clk); 
	inf.index_valid = 0;
	inf.D             = 'bx;
	
	// repeat($urandom_range(0, 3)) @(negedge clk);
	
	inf.index_valid = 1;
	inf.D.d_index[0]    = given_index_C;

	@(negedge clk); 
	inf.index_valid = 0;
	inf.D             = 'bx;
		
	// repeat($urandom_range(0, 3)) @(negedge clk);

	inf.index_valid = 1;
	inf.D.d_index[0]    = given_index_D;

	@(negedge clk); 
	inf.index_valid = 0;
	inf.D             = 'bx;
end 
endtask



// ------------------------------------- wait out_valid task ---------------------------------- //
task wait_out_valid_task; 
begin
    lat = 0;
    while(inf.out_valid !== 1) 
    begin
        lat += 1;
        if(lat === 1000) 
        begin
            $display("--------------------------------------------------------------------------------------------------------------------------------------------");
            // $display("                                                                 FAIL!                                                                      ");
            $display("                                                              Wrong Answer!                                                                 ");
            $display("                                                             PATTERN NO.%4d 	                                                              ", i_pat);
            $display("                                             The execution latency should not over 1000 cycle                                               ");
            $display("--------------------------------------------------------------------------------------------------------------------------------------------");
            $finish;
        end
        @(negedge clk);
    end
end
endtask

// --------------------------------------- check ans task ------------------------------------- //
task check_ans_task;
begin
    N = 32'h10000 + 8 * given_data_no;
    dram_temp = {golden_DRAM[N+7], golden_DRAM[N+6], golden_DRAM[N+5], golden_DRAM[N+4], golden_DRAM[N+3], golden_DRAM[N+2], golden_DRAM[N+1], golden_DRAM[N]};

	golden_data_from_dram.Index_A   = dram_temp[63:52];
	golden_data_from_dram.Index_B   = dram_temp[51:40];
	golden_data_from_dram.M         = dram_temp[39:32];
	golden_data_from_dram.Index_C   = dram_temp[31:20];
	golden_data_from_dram.Index_D   = dram_temp[19: 8];
	golden_data_from_dram.D         = dram_temp[ 7: 0];

	case(given_action)
		Index_Check:      index_check_task;
		Update:           update_task;
		Check_Valid_Date: check_date_task;
	endcase
end
endtask 

task index_check_task; 
begin
	
	i_A=golden_data_from_dram.Index_A;
	i_B=golden_data_from_dram.Index_B;
	i_C=golden_data_from_dram.Index_C;
	i_D=golden_data_from_dram.Index_D;

	ti_A=given_index_A;
	ti_B=given_index_B;
	ti_C=given_index_C;
	ti_D=given_index_D;

	g_A = (i_A >= ti_A) ? (i_A - ti_A) : (ti_A - i_A);
	g_B = (i_B >= ti_B) ? (i_B - ti_B) : (ti_B - i_B);
	g_C = (i_C >= ti_C) ? (i_C - ti_C) : (ti_C - i_C);
	g_D = (i_D >= ti_D) ? (i_D - ti_D) : (ti_D - i_D);

	R1=0;

	// if(given_mode===Insensitive)begin
	// 	case (given_formula)
	// 		Formula_A: begin
	// 			if(R1>=2047)
	// 				risk_flag=1;
	// 		end

	// 		Formula_B: begin
	// 			if(R1>=800)
	// 				risk_flag=1;
	// 		end

	// 		Formula_C: begin
	// 			if(R1>=2047)
	// 				risk_flag=1;
	// 		end

	// 		Formula_D: begin
	// 			if(R1>=3)
	// 				risk_flag=1;
	// 		end

	// 		Formula_E: begin
	// 			if(R1>=3)
	// 				risk_flag=1;
	// 		end

	// 		Formula_F: begin
	// 			if(R1>=800)
	// 				risk_flag=1;
	// 		end

	// 		Formula_G: begin
	// 			if(R1>=800)
	// 				risk_flag=1;
	// 		end

	// 		Formula_H: begin
	// 			if(R1>=800)
	// 				risk_flag=1;
	// 		end

	// 		default: begin
	// 			risk_flag = 0; // Default case if no formula matches
	// 		end
	// 	endcase
	// end else if(given_mode===Normal) begin
	// 	case (given_formula)
	// 		Formula_A: begin
	// 			if(R1>=1023)
	// 				risk_flag=1;
	// 		end

	// 		Formula_B: begin
	// 			if(R1>=400)
	// 				risk_flag=1;
	// 		end

	// 		Formula_C: begin
	// 			if(R1>=1023)
	// 				risk_flag=1;
	// 		end

	// 		Formula_D: begin
	// 			if(R1>=2)
	// 				risk_flag=1;
	// 		end

	// 		Formula_E: begin
	// 			if(R1>=2)
	// 				risk_flag=1;
	// 		end

	// 		Formula_F: begin
	// 			if(R1>=400)
	// 				risk_flag=1;
	// 		end

	// 		Formula_G: begin
	// 			if(R1>=400)
	// 				risk_flag=1;
	// 		end

	// 		Formula_H: begin
	// 			if(R1>=400)
	// 				risk_flag=1;
	// 		end

	// 		default: begin
	// 			risk_flag = 0; // Default case if no formula matches
	// 		end
	// 	endcase
	// end else begin
	// 	case (given_formula)
	// 		Formula_A: begin
	// 			if(R1>=511)
	// 				risk_flag=1;
	// 		end

	// 		Formula_B: begin
	// 			if(R1>=200)
	// 				risk_flag=1;
	// 		end

	// 		Formula_C: begin
	// 			if(R1>=511)
	// 				risk_flag=1;
	// 		end

	// 		Formula_D: begin
	// 			if(R1>=1)
	// 				risk_flag=1;
	// 		end

	// 		Formula_E: begin
	// 			if(R1>=1)
	// 				risk_flag=1;
	// 		end

	// 		Formula_F: begin
	// 			if(R1>=200)
	// 				risk_flag=1;
	// 		end

	// 		Formula_G: begin
	// 			if(R1>=200)
	// 				risk_flag=1;
	// 		end

	// 		Formula_H: begin
	// 			if(R1>=200)
	// 				risk_flag=1;
	// 		end

	// 		default: begin
	// 			risk_flag = 0; // Default case if no formula matches
	// 		end
	// 	endcase
	// end

	if(given_mode===Insensitive)begin
		case (given_formula)
			Formula_A: begin
				threshold=2047;
			end

			Formula_B: begin
				threshold=800;
			end

			Formula_C: begin
				threshold=2047;
			end

			Formula_D: begin
				threshold=3;
			end

			Formula_E: begin
				threshold=3;
			end

			Formula_F: begin
				threshold=800;
			end

			Formula_G: begin
				threshold=800;
			end

			Formula_H: begin
				threshold=800;
			end
		endcase
	end else if(given_mode===Normal) begin
		case (given_formula)
			Formula_A: begin
				threshold=1023;
			end

			Formula_B: begin
				threshold=400;
			end

			Formula_C: begin
				threshold=1023;
			end

			Formula_D: begin
				threshold=2;
			end

			Formula_E: begin
				threshold=2;
			end

			Formula_F: begin
				threshold=400;
			end

			Formula_G: begin
				threshold=400;
			end

			Formula_H: begin
				threshold=400;
			end

		endcase
	end else begin
		case (given_formula)
			Formula_A: begin
				threshold=511;
			end

			Formula_B: begin
				threshold=200;
			end

			Formula_C: begin
				threshold=511;
			end

			Formula_D: begin
				threshold=1;
			end

			Formula_E: begin
				threshold=1;
			end

			Formula_F: begin
				threshold=200;
			end

			Formula_G: begin
				threshold=200;
			end

			Formula_H: begin
				threshold=200;
			end
		endcase
	end

    case (given_formula)
        Formula_A:  R1 = ((i_A + i_B + i_C + i_D) /4);
        Formula_B: begin
			max_value = (i_A > i_B) ? 
						((i_A > i_C) ? ((i_A > i_D) ? i_A : i_D) : ((i_C > i_D) ? i_C : i_D)) :
						((i_B > i_C) ? ((i_B > i_D) ? i_B : i_D) : ((i_C > i_D) ? i_C : i_D));
			min_value = (i_A < i_B) ? 
						((i_A < i_C) ? ((i_A < i_D) ? i_A : i_D) : ((i_C < i_D) ? i_C : i_D)) :
						((i_B < i_C) ? ((i_B < i_D) ? i_B : i_D) : ((i_C < i_D) ? i_C : i_D));
			R1 = max_value - min_value;  
		end

		Formula_C: begin
			min_value = (i_A < i_B) ? 
						((i_A < i_C) ? ((i_A < i_D) ? i_A : i_D) : ((i_C < i_D) ? i_C : i_D)) :
						((i_B < i_C) ? ((i_B < i_D) ? i_B : i_D) : ((i_C < i_D) ? i_C : i_D));
			R1 = min_value;  
		end

		Formula_D: begin
			R1 = (i_A >= 2047) + (i_B >= 2047) + (i_C >= 2047) + (i_D >= 2047);
		end
        Formula_E:  begin
			R1 = (i_A >= ti_A) + (i_B >= ti_B) + (i_C >= ti_C) + (i_D >= ti_D);
		end
		Formula_F:begin
			max_value = (g_A > g_B) ? 
                    ((g_A > g_C) ? ((g_A > g_D) ? g_A : g_D) : ((g_C > g_D) ? g_C : g_D)) :
                    ((g_B > g_C) ? ((g_B > g_D) ? g_B : g_D) : ((g_C > g_D) ? g_C : g_D));
			
			R1=(g_A+g_B+g_C+g_D-max_value)/3;

		end
		Formula_G:begin
			Index absList[3:0];
			absList[0] = g_A;
			absList[1] = g_B;
			absList[2] = g_C;
			absList[3] = g_D;
			absList.sort();
            R1 = $floor(absList[3]/2) + $floor(absList[1]/4) + $floor(absList[2]/4);
		end
		Formula_H:begin
			R1=(g_A+g_B+g_C+g_D)/4;
		end
    endcase

    if(given_date.M < golden_data_from_dram.M || (given_date.M === golden_data_from_dram.M && given_date.D < golden_data_from_dram.D))
        golden_warn_msg = Date_Warn;
    else if(R1>=threshold) 
        golden_warn_msg = Risk_Warn;
    else 
        golden_warn_msg = No_Warn;

    if(golden_warn_msg === No_Warn) golden_complete = 1;
	else                            golden_complete = 0;

    check_task;
end 
endtask

task update_task; 
begin

    assign index_A_temp     = {1'b0,golden_data_from_dram.Index_A}       + {given_index_A[11],given_index_A};  
    assign index_B_temp     = {1'b0,golden_data_from_dram.Index_B}       + {given_index_B[11],given_index_B};    
    assign index_C_temp     = {1'b0,golden_data_from_dram.Index_C}       + {given_index_C[11],given_index_C};     
    assign index_D_temp     = {1'b0,golden_data_from_dram.Index_D}       + {given_index_D[11],given_index_D};


	if(given_index_A[11])begin
		if(index_A_temp[12])begin
			index_A_temp1 = 0;
		end else begin
			index_A_temp1 = index_A_temp;
		end
	end else begin
		if(index_A_temp[12])begin
			index_A_temp1 = 4095;
		end else begin
			index_A_temp1 = index_A_temp;
		end
	end

	if (given_index_B[11]) begin
		if (index_B_temp[12]) begin
			index_B_temp1 = 0;
		end else begin
			index_B_temp1 = index_B_temp;
		end
	end else begin
		if (index_B_temp[12]) begin
			index_B_temp1 = 4095;
		end else begin
			index_B_temp1 = index_B_temp;
		end
	end

	if (given_index_C[11]) begin
		if (index_C_temp[12]) begin
			index_C_temp1 = 0;
		end else begin
			index_C_temp1 = index_C_temp;
		end
	end else begin
		if (index_C_temp[12]) begin
			index_C_temp1 = 4095;
		end else begin
			index_C_temp1 = index_C_temp;
		end
	end

	if (given_index_D[11]) begin
		if (index_D_temp[12]) begin
			index_D_temp1 = 0;
		end else begin
			index_D_temp1 = index_D_temp;
		end
	end else begin
		if (index_D_temp[12]) begin
			index_D_temp1 = 4095;
		end else begin
			index_D_temp1 = index_D_temp;
		end
	end

    if(index_A_temp[12] || index_B_temp[12] || index_C_temp[12] || index_D_temp[12])              golden_warn_msg = Data_Warn;
    else                                                                                          golden_warn_msg = No_Warn;

    if(golden_warn_msg === No_Warn) golden_complete = 1;
	else                            golden_complete = 0;

    dram_temp[39:32] = given_date.M;
    dram_temp[ 7: 0] = given_date.D;
    dram_temp[63:52] = index_A_temp1;
    dram_temp[51:40] = index_B_temp1;
    dram_temp[31:20] = index_C_temp1;
    dram_temp[19: 8] = index_D_temp1;

    {golden_DRAM[N+7], golden_DRAM[N+6], golden_DRAM[N+5], golden_DRAM[N+4], golden_DRAM[N+3], golden_DRAM[N+2], golden_DRAM[N+1], golden_DRAM[N]} = dram_temp;

    check_task;
end 
endtask

task check_date_task; 
begin
    if(given_date.M < golden_data_from_dram.M || (given_date.M === golden_data_from_dram.M && given_date.D < golden_data_from_dram.D)) golden_warn_msg = Date_Warn;
    else                                                                                                                               golden_warn_msg = No_Warn;

    if(golden_warn_msg === No_Warn) golden_complete = 1;
	else                            golden_complete = 0;

    check_task;
end 
endtask

task check_task; 
begin
    if((inf.warn_msg !== golden_warn_msg) || (inf.complete !== golden_complete)) 
    begin
        $display("-----------------------------------------------------------------------------------------------------------------------------------------");
        // $display("                                                                 FAIL!                                                                   ");
        $display("                                                              Wrong Answer                                                               ");
        $display("                                                             PATTERN NO.%4d 	                                                           ", i_pat);
        $display("                                              warn_msg should be : %d , your answer is : %d                                               ", golden_warn_msg, inf.warn_msg);
        $display("                                             complete should be : %d , your answer is : %d                                               ", golden_complete, inf.complete);
        $display("-----------------------------------------------------------------------------------------------------------------------------------------");
        $finish;
    end
end 
endtask

task YOU_PASS_task; 
begin
	display_pass_task;
    $display("-----------------------------------------------------------------------------------------------------------------------------------------");
    $display("                                                               Congratulations                 						                   ");
    $display("                                                         Your execution cycles = %5d cycles                                              ", total_lat);
    $display("                                                         Your clock period = %.1f ns                                                     ", CLK_TIME);
    $display("                                                         Total Latency = %.1f ns                                                         ", total_lat * CLK_TIME);
    $display("-----------------------------------------------------------------------------------------------------------------------------------------"); 
    $finish;
end 
endtask

task display_pass_task; 
begin
	$display("         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡀⠀⠀⣠⣄                  ");     
	$display("         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠋⢈⡇⠀⣾⠁⠘⡇                 ");          
	$display("         ⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⢸⡇⢸⡇⠀⢸⡇                 ");      
	$display("         ⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⢸⠁⣿⠀⠀⣾                  ");
	$display("         ⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⠀⢸⠀⣿⠀⢠⡏                  ");      
	$display("         ⠀⠀⠀⠀⠀⠀⣀⣠⡄⠹⠂⠘⠶⠟⠀⠸⠁⢤⣤⣀⡀            ");      
	$display("         ⠀⠀⠀⢀⡴⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠶⣄⡀          ");     
	$display("         ⠀⢀⣴⠋⠀⠀⢀⡴⠖⠛⠀⠀⠀⠀⠀⠈⠛⠲⣤⡀⠀⠀⠈⠻⣄        ");    
	$display("         ⠀⣾⠁⠀⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⠀ ⠀⠀⠀⠹⣆       ");    
	$display("         ⢸⡇⠀⠀⠀⠀⠀⠀⣴⣋⣷⠀⠀⠀⠀⣾⣹⣧⠀⠀⠀⠀⠀⠀ ⠀⣿       ");       
	$display("         ⢾⠀⠀⠀⠀⡀⣄⣄⠈⠛⠋⠀⢠⡄⢀⠉⠋⢁⣤⢦⢄⠀⠀⠀ ⢸⠆     ");              
	$display("         ⢸⡇⠀⠀⠀⠙⠘⠈⠀⠀⠀⠙⢿⠙⠉⠀⠀⠈⠚⠘⠘⠀⠀⠀⠀⣾       ");   
	$display("         ⠀⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⣰⠏       ");                   
	$display("         ⠀⠀⠹⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⣀⡴⠋        "); 
	$display("         ⠀⠀⠀⢀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⣤⢹⡀         ");           
	$display("         ⠀⠀⠀⢸⡇⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣸⡇         ");            
	$display("         ⠀⠀⠀⠀⠙⠙⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⡻⡅           ");
	$display("         ⠀⠀⠀⠀⠀⠀⠈⠻⢦⣄⣀⠀⠀⠀⠀⠀⣀⣠⡴⠟⡷⠗           ");
	$display("         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈⣉⣹⡇⣇⣸⣋⣉⡁                ");     
	$display("         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠛⠉⠉⠉⠁                ");      
end 
endtask

endprogram