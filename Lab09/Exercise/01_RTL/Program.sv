module Program(input clk, INF.Program_inf inf);
import usertype::*;

typedef enum logic [2:0] {IDLE, INDEX_CHECK, UPDATE, CHECK_DATE, WAIT_BUSY,CAL, OUT} state_t;
state_t state;

//---------------------------------------------------------------------
//   LOGIC DECLARATION
//---------------------------------------------------------------------
logic [3:0] cnt;  // inf.box_sup_valid will high 4 times

logic [11:0] ti_A,ti_B,ti_C,ti_D;
logic [11:0] i_A,i_B,i_C,i_D;
logic [11:0] g_A,g_B,g_C,g_D;


logic [13:0] R1,R2;

logic [7:0] data_no;
logic [1:0] action;
logic [2:0] formula;
logic [1:0] mode;
logic [8:0] date;      // Month 4 bits + Day 5 bits
logic [4:0] i_date;
logic [3:0] i_month;
logic [11:0] compinA[1:0],compinB[1:0],comp_maxout[1:0],comp_minout[1:0];
logic flag[1:0];
logic C_in_valid;
logic [63:0] r_data_store;
logic risk_flag,date_flag,data_flag[3:0];
logic [1:0]date_cnt;
logic [12:0]INDEX_update[3:0];

////////////bridge///////////////
logic [9:0] dram;  // ingredient's amount in DRAM
logic [9:0] user;  // ingredient's amount from user

logic [10:0] add;
logic [10:0] sub;
logic R_VALID_STORE;

logic [7:0]  addr;
logic [11:0] a,b,c,d,e,f;
logic        no_ing, overflow, expired;

typedef enum logic [3:0] {S_IDLE, S_RDATA, S_RADDR, S_EXP, S_ADD1, S_ADD2, S_ADD3, S_OF, S_SUB1, S_SUB2, S_ING, S_WADDR, S_WDATA, S_WB} state_bridge_t;
state_bridge_t state_bridge;

//---------------------------------------------------------------------
//   Design
//---------------------------------------------------------------------

// -------------------------------------------- FSM ------------------------------------------- //
always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        cnt <= 0;
    else if (state == INDEX_CHECK||state==UPDATE) begin
        if (inf.index_valid)
            cnt <= cnt + 1;
    end else if(state==CAL)begin
        cnt <= cnt + 1;
    end else begin
        cnt <= 0;
    end
end



always_ff @(posedge clk or negedge inf.rst_n) begin: FSM
    if (!inf.rst_n)
        state <= IDLE;
    else begin
        case (state)
            IDLE: begin
                if (inf.sel_action_valid) begin
                    case (inf.D.d_act[0])
                        Index_Check:      state <= INDEX_CHECK;
                        Update:           state <= UPDATE;
                        Check_Valid_Date: state <= CHECK_DATE;
                        default:          state <= IDLE;
                    endcase
                end
            end
            INDEX_CHECK: if (inf.index_valid && cnt == 3)
                            state <= WAIT_BUSY;
            UPDATE:     if (inf.index_valid && cnt == 3)
                            state <= WAIT_BUSY;
            CHECK_DATE: if (inf.data_no_valid)
                            state <= WAIT_BUSY;
            WAIT_BUSY: begin 
                if (inf.R_VALID)
                    state <= CAL; 
            end

            CAL:   begin
                if(action==Index_Check)begin
                    if (cnt==5)
                        state <= OUT;    // Wait until C_data_r[2] is low
                end else if (action==Update)begin
                    if(state_bridge==S_IDLE)
                        state <= OUT; 
                end else begin
                    if(state_bridge==S_ADD1)begin
                        state <= OUT; 
                    end
                end
            end 
            OUT:   state <= IDLE;

            default:    state <= IDLE;
        endcase
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        R_VALID_STORE <= 0;
    else if (state==IDLE)
        R_VALID_STORE <= 0;
    else if(inf.R_VALID)begin
        R_VALID_STORE <= inf.R_VALID;
    end 
end

// -------------------------------------- Store Input Data ------------------------------------ //
always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        action <= 0;
    else if (inf.sel_action_valid)
        action <= inf.D.d_act[0];
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        ti_A <= 0;
        ti_B <= 0;
        ti_C <= 0;
        ti_D <= 0;
    end else if (inf.index_valid) begin
        case(cnt)
            0:ti_A <= inf.D.d_index[0];
            1:ti_B <= inf.D.d_index[0];
            2:ti_C <= inf.D.d_index[0];
            3:ti_D <= inf.D.d_index[0];
        endcase
    end
