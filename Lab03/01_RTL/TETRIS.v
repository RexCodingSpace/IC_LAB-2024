/**************************************************************************/
// Copyright (c) 2024, OASIS Lab
// MODULE: TETRIS
// FILE NAME: TETRIS.v
// VERSRION: 1.0
// DATE: August 15, 2024
// AUTHOR: Yu-Hsuan Hsu, NYCU IEE
// DESCRIPTION: ICLAB2024FALL / LAB3 / TETRIS
// MODIFICATION HISTORY:
// Date                 Description
// 
/**************************************************************************/
module TETRIS (
	//INPUT
	rst_n,
	clk,
	in_valid,
	tetrominoes,
	position,
	//OUTPUT
	tetris_valid,
	score_valid,
	fail,
	score,
	tetris
);

//---------------------------------------------------------------------
//   PORT DECLARATION          
//---------------------------------------------------------------------
input				rst_n, clk, in_valid;
input		[2:0]	tetrominoes;
input		[2:0]	position;
output reg			tetris_valid, score_valid, fail;
output reg	[3:0]	score;
output reg 	[71:0]	tetris;



//---------------------------------------------------------------------
//   PARAMETER & INTEGER DECLARATION
//---------------------------------------------------------------------
parameter IDLE = 2'b00;
parameter COMPUTE = 2'b10;
parameter OUT = 2'b11;
integer i, j , k , x , y , y1;
//---------------------------------------------------------------------
//   REG & WIRE DECLARATION
//---------------------------------------------------------------------
reg [1:0] state, next_state;
reg grid [5:0][14:0];
reg [2:0] tetromino_value;
reg [2:0] position_value;
reg stop_search;
reg [4:0] y_high[5:0];
reg [3:0] y_highest;
reg [3:0] score_cnt;
reg score_1 [11:0];
reg [3:0]score_tmp, score_store,score_tmp1;
reg fail_tmp;
reg [3:0] count,in_cnt;
//---------------------------------------------------------------------
//   Finite state machine
//---------------------------------------------------------------------
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
                next_state = OUT;
            else
                next_state = IDLE;
        end 
        // COMPUTE: begin
        //     next_state = OUT;
        // end
		OUT: begin
			if(score_tmp1>='d2)begin
				next_state = OUT;
			end else if (count>'d2)begin
				next_state = OUT;
			end else begin 
				next_state = IDLE;
			end
		end
        default: next_state = IDLE;
    endcase
end

//---------------------------------------------------------------------
//   DESIGN
//---------------------------------------------------------------------
always @(*) begin
	if(state==IDLE)begin
		tetromino_value=tetrominoes;
		position_value=position;
	end else begin
		tetromino_value='d0;
		position_value='d0;
	end
end

always @(negedge rst_n or posedge clk) begin
	if(!rst_n)begin
		in_cnt<='d15;
	end else if(fail=='d1)begin
		in_cnt<='d15;
	end else if(in_valid=='d1)begin
		in_cnt<=in_cnt+'d1;
	end
end


always @(*) begin
	case(tetromino_value)
		0:begin //2*2
			//判斷位置
			if(y_high[position_value]>=y_high[position_value+'d1])begin
				y_highest=y_high[position_value];
			end else begin 
				y_highest=y_high[position_value+'d1];
			end
		end
		1:begin 
			y_highest=y_high[position_value];
		end
		2:begin 
			if (y_high[position_value] >= y_high[position_value + 'd1] && 
				y_high[position_value] >= y_high[position_value + 'd2] && 
				y_high[position_value] >= y_high[position_value + 'd3]) begin

				y_highest=y_high[position_value];
			end 
			else if (y_high[position_value + 'd1] >= y_high[position_value] && 
					y_high[position_value + 'd1] >= y_high[position_value + 'd2] && 
					y_high[position_value + 'd1] >= y_high[position_value + 'd3]) begin
				
				y_highest=y_high[position_value+'d1];
			end 
			else if (y_high[position_value + 'd2] >= y_high[position_value] && 
					y_high[position_value + 'd2] >= y_high[position_value + 'd1] && 
					y_high[position_value + 'd2] >= y_high[position_value + 'd3]) begin
				y_highest=y_high[position_value + 'd2];
			end 
			else begin
				y_highest=y_high[position_value + 'd3];
			end
		end
		3:begin
			if(y_high[position_value]>=(y_high[position_value+'d1]+'d2))begin
				y_highest=y_high[position_value];
			end else begin 
				y_highest=y_high[position_value+'d1];
			end
		end
		4:begin 
			if (y_high[position_value]+'d1 >= (y_high[position_value + 'd1]) && 
				y_high[position_value]+'d1 >= (y_high[position_value + 'd2]) ) begin

				y_highest=y_high[position_value];
			end 
			else if (y_high[position_value + 'd1] >= y_high[position_value + 'd2]) begin
				
				y_highest=y_high[position_value+'d1];
			end 
			else begin
				y_highest=y_high[position_value + 'd2];
			end
		end
		5:begin 
			if(y_high[position_value]>=y_high[position_value+'d1])begin
				y_highest=y_high[position_value];
			end else begin 
				y_highest=y_high[position_value+'d1];
			end
		end
		6:begin
			if(y_high[position_value]>=(y_high[position_value+'d1]+'d1))begin
				y_highest=y_high[position_value];
			end else begin 
				y_highest=y_high[position_value+'d1];
			end
		end
		7:begin 
			if ((y_high[position_value+'d2]) >= (y_high[position_value]+'d1) && 
				(y_high[position_value+'d2]) >= (y_high[position_value +'d1]+'d1) ) begin

				y_highest=y_high[position_value+'d2];
			end 
			else if (y_high[position_value + 'd1] >= y_high[position_value ]) begin
				
				y_highest=y_high[position_value+'d1];
			end 
			else begin
				y_highest=y_high[position_value];
			end
		end
		default:y_highest='d0;
	endcase
end

//y_high
always @(posedge clk)begin
	if(in_cnt=='d15&&state==IDLE&&next_state==IDLE)begin
		for(i=0;i<=5;i=i+1)begin
			y_high[i]<='d0;
		end

		//改 holdtinme vio
	end else if(score_valid=='d1)begin
		for(i=0;i<=5;i=i+1)begin
			if(grid[i][11])begin
				y_high[i]<='d12;
			end else if(grid[i][10])begin
				y_high[i]<='d11;
			end else if(grid[i][9])begin
				y_high[i]<='d10;
			end else if(grid[i][8])begin
				y_high[i]<='d9;
			end else if(grid[i][7])begin
				y_high[i]<='d8;
			end else if(grid[i][6])begin
				y_high[i]<='d7;
			end else if(grid[i][5])begin
				y_high[i]<='d6;
			end else if(grid[i][4])begin
				y_high[i]<='d5;
			end else if(grid[i][3])begin
				y_high[i]<='d4;
			end else if(grid[i][2])begin
				y_high[i]<='d3;
			end else if(grid[i][1])begin
				y_high[i]<='d2;
			end else if(grid[i][0])begin
				y_high[i]<='d1;
			end else
				y_high[i]<='d0;



			// 	if(grid[i][10]=='d0)begin
			// 		if(grid[i][9]=='d0)begin
			// 			if(grid[i][8]=='d0)begin
			// 				if(grid[i][7]=='d0)begin
			// 					if(grid[i][6]=='d0)begin
			// 						if(grid[i][5]=='d0)begin
			// 							if(grid[i][4]=='d0)begin
			// 								if(grid[i][3]=='d0)begin
			// 									if(grid[i][2]=='d0)begin
			// 										if(grid[i][1]=='d0)begin
			// 											if(grid[i][0]=='d0)begin
			// 												y_high[i]<='d0;
			// 											end else begin
			// 												y_high[i]<='d1;
			// 											end
			// 										end else begin
			// 											y_high[i]<='d2;
			// 										end
			// 									end else begin
			// 										y_high[i]<='d3;
			// 									end
			// 								end else begin
			// 									y_high[i]<='d4;
			// 								end
			// 							end else begin
			// 								y_high[i]<='d5;
			// 							end
			// 						end else begin
			// 							y_high[i]<='d6;
			// 						end
			// 					end else begin
			// 						y_high[i]<='d7;
			// 					end
			// 				end else begin
			// 					y_high[i]<='d8;
			// 				end
			// 			end else begin
			// 				y_high[i]<='d9;
			// 			end
			// 		end else begin
			// 			y_high[i]<='d10;
			// 		end
			// 	end else begin
			// 		y_high[i]<='d11;
			// 	end
			// end else begin
			// 	y_high[i]<='d12;
			// end
		end 
	end 
	// else if(state==IDLE) begin 
	// 	case(tetromino_value)
	// 		0:begin //2*2
	// 			//判斷位置
	// 			y_high[position_value]<=y_highest+'d2;
	// 			y_high[position_value +'d1]<=y_highest+'d2;
	// 		end
	// 		1:begin 
	// 			y_high[position_value]<=y_highest+'d4;
	// 		end
	// 		2:begin 
	// 			y_high[position_value]<=y_highest+'d1;
	// 			y_high[position_value + 'd1] <= y_highest+'d1;
	// 			y_high[position_value + 'd2] <= y_highest+'d1;
	// 			y_high[position_value + 'd3] <= y_highest+'d1;
	// 		end
	// 		3:begin
	// 			if(y_high[position_value]>=(y_high[position_value+'d1]+'d2))begin
	// 				y_high[position_value]<=y_highest+'d1;
	// 				y_high[position_value + 'd1] <= y_highest+'d1;
	// 			end else begin
	// 				y_high[position_value]<=y_highest+'d3;
	// 				y_high[position_value + 'd1] <= y_highest+'d3;
	// 			end
	// 		end
	// 		4:begin 
	// 			if(y_high[position_value]+'d1 >= (y_high[position_value + 'd1]) && 
	// 			y_high[position_value]+'d1 >= (y_high[position_value + 'd2]))begin
	// 				y_high[position_value]<= y_highest+'d2;
	// 				y_high[position_value + 'd1] <= y_highest+'d2;
	// 				y_high[position_value + 'd2] <= y_highest+'d2;
	// 			end else begin
	// 				y_high[position_value]<= y_highest+'d1;
	// 				y_high[position_value + 'd1] <= y_highest+'d1;
	// 				y_high[position_value + 'd2] <= y_highest+'d1;
	// 			end
	// 		end
	// 		5:begin 
	// 			y_high[position_value]<= y_highest+'d3;
	// 			y_high[position_value + 'd1] <= y_highest+'d1;
	// 		end
	// 		6:begin
	// 			if(y_high[position_value]>=(y_high[position_value+'d1]+'d1))begin
	// 				y_high[position_value]<= y_highest+'d2;
	// 				y_high[position_value + 'd1] <= y_highest+'d1;
	// 			end else begin
	// 				y_high[position_value]<= y_highest+'d3;
	// 				y_high[position_value + 'd1] <= y_highest+'d2;
	// 			end
	// 		end
	// 		7:begin 
	// 			if((y_high[position_value+'d2]) >= (y_high[position_value]+'d1) && 
	// 			(y_high[position_value+'d2]) >= (y_high[position_value +'d1]+'d1))begin
	// 				y_high[position_value]<= y_highest;
	// 				y_high[position_value + 'd1] <= y_highest+'d1;
	// 				y_high[position_value + 'd2] <= y_highest+'d1;

	// 			end else begin
	// 				y_high[position_value]<= y_highest+'d1;
	// 				y_high[position_value + 'd1] <= y_highest+'d2;
	// 				y_high[position_value + 'd2] <= y_highest+'d2;
	// 			end
	// 		end
	// 	endcase
	// end
end


//grid
always @(posedge clk)begin
	if((in_cnt=='d15&&state==IDLE&&next_state==IDLE))begin
		for (i = 0; i < 6; i = i + 1) begin
            for (j = 0; j < 14; j = j + 1) begin
                grid[i][j] <= 0; // 所有格子初始化为空
            end
        end
	end else if(state==IDLE) begin 
		case(tetromino_value)
			0:begin //2*2
				grid[position_value][y_highest]<='d1;
				grid[position_value][y_highest+'d1]<='d1;

				grid[position_value+'d1][y_highest]<='d1;
				grid[position_value+'d1][y_highest+'d1]<='d1;
			end
			1:begin 
				grid[position_value][y_highest]<='d1;
				grid[position_value][y_highest+'d1]<='d1;

				grid[position_value][y_highest+'d2]<='d1;
				grid[position_value][y_highest+'d3]<='d1;
			end
			2:begin 
				grid[position_value][y_highest]<='d1;
				grid[position_value+'d1][y_highest]<='d1;

				grid[position_value+'d2][y_highest]<='d1;
				grid[position_value+'d3][y_highest]<='d1;
			end
			3:begin
				if(y_high[position_value]>=(y_high[position_value+'d1]+'d2))begin
					grid[position_value][y_highest]<='d1;
					grid[position_value+'d1][y_highest]<='d1;

					grid[position_value+'d1][y_highest-'d1]<='d1;
					grid[position_value+'d1][y_highest-'d2]<='d1;
				end else begin
					grid[position_value][y_highest+'d2]<='d1;
					grid[position_value+'d1][y_highest]<='d1;

					grid[position_value+'d1][y_highest+'d1]<='d1;
					grid[position_value+'d1][y_highest+'d2]<='d1;
				end
			
			end
			4:begin 
				if(y_high[position_value]+'d1 >= (y_high[position_value + 'd1]) && 
				y_high[position_value]+'d1 >= (y_high[position_value + 'd2]))begin
					grid[position_value][y_highest]<='d1;
					grid[position_value][y_highest+'d1]<='d1;

					grid[position_value+'d1][y_highest+'d1]<='d1;
					grid[position_value+'d2][y_highest+'d1]<='d1;
				end else begin
					grid[position_value][y_highest]<='d1;
					grid[position_value+'d1][y_highest]<='d1;

					grid[position_value+'d2][y_highest]<='d1;
					grid[position_value][y_highest-'d1]<='d1;
				end
				//填值
			end
			5:begin 
				grid[position_value][y_highest]<='d1;
				grid[position_value+'d1][y_highest]<='d1;

				grid[position_value][y_highest+'d1]<='d1;
				grid[position_value][y_highest+'d2]<='d1;
				//填值
			end
			6:begin
				if(y_high[position_value]>=(y_high[position_value+'d1]+'d1))begin
					grid[position_value][y_highest]<='d1;
					grid[position_value][y_highest+'d1]<='d1;

					grid[position_value+'d1][y_highest]<='d1;
					grid[position_value+'d1][y_highest-'d1]<='d1;
				end else begin
					grid[position_value+'d1][y_highest]<='d1;
					grid[position_value][y_highest+'d1]<='d1;

					grid[position_value][y_highest+'d2]<='d1;
					grid[position_value+'d1][y_highest+'d1]<='d1;
				end
			end
			7:begin 
				if((y_high[position_value+'d2]) >= (y_high[position_value]+'d1) && 
				(y_high[position_value+'d2]) >= (y_high[position_value +'d1]+'d1))begin
					grid[position_value+'d2][y_highest]<='d1;
					grid[position_value+'d1][y_highest]<='d1;

					grid[position_value+'d1][y_highest-'d1]<='d1;
					grid[position_value][y_highest-'d1]<='d1;
					
				end else begin
					grid[position_value][y_highest]<='d1;
					grid[position_value+'d1][y_highest]<='d1;

					grid[position_value+'d1][y_highest+'d1]<='d1;
					grid[position_value+'d2][y_highest+'d1]<='d1;
				end
			end
		endcase
	end else if(state==OUT)begin
		if(score_1[0]) begin
			for (i = 0; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end
		end 
		else if(score_1[1]) begin
			for (i = 1; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[2]) begin
			for (i = 2; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[3]) begin
			for (i = 3; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[4]) begin
			for (i = 4; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[5]) begin
			for (i = 5; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[6]) begin
			for (i = 6; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[7]) begin
			for (i = 7; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[8]) begin
			for (i = 8; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[9]) begin
			for (i = 9; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end

		end 
		else if(score_1[10]) begin
			for (i = 10; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end
		end
		else if(score_1[11]) begin
			for (i = 11; i < 13; i = i + 1) begin
				grid[0][i] <= grid[0][i + 1];  
				grid[1][i] <= grid[1][i + 1];  
				grid[2][i] <= grid[2][i + 1];  
				grid[3][i] <= grid[3][i + 1];  
				grid[4][i] <= grid[4][i + 1];  
				grid[5][i] <= grid[5][i + 1];  
			end
		
		end else begin
			for (i = 0; i < 6; i = i + 1) begin
				for (j = 0; j < 14; j = j + 1) begin
					grid[i][j] <= grid[i][j]; 
				end
			end
		end
	end 
end


//算分消掉
always @(*) begin
	if(state==OUT)begin
		if (grid[0][0] && grid[1][0] && grid[2][0]  && grid[3][0]  && grid[4][0]  && grid[5][0] ) begin
			score_1[0] = 'd1;
		end else begin
			score_1[0] = 'd0;
		end

		if (grid[0][1] && grid[1][1] && grid[2][1]  && grid[3][1] && grid[4][1]  && grid[5][1] ) begin
			score_1[1] = 'd1;
		end else begin
			score_1[1] = 'd0;
		end

		if (grid[0][2]  && grid[1][2]&& grid[2][2]  && grid[3][2]  && grid[4][2]  && grid[5][2] ) begin
			score_1[2] = 'd1;
		end else 
			score_1[2] = 'd0;

		if (grid[0][3] && grid[1][3]  && grid[2][3] && grid[3][3] && grid[4][3]  && grid[5][3] ) begin
			score_1[3] = 'd1;
		end else
			score_1[3] = 'd0;

		if (grid[0][4] && grid[1][4]  && grid[2][4] && grid[3][4] && grid[4][4]  && grid[5][4] ) begin
			score_1[4] = 'd1;
		end else
			score_1[4] = 'd0;

		if (grid[0][5] && grid[1][5]  && grid[2][5] && grid[3][5] && grid[4][5]  && grid[5][5] ) begin
			score_1[5] = 'd1;
		end else
			score_1[5] = 'd0;

		if (grid[0][6] && grid[1][6]  && grid[2][6] && grid[3][6] && grid[4][6]  && grid[5][6] ) begin
			score_1[6] = 'd1;
		end else
			score_1[6] = 'd0;

		if (grid[0][7] && grid[1][7]  && grid[2][7] && grid[3][7] && grid[4][7]  && grid[5][7]) begin
			score_1[7] = 'd1;
		end else
			score_1[7] = 'd0;

		if (grid[0][8] && grid[1][8]  && grid[2][8] && grid[3][8]  && grid[4][8]  && grid[5][8]) begin
			score_1[8] = 'd1;
		end else
			score_1[8] = 'd0;

		if (grid[0][9]&& grid[1][9]  && grid[2][9] && grid[3][9]  && grid[4][9]  && grid[5][9]) begin
			score_1[9] = 'd1;
		end else
			score_1[9] = 'd0;

		if (grid[0][10] && grid[1][10]  && grid[2][10]  && grid[3][10]  && grid[4][10] && grid[5][10] ) begin
			score_1[10] = 'd1;
		end else
			score_1[10] = 'd0;

		if (grid[0][11] && grid[1][11]  && grid[2][11]  && grid[3][11]  && grid[4][11] && grid[5][11] ) begin
			score_1[11] = 'd1;
		end else
			score_1[11] = 'd0;

	end else begin
		for(i=0;i<=11;i=i+1)begin
			score_1[i] = 'd0;
		end
	end
end

always @(posedge clk) begin
	if(state==IDLE)begin
		count<='d0;
	end else if(state==OUT)begin
		if(score_tmp1==score_tmp)begin
			count<=score_tmp;
		end else begin
			if(count=='d0)
				count<='d0;
			else
				count<=count-'d1;
		end
	end 
end

//算分
always @(*) begin
	score_tmp=score_1[0]+
		  score_1[1]+
		  score_1[2]+
		  score_1[3]+
		  score_1[4]+
		  score_1[5]+
		  score_1[6]+
		  score_1[7]+
		  score_1[8]+
		  score_1[9]+
		  score_1[10]+
		  score_1[11];
end

always @(*) begin
	if(count=='d0)begin
		score_tmp1=score_tmp;
	end else
		score_tmp1='d0;
end


always @(posedge clk) begin
	if((in_cnt=='d15&&state==IDLE&&next_state==IDLE))begin
		score_store<=0;
	end else if(state==OUT)
		score_store<=score_tmp1+score_store;
end
//放到tetris
always@(*)begin
	if(tetris_valid=='d1)begin
		tetris[0]  = grid[0][0];
		tetris[1]  = grid[1][0];
		tetris[2]  = grid[2][0];
		tetris[3]  = grid[3][0];
		tetris[4]  = grid[4][0];
		tetris[5]  = grid[5][0];

		tetris[6]  = grid[0][1];
		tetris[7]  = grid[1][1];
		tetris[8]  = grid[2][1];
		tetris[9]  = grid[3][1];
		tetris[10] = grid[4][1];
		tetris[11] = grid[5][1];

		tetris[12] = grid[0][2];
		tetris[13] = grid[1][2];
		tetris[14] = grid[2][2];
		tetris[15] = grid[3][2];
		tetris[16] = grid[4][2];
		tetris[17] = grid[5][2];

		tetris[18] = grid[0][3];
		tetris[19] = grid[1][3];
		tetris[20] = grid[2][3];
		tetris[21] = grid[3][3];
		tetris[22] = grid[4][3];
		tetris[23] = grid[5][3];

		tetris[24] = grid[0][4];
		tetris[25] = grid[1][4];
		tetris[26] = grid[2][4];
		tetris[27] = grid[3][4];
		tetris[28] = grid[4][4];
		tetris[29] = grid[5][4];

		tetris[30] = grid[0][5];
		tetris[31] = grid[1][5];
		tetris[32] = grid[2][5];
		tetris[33] = grid[3][5];
		tetris[34] = grid[4][5];
		tetris[35] = grid[5][5];

		tetris[36] = grid[0][6];
		tetris[37] = grid[1][6];
		tetris[38] = grid[2][6];
		tetris[39] = grid[3][6];
		tetris[40] = grid[4][6];
		tetris[41] = grid[5][6];

		tetris[42] = grid[0][7];
		tetris[43] = grid[1][7];
		tetris[44] = grid[2][7];
		tetris[45] = grid[3][7];
		tetris[46] = grid[4][7];
		tetris[47] = grid[5][7];

		tetris[48] = grid[0][8];
		tetris[49] = grid[1][8];
		tetris[50] = grid[2][8];
		tetris[51] = grid[3][8];
		tetris[52] = grid[4][8];
		tetris[53] = grid[5][8];

		tetris[54] = grid[0][9];
		tetris[55] = grid[1][9];
		tetris[56] = grid[2][9];
		tetris[57] = grid[3][9];
		tetris[58] = grid[4][9];
		tetris[59] = grid[5][9];

		tetris[60] = grid[0][10];
		tetris[61] = grid[1][10];
		tetris[62] = grid[2][10];
		tetris[63] = grid[3][10];
		tetris[64] = grid[4][10];
		tetris[65] = grid[5][10];

		tetris[66] = grid[0][11];
		tetris[67] = grid[1][11];
		tetris[68] = grid[2][11];
		tetris[69] = grid[3][11];
		tetris[70] = grid[4][11];
		tetris[71] = grid[5][11];
	end else begin
		for(i=0;i<72;i=i+1)begin
			tetris[i]='d0;
		end
	end
end
//判斷fail
always @(*) begin
	if(state==OUT)begin
	// 	if((y_high[0]-score_tmp1>'d12)||(y_high[1]-score_tmp1>'d12)||(y_high[2]-score_tmp1>'d12)||(y_high[3]-score_tmp1>'d12)||(y_high[4]-score_tmp1>'d12)||(y_high[5]-score_tmp1>'d12))begin
	// 		fail_tmp='d1;
	// 	end else begin
	// 		fail_tmp='d0;
	// 	end

		if(score_tmp1=='d0)begin
			if(grid[0][12]||grid[1][12]||grid[2][12]||grid[3][12]||grid[4][12]||grid[5][12])
				fail_tmp='d1;
			else
				fail_tmp='d0;
		end else if(score_tmp1=='d1)begin
			if(grid[0][13]||grid[1][13]||grid[2][13]||grid[3][13]||grid[4][13]||grid[5][13])
				fail_tmp='d1;
			else
				fail_tmp='d0;
		end else if(score_tmp1=='d2)begin
			if(grid[0][14]||grid[1][14]||grid[2][14]||grid[3][14]||grid[4][14]||grid[5][14])
				fail_tmp='d1;
			else
				fail_tmp='d0;
		end else
			fail_tmp='d0;
	end else begin 
		fail_tmp='d0;
	end
end

always @(negedge rst_n or posedge clk) begin
	if(!rst_n)begin
		score_valid<='d0;
		tetris_valid<='d0;
		fail<='d0;
		score<='d0;
	end else if(state==OUT&&next_state==IDLE)begin
		score_valid<='d1;
		tetris_valid<='d1;
		fail<=fail_tmp;
		score<=score_store+score_tmp1;
	end else begin
		score_valid<='d0;
		tetris_valid<='d0;
		fail<='d0;
		score<='d0;
	end
end

endmodule