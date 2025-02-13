module Ramen(
    // Input Registers
    input clk, 
    input rst_n, 
    input in_valid,
    input selling,
    input portion, 
    input [1:0] ramen_type,

    // Output Signals
    output reg out_valid_order,
    output reg success,

    output reg out_valid_tot,
    output reg [27:0] sold_num,
    output reg [14:0] total_gain
);


//==============================================//
//             Parameter and Integer            //
//==============================================//

// ramen_type
parameter TONKOTSU = 0;
parameter TONKOTSU_SOY = 1;
parameter MISO = 2;
parameter MISO_SOY = 3;

parameter IDLE = 0;
parameter IN = 1;
parameter OUT_ORDER = 2;
parameter OUT_TOT = 3;

// initial ingredient
parameter NOODLE_INIT = 12000;
parameter BROTH_INIT = 41000;
parameter TONKOTSU_SOUP_INIT =  9000;
parameter MISO_INIT = 1000;
parameter SOY_SAUSE_INIT = 1500;

reg [2:0]state, next_state;

reg[13:0] noodle;
reg[15:0] broth;
reg[13:0] tonkotsu_soup;
reg[9:0]  miso;
reg[10:0] soy_sause;

reg[13:0] noodle_remain;
reg[15:0] broth_remain;
reg[13:0] tonkotsu_soup_remain;
reg[9:0]  miso_remain;
reg[10:0] soy_sause_remain;

reg portion_store;
reg [1:0] ramen_type_store; 
reg can_sell,can_sell_store;
reg [2:0] cnt;
reg [3:0]out_cnt;
reg [6:0]TONKOTSU_num;
reg [6:0]TONKOTSU_SOY_num;
reg [6:0]MISO_num;
reg [6:0]MISO_SOY_num;
reg [2:0]out_total_cnt;