end

// always_ff @(posedge clk or negedge inf.rst_n) begin
//     if (!inf.rst_n)begin
//         r_data_store <= 0;
//     end else begin
//         r_data_store<=inf.R_DATA;
//     end
// end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        i_A <= 0;
        i_B <= 0;
        i_C <= 0;
        i_D <= 0;
        i_date<=0;
        i_month<=0;
    end else if (state_bridge==S_RDATA) begin
        i_A <=   inf.R_DATA[63:52];
        i_B <=   inf.R_DATA[51:40];
        i_C <=   inf.R_DATA[31:20];
        i_D <=   inf.R_DATA[19:8];
        i_date<= inf.R_DATA[7:0];
        i_month<=inf.R_DATA[39:32];
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        formula <= 0;
    else if (inf.formula_valid)
        formula <= inf.D.d_formula[0];
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        mode <= 0;
    else if (inf.mode_valid)
        mode <= inf.D.d_mode[0];
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        date <= 0;
    else if (inf.date_valid)
        date <= inf.D.d_date[0];
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        data_no <= 0;
    else if (inf.data_no_valid)
        data_no <= inf.D.d_data_no[0];
end

///comp///
always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        flag[0]<=0;
        comp_maxout[0]<=0;
        comp_minout[0]<=0;
    end else if(compinA[0]>=compinB[0])begin
        flag[0]<=1;
        comp_maxout[0]<=compinA[0];
        comp_minout[0]<=compinB[0];
    end else begin
        flag[0]<=0;
        comp_maxout[0]<=compinB[0];
        comp_minout[0]<=compinA[0];
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        flag[1]<=0;
        comp_maxout[1]<=0;
        comp_minout[1]<=0;
    end else if(compinA[1]>=compinB[1])begin
        flag[1]<=1;
        comp_maxout[1]<=compinA[1];
        comp_minout[1]<=compinB[1];
    end else begin
        flag[1]<=0;
        comp_maxout[1]<=compinB[1];
        comp_minout[1]<=compinA[1];
    end
end

///G///
always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        g_A<=0;
    end else if(i_A>=ti_A)begin
        g_A<=i_A-ti_A;
    end else begin
        g_A<=ti_A-i_A;
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        g_B<=0;
    end else if(i_B>=ti_B)begin
        g_B<=i_B-ti_B;
    end else begin
        g_B<=ti_B-i_B;
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        g_C<=0;
    end else if(i_C>=ti_C)begin
        g_C<=i_C-ti_C;
    end else begin
        g_C<=ti_C-i_C;
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        g_D<=0;
    end else if(i_D>=ti_D)begin
        g_D<=i_D-ti_D;
    end else begin
        g_D<=ti_D-i_D;
    end
end
///////


always_comb begin
    if(state==CAL)begin
        case(formula)
            Formula_B: begin
                // Formula B: Max - Min
                if(cnt==0)begin
                    compinA[0]=i_A;
                    compinB[0]=i_B;
                    compinA[1]=i_C;
                    compinB[1]=i_D;
                end else begin
                    compinA[0]=comp_maxout[0];
                    compinB[0]=comp_maxout[1];
                    compinA[1]=comp_minout[0];
                    compinB[1]=comp_minout[1];
                end
            end

            Formula_C: begin
                // Formula C: Minimum of I(A), I(B), I(C), I(D)
                if(cnt==0)begin
                    compinA[0]=i_A;
                    compinB[0]=i_B;
                    compinA[1]=i_C;
                    compinB[1]=i_D;
                end else begin
                    compinA[0]=comp_maxout[0];
                    compinB[0]=comp_maxout[1];
                    compinA[1]=comp_minout[0];
                    compinB[1]=comp_minout[1];
                end
            end

            Formula_D: begin
                if(cnt==0)begin
                    compinA[0]=i_A;
                    compinB[0]=2047;
                    compinA[1]=i_B;
                    compinB[1]=2047;
                end else begin
                    compinA[0]=i_C;
                    compinB[0]=2047;
                    compinA[1]=i_D;
                    compinB[1]=2047;
                end
            end

            Formula_E: begin
                if(cnt==0)begin
                    compinA[0]=i_A;
                    compinB[0]=ti_A;
                    compinA[1]=i_B;
                    compinB[1]=ti_B;
                end else begin
                    compinA[0]= i_C;
                    compinB[0]=ti_C;
                    compinA[1]= i_D;
                    compinB[1]=ti_D;
                end
            end

            Formula_F: begin
                if(cnt==1)begin
                    compinA[0]=g_A;
                    compinB[0]=g_B;
                    compinA[1]=g_C;
                    compinB[1]=g_D;
                end else begin
                    compinA[0]=comp_maxout[0];
                    compinB[0]=comp_maxout[1];
                    compinA[1]=comp_minout[0];
                    compinB[1]=comp_minout[1];
                end
            end

            Formula_G: begin
                if(cnt==1)begin
                    compinA[0]=g_A;
                    compinB[0]=g_B;
                    compinA[1]=g_C;
                    compinB[1]=g_D;
                end else begin
                    compinA[0]=comp_maxout[0];
                    compinB[0]=comp_maxout[1];
                    compinA[1]=comp_minout[0];
                    compinB[1]=comp_minout[1];
                end
            end

            default: begin
                compinA[0]=0;
                compinB[0]=0;
                compinA[1]=0;
                compinB[1]=0;
            end
        endcase
    end else begin
        compinA[0]=0;
        compinB[0]=0;
        compinA[1]=0;
        compinB[1]=0;
    end
