/**************************************************************************/
// Copyright (c) 2024, OASIS Lab
// MODULE: PATTERN
// FILE NAME: PATTERN.v
// VERSRION: 1.0
// DATE: August 15, 2024
// AUTHOR: Yu-Hsuan Hsu, NYCU IEE
// DESCRIPTION: ICLAB2024FALL / LAB3 / PATTERN
// MODIFICATION HISTORY:
// Date                 Description
// 
/**************************************************************************/

`ifdef RTL
    `define CYCLE_TIME 4.6
`endif
`ifdef GATE
    `define CYCLE_TIME 4.6
`endif

`define PAT_NUM 999

module PATTERN(
	//OUTPUT
	rst_n,
	clk,
	in_valid,
	tetrominoes,
	position,
	//INPUT
	tetris_valid,
	score_valid,
	fail,
	score,
	tetris
);

//---------------------------------------------------------------------
//   PORT DECLARATION          
//---------------------------------------------------------------------
output reg			rst_n, clk, in_valid;
output reg	[2:0]	tetrominoes;
output reg  [2:0]	position;
input 				tetris_valid, score_valid, fail;
input 		[3:0]	score;
input		[71:0]	tetris;

//---------------------------------------------------------------------
//   PARAMETER & INTEGER DECLARATION
//---------------------------------------------------------------------
			
//---------------------------------------------------------------------
//   REG & WIRE DECLARATION
//---------------------------------------------------------------------
integer total_latency, pattern_count, latency;
integer patnum = `PAT_NUM;
real CYCLE = `CYCLE_TIME;
integer f_in, f_out, a ,b,result,mode_num,pat;
reg [2:0] golden_tetrominoes, golden_position;
reg [3:0] golden_score;
reg [71:0] golden_tetris;
reg grid [5:0][14:0];
reg golden_fail;
reg [3:0] tetromino [3:0];
reg [3:0] y_pos[5:0] ;
reg [3:0] tetromino_shapes [7:0] [3:0];

integer i, j , k,x,y,y1;
reg [2:0] tetromino_value,tetromino_compute;
reg [2:0] position_value;

// Clock generation

//---------------------------------------------------------------------
//  CLOCK
//---------------------------------------------------------------------

always #(CYCLE/2.0) clk = ~clk;


//---------------------------------------------------------------------
//  SIMULATION
//---------------------------------------------------------------------


initial begin
    f_in = $fopen("../00_TESTBED/input.txt", "r");

	if (f_in == 0) begin
		$display("Failed to open input.txt");
		$finish;
	end

    // Reset system
    reset_task;

	result = $fscanf(f_in, "%d", pat);
	//input_task;


    // Run test patterns
    for (pattern_count = 0; pattern_count < patnum; pattern_count = pattern_count + 1) begin
        repeat (10) @(negedge clk); 
        for (i = 0; i < 6; i = i + 1) begin
            for (j = 0; j < 15; j = j + 1) begin
                grid[i][j] = 0; // 所有格子初始化为空
            end
        end
        for (i = 0; i < 72; i = i + 1) begin
            golden_tetris[i]=0;
        end
        golden_score=0;
        golden_fail=0;

        input_task;

    end
    YOU_PASS_task;
end

task reset_task;
begin

    rst_n = 1'b1;
    in_valid = 1'b0;
    tetrominoes = 3'b000;
    position = 3'b000;
    total_latency = 0;

    force clk = 0;


    #CYCLE; rst_n = 1'b0; 
    #CYCLE; rst_n = 1'b1; 


    #100;
    

    if (tetris_valid !== 1'b0 || score_valid !== 1'b0 || fail !== 1'b0 || score !== 4'd0 || tetris !==72'd0 ) begin
		$display("************************************************************");
        $display("                    SPEC-4 FAIL                   ");
        $display("************************************************************");
		repeat (2) #CYCLE;
        $finish;  
    end

    #CYCLE;release clk;
end
endtask

integer cnt=0,w;


task input_task;
begin
    repeat (10) @(negedge clk); 
    result = $fscanf(f_in, "%d\n", mode_num);
    for (j = 0; j < 16; j = j + 1) begin

        if(golden_fail===1)begin 
            result = $fscanf(f_in, "%d %d\n", tetromino_value, position_value);
        end else begin 
            result = $fscanf(f_in, "%d %d\n", tetromino_value, position_value);
    
            tetrominoes = tetromino_value;
            position = position_value;

            in_valid = 1'b1;
            compute;
            
            @(negedge clk);

            in_valid = 1'b0;
            tetrominoes = 3'bxxx;
            position = 3'bxxx;

            check_latency;
            check_ans_task;
            @(negedge clk);
        end

        // if(j<15||golden_fail===0)begin 
        //     @(negedge score_valid);  
        //     //check_signals_when_score_valid_low;
        //     //check_one_cycle;
        // end 
        // @(negedge clk);
        // //check_one_cycle;
    end

end
endtask

always@(negedge clk)begin
    if(score_valid===1)begin
        #CYCLE;
        if(score_valid===1)begin
            $display("************************************************************");
            $display("                    SPEC-8 FAIL                   ");
            $display("************************************************************");
            $finish;
        end 
    end

    if(tetris_valid===1)begin
        #CYCLE;
        if(tetris_valid===1)begin
            $display("************************************************************");
            $display("                    SPEC-8 FAIL                   ");
            $display("************************************************************");
            $finish;
        end 
    end
end


always@(negedge clk)begin
    if (score_valid === 1'b0) begin
        // 檢查 score, fail, tetris_valid 是否為 0
        if (score !== 4'b0000 || fail !== 1'b0 || tetris_valid !== 1'b0) begin
			$display("************************************************************");
            $display("                    SPEC-5 FAIL                   ");
			$display("************************************************************");
            $finish;
        end
    end

    // 當 tetris_valid 為低時，tetris 必須重置
    if (tetris_valid === 1'b0) begin
        if (tetris !== 72'b0) begin
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
    while (score_valid !== 1'b1) begin
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

task compute;begin
    
    integer xx, yy;

    case(tetrominoes)
        0:begin //2*2
            //判斷位置
            for(y=12;y>=0;y=y-1)begin 
                if(grid[position_value][y]===0&&grid[position_value+1][y]===0&&grid[position_value][y-1]===0&&grid[position_value+1][y-1]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value][y]=1;
            grid[position_value][y-1]=1;
            grid[position_value+1][y]=1;
            grid[position_value+1][y-1]=1;

            //判斷
            
        end
        1:begin 
            for(y=14;y>=0;y=y-1)begin 
                if(grid[position_value][y-3]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value][y]=1;
            grid[position_value][y-1]=1;
            grid[position_value][y-2]=1;
            grid[position_value][y-3]=1;
        end
        2:begin 
            for(y=11;y>=0;y=y-1)begin 
                if(grid[position_value][y]===0&&grid[position_value+1][y]===0&&grid[position_value+2][y]===0&&grid[position_value+3][y]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value][y]=1;
            grid[position_value+1][y]=1;
            grid[position_value+2][y]=1;
            grid[position_value+3][y]=1;
        end
        3:begin
            for(y=13;y>=0;y=y-1)begin 
                if(grid[position_value+1][y-2]===0&&grid[position_value+1][y-1]===0&&grid[position_value+1][y]===0&&grid[position_value][y]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value+1][y-2]=1;
            grid[position_value+1][y-1]=1;
            grid[position_value+1][y]=1;
            grid[position_value][y]=1;
        end
        4:begin 
            for(y=12;y>=0;y=y-1)begin 
                if(grid[position_value+2][y]===0&&grid[position_value+1][y]===0&&grid[position_value][y-1]===0&&grid[position_value][y]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value+2][y]=1;
            grid[position_value][y-1]=1;
            grid[position_value+1][y]=1;
            grid[position_value][y]=1;
        end
        5:begin 
            for(y=13;y>=0;y=y-1)begin 
                if(grid[position_value][y]===0&&grid[position_value][y-1]===0&&grid[position_value][y-2]===0&&grid[position_value+1][y-2]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value][y]=1;
            grid[position_value][y-1]=1;
            grid[position_value][y-2]=1;
            grid[position_value+1][y-2]=1;
        end
        6:begin
            for(y=13;y>=0;y=y-1)begin 
                if(grid[position_value][y]===0&&grid[position_value][y-1]===0&&grid[position_value+1][y-1]===0&&grid[position_value+1][y-2]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value][y]=1;
            grid[position_value][y-1]=1;
            grid[position_value+1][y-1]=1;
            grid[position_value+1][y-2]=1;
        end
        7:begin 
            for(y=11;y>=0;y=y-1)begin 
                if(grid[position_value][y]===0&&grid[position_value+1][y]===0&&grid[position_value+1][y+1]===0&&grid[position_value+2][y+1]===0)begin 
                    continue;
                end else begin 
                    break;
                end
            end
            y=y+1;
            //填值
            grid[position_value][y]=1;
            grid[position_value+1][y]=1;
            grid[position_value+1][y+1]=1;
            grid[position_value+2][y+1]=1;
            y=y+1;
        end
    endcase

    //削掉
    for(y1=0;y1<12;y1=y1+1)begin 
        cnt=0;
        for(x=0;x<6;x=x+1)begin    
            if(grid[x][y1])begin 
                cnt=cnt+1;
            end
        end

        if(cnt===6)begin 
            golden_score=golden_score+1;
            y=y-1;
            for(yy=y1;yy<12;yy=yy+1)begin 
                for(x=0;x<6;x=x+1)begin
                    grid[x][yy]=grid[x][yy+1];
                end
            end
            y1=y1-1;
        end
    end

    if(y>=12)begin 
        golden_fail=1;
    end 

    for(x=0;x<12;x=x+1)begin
        golden_tetris[6*x]=grid[0][x];
        golden_tetris[6*x+1]=grid[1][x];
        golden_tetris[6*x+2]=grid[2][x];
        golden_tetris[6*x+3]=grid[3][x];
        golden_tetris[6*x+4]=grid[4][x];
        golden_tetris[6*x+5]=grid[5][x];
    end
end
endtask

task check_ans_task; begin
    if(score_valid === 1) begin
        // Compare expected and received values
        if (score !== golden_score||fail!==golden_fail) begin
            $display("************************************************************");  
            $display("                    SPEC-7 FAIL                   ");
            $display("************************************************************");
            repeat (9) @(negedge clk);
            $finish;
        end 
    end

    // Check if the number of outputs matches the expected count
    if(tetris_valid === 1) begin
        if(tetris !==golden_tetris ) begin
            $display("************************************************************");  
            $display("                    SPEC-7 FAIL                   ");
            $display("************************************************************");
            repeat(9) @(negedge clk);
            $finish;
        end
    end
end endtask


task YOU_PASS_task; begin
    $display("************************************************************");
    $display("                  Congratulations!               ");
    $display("              execution cycles = %7d", total_latency);
    $display("              clock period = %4fns", CYCLE);
    $display("************************************************************");
    repeat (2) @(negedge clk);
    $finish;
end endtask







//---------------------------------------------------------------------
//  SIMULATION
//---------------------------------------------------------------------



endmodule
// for spec check
// $display("                    SPEC-4 FAIL                   ");
// $display("                    SPEC-5 FAIL                   ");
// $display("                    SPEC-6 FAIL                   ");
// $display("                    SPEC-7 FAIL                   ");
// $display("                    SPEC-8 FAIL                   ");
// for successful design
// $display("                  Congratulations!               ");
// $display("              execution cycles = %7d", total_latency);
// $display("              clock period = %4fns", CYCLE);