//==============================================//
//                 reg declaration              //
//==============================================// 

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
            else if(selling=='d0&&noodle!=NOODLE_INIT)
                next_state = OUT_TOT;
            else
                next_state = state;
        end 
        IN:begin
            if (cnt=='d2)
                next_state = OUT_ORDER;
            else
                next_state = state;
        end
        OUT_ORDER:begin
            if(selling=='d0)
                next_state = OUT_TOT;
            else 
                next_state = IDLE;
        end
        OUT_TOT:begin
            if(in_valid)
                next_state=IN;
            else 
                next_state=state;
        end

        default: next_state = IDLE;
    endcase
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        ramen_type_store<='d0;
    end else if(next_state==IN&&cnt=='d0)begin
        ramen_type_store<=ramen_type;
    end 
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        portion_store<='d0;
    end else if(next_state==IN&&cnt=='d1)begin
        portion_store<=portion;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        cnt<='d0;
    end else if(next_state==IN||state==IN)begin
        cnt<=cnt+'d1;
    end else begin
        cnt<='d0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_cnt<='d0;
    end else if(next_state==OUT_TOT)begin
        out_cnt<='d0;
    end else if(state==OUT_TOT&&next_state==IDLE)begin
        out_cnt<=out_cnt+'d1;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_total_cnt<='d0;
    end else if(state==IDLE)begin
        out_total_cnt<='d0;
    end else if(state==OUT_TOT)begin
        out_total_cnt<=out_total_cnt+'d1;
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        can_sell_store<='d0;
    end else if(cnt=='d2)begin
        can_sell_store<=can_sell;
    end else begin
        can_sell_store<=can_sell_store;
    end
end

always @(*) begin
    if(portion_store=='d0)begin
        case(ramen_type_store)
            'd0:begin
                if(noodle>='d100&&broth>='d300&&tonkotsu_soup>='d150)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            'd1:begin
                if(noodle>='d100&&broth>='d300&&tonkotsu_soup>='d100&&soy_sause>='d30)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            'd2:begin
                if(noodle>='d100&&broth>='d400&&miso>='d30)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            'd3:begin
                if(noodle>='d100&&broth>='d300&&tonkotsu_soup>='d70&&soy_sause>='d15&&miso>='d15)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            default:begin
                can_sell='d0;
            end
        endcase
    end else begin
        case(ramen_type_store)
            'd0:begin
                if(noodle>='d150&&broth>='d500&&tonkotsu_soup>='d200)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            'd1:begin
                if(noodle>='d150&&broth>='d500&&tonkotsu_soup>='d150&&soy_sause>='d50)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            'd2:begin
                if(noodle>='d150&&broth>='d650&&miso>='d50)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            'd3:begin
                if(noodle>='d150&&broth>='d500&&tonkotsu_soup>='d100&&soy_sause>='d25&&miso>='d25)begin
                    can_sell='d1;
                end else begin
                    can_sell='d0;
                end
            end
            default:begin
                can_sell='d0;
            end
        endcase
    end
end

always @(*) begin
    if(portion_store=='d0)begin
        case(ramen_type_store)
            'd0:begin
                noodle_remain=noodle-'d100;
                broth_remain=broth-'d300;
                tonkotsu_soup_remain=tonkotsu_soup-'d150;
                soy_sause_remain=soy_sause;
                miso_remain=miso;
            end
            'd1:begin
                noodle_remain=noodle-'d100;
                broth_remain=broth-'d300;
                tonkotsu_soup_remain=tonkotsu_soup-'d100;
                soy_sause_remain=soy_sause-'d30;
                miso_remain=miso;
            end
            'd2:begin
                noodle_remain=noodle-'d100;
                broth_remain=broth-'d400;
                tonkotsu_soup_remain=tonkotsu_soup;
                soy_sause_remain=soy_sause;
                miso_remain=miso-'d30;
            end
            'd3:begin
                noodle_remain=noodle-'d100;
                broth_remain=broth-'d300;
                tonkotsu_soup_remain=tonkotsu_soup-'d70;
                soy_sause_remain=soy_sause-'d15;
                miso_remain=miso-'d15;
            end
            default:begin
                noodle_remain=noodle;
                broth_remain=broth;
                tonkotsu_soup_remain=tonkotsu_soup;
                soy_sause_remain=soy_sause;
                miso_remain=miso;
            end
        endcase
    end else begin
        case(ramen_type_store)
            'd0:begin
                noodle_remain=noodle-'d150;
                broth_remain=broth-'d500;
                tonkotsu_soup_remain=tonkotsu_soup-'d200;
                soy_sause_remain=soy_sause;
                miso_remain=miso;
            end
            'd1:begin
                noodle_remain=noodle-'d150;
                broth_remain=broth-'d500;
                tonkotsu_soup_remain=tonkotsu_soup-'d150;
                soy_sause_remain=soy_sause-'d50;
                miso_remain=miso;
            end
            'd2:begin
                noodle_remain=noodle-'d150;
                broth_remain=broth-'d650;
                tonkotsu_soup_remain=tonkotsu_soup;
                soy_sause_remain=soy_sause;
                miso_remain=miso-'d50;
            end
            'd3:begin
                noodle_remain=noodle-'d150;
                broth_remain=broth-'d500;
                tonkotsu_soup_remain=tonkotsu_soup-'d100;
                soy_sause_remain=soy_sause-'d25;
                miso_remain=miso-'d25;
            end
            default:begin
                noodle_remain=noodle;
                broth_remain=broth;
                tonkotsu_soup_remain=tonkotsu_soup;
                soy_sause_remain=soy_sause;
                miso_remain=miso;
            end
        endcase
    end
end


always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        TONKOTSU_num<='d0;
        TONKOTSU_SOY_num<='d0;
        MISO_num<='d0;
        MISO_SOY_num<='d0;
    end else if((state==OUT_TOT&&next_state==IDLE)||out_total_cnt=='d2)begin
        TONKOTSU_num<='d0;
        TONKOTSU_SOY_num<='d0;
        MISO_num<='d0;
        MISO_SOY_num<='d0;
    end else if(cnt=='d2&&can_sell) begin
        case(ramen_type_store)
            'd0:begin
                TONKOTSU_num<=TONKOTSU_num+'d1;
            end
            'd1:begin
                TONKOTSU_SOY_num<=TONKOTSU_SOY_num+'d1;
            end
            'd2:begin
                MISO_num<=MISO_num+'d1;
            end
            'd3:begin
                MISO_SOY_num<=MISO_SOY_num+'d1;
            end
            default:begin
                TONKOTSU_num<=TONKOTSU_num;
                TONKOTSU_SOY_num<=TONKOTSU_SOY_num;
                MISO_num<=MISO_num;
                MISO_SOY_num<=MISO_SOY_num;
            end
        endcase
    end
end




always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        noodle<=NOODLE_INIT;
        broth<=BROTH_INIT;  
        tonkotsu_soup<=TONKOTSU_SOUP_INIT;
        miso<=MISO_INIT;
        soy_sause<=SOY_SAUSE_INIT;
    end else if((state==OUT_TOT&&next_state==IDLE)||out_total_cnt=='d2)begin
        noodle<=NOODLE_INIT;
        broth<=BROTH_INIT;  
        tonkotsu_soup<=TONKOTSU_SOUP_INIT;
        miso<=MISO_INIT;
        soy_sause<=SOY_SAUSE_INIT;
    end else if(state==IN&&cnt=='d2&&can_sell)begin
        noodle<=noodle_remain;
        broth<=broth_remain;
        tonkotsu_soup<=tonkotsu_soup_remain;
        miso<=miso_remain;
        soy_sause<=soy_sause_remain;
    end else begin
        noodle<=noodle;
        broth<=broth;
        tonkotsu_soup<=tonkotsu_soup;
        miso<=miso;
        soy_sause<=soy_sause;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_valid_order<='d0;
        success<='d0;
    end else if(state==OUT_ORDER)begin
        out_valid_order<='d1;
        if(can_sell_store=='d1)begin
            success<='d1;
        end else begin
            success<='d0;
        end
    end else begin
        out_valid_order<='d0;
        success<='d0;
    end
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        sold_num<='d0;
    end else if(state==OUT_TOT&&out_total_cnt=='d0)begin
        sold_num[27:21]<=TONKOTSU_num;
        sold_num[20:14]<=TONKOTSU_SOY_num;
        sold_num[13:7]<=MISO_num;
        sold_num[6:0]<=MISO_SOY_num;
    end else begin
        sold_num<='d0;
    end 
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        out_valid_tot<='d0;
    end else if(state==OUT_TOT&&out_total_cnt=='d0)begin
        out_valid_tot<='d1;
    end else begin
        out_valid_tot<='d0;
    end 
end

always @(negedge rst_n or posedge clk) begin
    if(!rst_n)begin
        total_gain<='d0;
    end else if(state==OUT_TOT&&out_total_cnt=='d0)begin
        total_gain<=TONKOTSU_num*200+TONKOTSU_SOY_num*250+MISO_num*200+MISO_SOY_num*250;
    end else begin
        total_gain<='d0;
    end 
end

//==============================================//
//                    Design                    //
//==============================================//








endmodule