end



// ----------------------------------- Compute Ingredient Amounts ------------------------------ //
always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        R1 <= 0;
    else if(state==IDLE)begin
        R1 <= 0;
    end else if(state==CAL)begin
        case (formula)
            Formula_A: begin
                // Formula A: Average of I(A), I(B), I(C), I(D)
                R1 <= ((i_A + i_B + i_C + i_D) >> 2);
            end

            Formula_B: begin
                // Formula B: Max - Min
                R1 <= comp_maxout[0] - comp_minout[1];
            end

            Formula_C: begin
                // Formula C: Minimum of I(A), I(B), I(C), I(D)
                R1 <= comp_minout[1];
            end

            Formula_D: begin
                // Formula D: Count I(x) >= 2047
                if(cnt==1||cnt==2)begin
                    R1<=R1+flag[0]+flag[1];
                end
            end

            Formula_E: begin
                // Formula E: Count I(x) >= T(I(x))
                if(cnt==1||cnt==2)begin
                    R1<=R1+flag[0]+flag[1];
                end
            end
            //FG Critical
            Formula_F: begin
                if(cnt==2)begin
                    R1<=comp_minout[0]+comp_minout[1];
                end else if(cnt==3)begin
                    R1<=(R1+comp_minout[0]);
                end 
            end

            Formula_G: begin
                if(cnt==3)begin
                    R1<=(comp_minout[0]>>2)+(comp_maxout[1]>>2)+(comp_minout[1]>>1);
                end 
            end

            Formula_H: begin
                // Formula H: Average of G(A), G(B), G(C), G(D)
                R1 <= (((g_A + g_B) + (g_C + g_D)) >>2);
            end

            default: begin
                R1 <= 0; // Default case if no formula matches
            end
        endcase
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        R2 <= 0;
    end else begin
        R2 <= R1/3;
    end
end


