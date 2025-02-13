module BB(
    //Input Ports
    input clk,
    input rst_n,
    input in_valid,
    input [1:0] inning,   // Current inning number
    input half,           // 0: top of the inning, 1: bottom of the inning
    input [2:0] action,   // Action code

    //Output Ports
    output reg out_valid,  // Result output valid
    output reg [3:0] score_A,  // Score of team A (guest team)
    output reg [3:0] score_B,  // Score of team B (home team)
    output reg [1:0] result    // 0: Team A wins, 1: Team B wins, 2: Darw
);

//==============================================//
//             Action Memo for Students         //
// Action code interpretation:
// 3’d0: Walk (BB)
// 3’d1: 1H (single hit)
// 3’d2: 2H (double hit)
// 3’d3: 3H (triple hit)
// 3’d4: HR (home run)
// 3’d5: Bunt (short hit)
// 3’d6: Ground ball
// 3’d7: Fly ball
//==============================================//
//==============================================//
//             Parameter and Integer            //
//==============================================//
parameter IDLE = 3'b000;
parameter READ = 3'b001;
parameter count = 3'b010;
parameter END_GAME = 3'b011;

//==============================================//
//             State and Next State            //
//==============================================//
reg [1:0] state, next_state;
reg [2:0] outs,next_outs;
reg [2:0] next_base;
reg [3:0] next_score;

//==============================================//
//             State Machine                    //
//==============================================//
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= IDLE;
    else
        state <= next_state;
end

// State transition
always @(*) begin
    case (state)
        IDLE: begin
            if (in_valid)
                next_state = READ;
            else
                next_state = IDLE;
        end 
        READ: begin
            if (!in_valid)begin 
                next_state = END_GAME;
            end
            else
                next_state = READ;
        end
        END_GAME: begin
            next_state = IDLE;
        end
        default: next_state = IDLE;
    endcase
end
//盡可能combinational 跟sequential分開寫
//==============================================//
//             Base and Score Logic             //
//==============================================//

// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n)
//         bases<={1'd0,1'd0,1'd0};
//     else 
//         bases<=next_base;
// end
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n)begin 
//         B1<=0;
//         B2<=0;
//         B3<=0;
//     end else begin 
//         {B3,B2,B1}<=next_base;
//     end
// end