always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        C_in_valid <= 0;
    else if (state==WAIT_BUSY)
        C_in_valid <= 1;    // Wait until C_data_r[2] is low
    else
        C_in_valid <= 0;
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        inf.AR_ADDR <= 0;
    else if (inf.data_no_valid)
        inf.AR_ADDR <= (32'h10000+inf.D.d_data_no[0]*8);
    else
        inf.AR_ADDR <= inf.AR_ADDR; // Retain the previous value
end

////不能同時給
always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        inf.AW_ADDR <= 0;
    else if (inf.data_no_valid)
        inf.AW_ADDR <= (32'h10000+inf.D.d_data_no[0]*8);
    else
        inf.AW_ADDR <= inf.AW_ADDR; // Retain the previous value
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        risk_flag <= 0;
    else if (state==CAL&&cnt==5)begin
        if(mode==Insensitive)begin
            case (formula)
                Formula_A: begin
                    if(R1>=2047)
                        risk_flag<=1;
                end

                Formula_B: begin
                    if(R1>=800)
                        risk_flag<=1;
                end

                Formula_C: begin
                    if(R1>=2047)
                        risk_flag<=1;
                end

                Formula_D: begin
                    if(R1>=3)
                        risk_flag<=1;
                end

                Formula_E: begin
                    if(R1>=3)
                        risk_flag<=1;
                end

                Formula_F: begin
                    if(R2>=800)
                        risk_flag<=1;
                end

                Formula_G: begin
                    if(R1>=800)
                        risk_flag<=1;
                end

                Formula_H: begin
                    if(R1>=800)
                        risk_flag<=1;
                end

                default: begin
                    risk_flag <= 0; // Default case if no formula matches
                end
            endcase
        end else if(mode==Normal) begin
            case (formula)
                Formula_A: begin
                    if(R1>=1023)
                        risk_flag<=1;
                end

                Formula_B: begin
                    if(R1>=400)
                        risk_flag<=1;
                end

                Formula_C: begin
                    if(R1>=1023)
                        risk_flag<=1;
                end

                Formula_D: begin
                    if(R1>=2)
                        risk_flag<=1;
                end

                Formula_E: begin
                    if(R1>=2)
                        risk_flag<=1;
                end

                Formula_F: begin
                    if(R2>=400)
                        risk_flag<=1;
                end

                Formula_G: begin
                    if(R1>=400)
                        risk_flag<=1;
                end

                Formula_H: begin
                    if(R1>=400)
                        risk_flag<=1;
                end

                default: begin
                    risk_flag <= 0; // Default case if no formula matches
                end
            endcase
        end else begin
            case (formula)
                Formula_A: begin
                    if(R1>=511)
                        risk_flag<=1;
                end

                Formula_B: begin
                    if(R1>=200)
                        risk_flag<=1;
                end

                Formula_C: begin
                    if(R1>=511)
                        risk_flag<=1;
                end

                Formula_D: begin
                    if(R1>=1)
                        risk_flag<=1;
                end

                Formula_E: begin
                    if(R1>=1)
                        risk_flag<=1;
                end

                Formula_F: begin
                    if(R2>=200)
                        risk_flag<=1;
                end

                Formula_G: begin
                    if(R1>=200)
                        risk_flag<=1;
                end

                Formula_H: begin
                    if(R1>=200)
                        risk_flag<=1;
                end

                default: begin
                    risk_flag <= 0; // Default case if no formula matches
                end
            endcase
        end
    end else
        risk_flag <= 0; // Retain the previous value
end


always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        date_flag <= 0;
    end else if(state==IDLE)begin
        date_flag <= 0;
    end else if (state_bridge==S_ADD1)begin
        if((date[8:5]<i_month)||(date[8:5]==i_month&&date[4:0]<i_date))begin
            date_flag <= 1;
        end else begin
            date_flag <= 0;
        end
    end
end



always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        inf.warn_msg <= 0;
    end else if(state==OUT)begin
        case(action)
            Index_Check:begin
                if (date_flag)begin
                    inf.warn_msg <= Date_Warn;
                end else if(risk_flag)begin
                    inf.warn_msg <= Risk_Warn;
                end else  begin
                    inf.warn_msg <= No_Warn;
                end
            end
            Update:begin
                if(data_flag[0]||data_flag[1]||data_flag[2]||data_flag[3])begin
                    inf.warn_msg <= Data_Warn;
                end else  begin
                    inf.warn_msg <= No_Warn;
                end
            end
            Check_Valid_Date:begin
                if (date_flag==1)begin
                    inf.warn_msg <= Date_Warn;
                end else  begin
                    inf.warn_msg <= No_Warn;
                end
            end
        endcase
    end else begin
        inf.warn_msg <= 0;
    end
end


always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        inf.complete <= 0;
    end else if(state==OUT)begin
        case(action)
            Index_Check:begin
                if (date_flag)begin
                    inf.complete <= 0;
                end else if(risk_flag)begin
                    inf.complete <= 0;
                end else  begin
                    inf.complete <= 1;
                end
            end
            Update:begin
                if(data_flag[0]||data_flag[1]||data_flag[2]||data_flag[3])begin
                    inf.complete <= 0;
                end else  begin
                    inf.complete <= 1;
                end
            end
            Check_Valid_Date:begin
                if (date_flag==1)begin
                    inf.complete <= 0;
                end else  begin
                    inf.complete <= 1;
                end
            end
        endcase
    end else begin
        inf.complete <= 0;
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        inf.out_valid <= 0;
    else if (state==OUT)begin
        inf.out_valid <= 1;
    end else begin
        inf.out_valid <= 0;
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        INDEX_update[0]<=0;
        INDEX_update[1]<=0;
        INDEX_update[2]<=0;
        INDEX_update[3]<=0;
    end else if(state==CAL&&cnt==0)begin
        INDEX_update[0]<={1'b0,i_A}+{{ti_A[11]},ti_A};
        INDEX_update[1]<={1'b0,i_B}+{{ti_B[11]},ti_B};
        INDEX_update[2]<={1'b0,i_C}+{{ti_C[11]},ti_C};
        INDEX_update[3]<={1'b0,i_D}+{{ti_D[11]},ti_D};
    end
end

always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)begin
        inf.W_DATA<=0;
        data_flag[0]<=0;
        data_flag[1]<=0;
        data_flag[2]<=0;
        data_flag[3]<=0;
        inf.W_DATA<=0;
    end else if(state==CAL&&cnt==1) begin
        if(INDEX_update[0][12])begin
            if(ti_A[11])begin
                data_flag[0]<=1;
                inf.W_DATA[63:52]<=0;
            end else begin
                data_flag[0]<=1;
                inf.W_DATA[63:52]<=4095;
            end
        end else begin
            data_flag[0]<=0;
            inf.W_DATA[63:52]<=INDEX_update[0];
        end

        if(INDEX_update[1][12])begin
            if(ti_B[11])begin
                data_flag[1]<=1;
                inf.W_DATA[51:40]<=0;
            end else begin
                data_flag[1]<=1;
                inf.W_DATA[51:40]<=4095;
            end
        end else begin
            data_flag[1]<=0;
            inf.W_DATA[51:40]<=INDEX_update[1];
        end

        if(INDEX_update[2][12])begin
            if(ti_C[11])begin
                data_flag[2]<=1;
                inf.W_DATA[31:20]<=0;
            end else begin
                data_flag[2]<=1;
                inf.W_DATA[31:20]<=4095;
            end
        end else begin
            data_flag[2]<=0;
            inf.W_DATA[31:20]<=INDEX_update[2];
        end

        if(INDEX_update[3][12])begin
            if(ti_D[11])begin
                data_flag[3]<=1;
                inf.W_DATA[19:8]<=0;
            end else begin
                data_flag[3]<=1;
                inf.W_DATA[19:8]<=4095;
            end
        end else begin
            data_flag[3]<=0;
            inf.W_DATA[19:8]<=INDEX_update[3];
        end
        inf.W_DATA[7:0]  <= date[4:0];
        inf.W_DATA[39:32]<= date[8:5];
    end
end




////////////////FSM////////////////////////
always_ff @(posedge clk or negedge inf.rst_n) begin
    if (!inf.rst_n)
        state_bridge <= S_IDLE;
    else begin
        case (state_bridge)
            S_IDLE: begin
                if (C_in_valid)
                    state_bridge <= S_RADDR;
                else
                    state_bridge <= S_IDLE;
            end

            S_RADDR: begin
                if (inf.AR_READY)
                    state_bridge <= S_RDATA;
                else
                    state_bridge <= S_RADDR;
            end

            S_RDATA: begin
                if (inf.R_VALID) begin
                    state_bridge <= S_ADD1;
                end else
                    state_bridge <= S_RDATA;
            end

            S_ADD1: begin
                if(action==Update)begin
                    state_bridge <= S_WADDR;
                end else begin
                    state_bridge <= S_IDLE;
                end 
            end

            S_WADDR: begin
                if (inf.AW_READY)
                    state_bridge <= S_WDATA;
                else
                    state_bridge <= S_WADDR;
            end

            S_WDATA: begin
                if (inf.W_READY)
                    state_bridge <= S_WB;
                else
                    state_bridge <= S_WDATA;
            end

            S_WB: begin
                if (inf.B_VALID)
                    state_bridge <= S_IDLE;
                else
                    state_bridge <= S_WB;
            end

            default: begin
                state_bridge <= S_IDLE;
            end
        endcase
    end
end

always_comb begin
    a=inf.W_DATA[63:52];
    b=inf.W_DATA[51:40];
    c=inf.W_DATA[31:20];
    d=inf.W_DATA[19:8];
    e=inf.W_DATA[7:0]  ;
    f=inf.W_DATA[39:32];
end


always_comb inf.AR_VALID      = !inf.rst_n?0:((state_bridge == S_RADDR)? 1 : 0);
always_comb inf.R_READY       = !inf.rst_n?0:((state_bridge == S_RDATA)? 1 : 0);
always_comb inf.AW_VALID      = !inf.rst_n?0:((state_bridge == S_WADDR)? 1 : 0);
always_comb inf.W_VALID       = !inf.rst_n?0:((state_bridge == S_WDATA)? 1 : 0);
always_comb inf.B_READY       = !inf.rst_n?0:((state_bridge == S_WB)?    1 : 0);




endmodule