always @(posedge clk ) begin
    if(next_state==READ||state==READ)begin
        case (action)
            3'd0: begin // Walk
                case(next_base)
                    3'b000:next_base<={1'd0,1'd0,1'd1};
                    3'b001:next_base<={1'd0,1'd1,1'd1};
                    3'b010:next_base<={1'd0,1'd1,1'd1};
                    3'b011:next_base<={1'd1,1'd1,1'd1};
                    3'b100:next_base<={1'd1,1'd0,1'd1};
                    3'b101:next_base<={1'd1,1'd1,1'd1};
                    3'b110:next_base<={1'd1,1'd1,1'd1};
                    3'b111:next_base<={1'd1,1'd1,1'd1};
                endcase
            end
            3'd1: begin // Single
                if(outs<'d2)begin
                    next_base<={next_base[1],next_base[0],1'd1};
                end else begin 
                    next_base<={next_base[0],1'd0,1'd1};
                end     
            end
            3'd2: begin // Double
                if(outs<'d2)begin
                    next_base<={next_base[0],1'd1,1'd0};
                end else begin 
                    next_base<={1'd0,1'd1,1'd0};
                end     
            end
            3'd3: begin // Triple
                if(outs<'d2)begin
                    next_base<={1'd1,1'd0,1'd0};
                end else begin 
                    next_base<={1'd0,1'd1,1'd0};
                end     
            end
            3'd4: begin // Home Run
                next_base<={1'd0,1'd0,1'd0};
            end
            3'd5: begin // Bunt
                if(outs<'d2)begin
                    next_base<={next_base[1],next_base[0],1'd0};
                end else begin 
                    next_base<={1'd0,1'd0,1'd0};
                end     
            end
            3'd6: begin // Ground Ball
                if(outs==2'd0)begin
                    if(next_base[0]==3'd1)begin
                        next_base<={next_base[1],1'd0,1'd0};
                    end else begin 
                        next_base<={next_base[1],1'd0,1'd0};
                    end
                end else if (outs=='d1) begin 
                    if(next_base[0]=='d1)begin
                        next_base<={1'd0,1'd0,1'd0};
                    end else begin 
                        next_base<={next_base[1],1'd0,1'd0};
                    end
                end else begin 
                    next_base<={1'd0,1'd0,1'd0};
                end
            end
            3'd7: begin // Fly Ball
                if(outs<2'd2)begin
                    next_base<={1'd0,next_base[1],next_base[0]};
                end else begin 
                    next_base<={1'd0,1'd0,1'd0};
                end
            end
            default: begin
                next_base<={1'd0,1'd0,1'd0};
            end
        endcase
        
        // Update outs, scores and bases according to action
        // Add your code here
    end else begin 
        next_base<=3'd0;
    end
end

always @(posedge clk) begin
    if(next_state==READ||state==READ)begin
        case (action)
            3'd0: begin // Walk
                outs<=outs;
            end
            3'd1: begin // Single
                outs<=outs;
            end
            3'd2: begin // Double
                outs<=outs;
            end
            3'd3: begin // Triple
                outs<=outs;
            end
            3'd4: begin // Home Run
                outs<=outs;
            end
            3'd5: begin // Bunt
                if(outs+1'd1>=3'd3)
                    outs<=0;
                else
                    outs<=outs+1;
            end
            3'd6: begin // Ground Ball
                if(outs==2'd0)begin
                    if(next_base[0]=='d1)begin
                        outs<=outs+'d2;
                    end else begin 
                        outs<=outs+'d1;
                    end
                end else if (outs=='d1) begin 
                    if(next_base[0]=='d1)begin
                        outs<='d0;
                    end else begin 
                        outs<=outs+'d1;
                    end
                end else begin 
                    outs<='d0;
                end
            end
            3'd7: begin // Fly Ball
                if(outs<'d2)begin
                    outs<=outs+1'd1;
                end else begin
                    outs<='d0;
                end
            end
            default: begin
                outs<='d0;
            end
        endcase
    end else begin 
        outs<='d0;
    end
end


always @(posedge clk ) begin
    if(next_state==IDLE)begin 
        next_score <='d0;
    end else if(next_state==READ||state==READ)begin
        case (action)
            3'd0: begin // Walk
                if(next_base==3'b111)begin
                    next_score<=next_score+8'd1;
                end else begin 
                    next_score<=next_score;
                end
            end
            3'd1: begin // Single
                if(outs<2'd2)begin
                    next_score<=next_score+next_base[2];
                end else begin 
                    next_score<=next_score+next_base[2]+next_base[1];
                end     
            end
            3'd2: begin // Double
                if(outs<2'd2)begin
                    next_score<=next_score+next_base[2]+next_base[1];
                end else begin 
                    next_score<=next_score+next_base[2]+next_base[1]+next_base[0];
                end     
            end
            3'd3: begin // Triple
                next_score<=next_score+next_base[2]+next_base[1]+next_base[0];
            end
            3'd4: begin // Home Run
                next_score<=next_score+next_base[2]+next_base[1]+next_base[0]+8'd1;
            end
            3'd5: begin // Bunt
                if((outs+3'd1)=='d3)begin 
                    next_score<=0;
                end else begin 
                    next_score<=next_score+next_base[2];
                end
            end
            3'd6: begin // Ground Ball
                if(outs==3'd0)begin
                    next_score<=next_score+next_base[2];
                end else if (outs==3'd1) begin 
                    if(next_base[0]==1'd1)begin
                        next_score<=0;
                    end else begin 
                        next_score<=next_score+next_base[2];
                    end
                end else begin 
                    next_score<=0;
                end
            end
            3'd7: begin // Fly Ball
                if(outs<3'd2)begin
                    next_score<=next_score+next_base[2];
                end else begin 
                    next_score<='d0;
                end
            end
            default: begin
                next_score<='d0;
            end
        endcase
    end else begin 
        next_score<='d0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        score_A <= 3'd0;
        score_B <= 3'd0;
    end else if (state==IDLE)begin 
        score_A <= 3'd0;
        score_B <= 3'd0;
    end else if(outs<=3'd3&&state==READ)begin
        if(inning==2'd3&&score_A<score_B&&half)begin 
            score_B<=score_B;
        end else begin 
            if((!half))begin 
                case(action)
                    3'd5: begin // Bunt
                        if(outs+1'd1>=3'd3)
                            score_A<=score_A+next_score; 
                    end
                    3'd6: begin // Ground Ball
                        if(next_base[0]=='d1)begin 
                            if(outs+2'd2>=3'd3)begin 
                                score_A<=score_A+next_score;
                            end
                        end else begin 
                            if(outs+1'd1>=3'd3)begin
                                score_A<=score_A+next_score;
                            end
                        end
                    end
                    3'd7: begin // Fly Ball
                        if(outs+2'd1>=3'd3)
                            score_A<=score_A+next_score;
                    end
                endcase
            end else begin 
                case(action)
                    3'd5: begin // Bunt
                        if(outs+1'd1>=3'd3)
                            score_B<=score_B+next_score;
                    end
                    3'd6: begin // Ground Ball
                        if(next_base[0]=='d1)begin 
                            if(outs+2'd2>=3'd3)begin 
                                score_B<=score_B+next_score;
                            end
                        end else begin 
                            if(outs+1'd1>=3'd3)begin
                                score_B<=score_B+next_score;
                            end
                        end
                    end
                    3'd7: begin // Fly Ball
                        if(outs+2'd1>=3'd3)
                            score_B<=score_B+next_score;
                    end
                endcase
            end
        end
    end else begin 
        score_A<=score_A;
        score_B<=score_B;
    end
end


//==============================================//
//                Output Block                  //
//==============================================//
always @(*) begin
    case (state)
        IDLE: begin
            out_valid = 1'b0;
            result = 2'b00; // No result
        end
        END_GAME: begin
            out_valid = 1'b1;
            if (score_A > score_B)
                result = 2'b00; // Team A wins
            else if (score_A < score_B)
                result = 2'b01; // Team B wins
            else
                result = 2'b10; // Draw
        end
        default: begin
            out_valid = 1'b0;
            result = 2'b00; // No result
        end
    endcase
end


endmodule
