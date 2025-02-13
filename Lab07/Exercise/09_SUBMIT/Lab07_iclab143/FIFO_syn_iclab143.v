module FIFO_syn #(parameter WIDTH=8, parameter WORDS=64) (
    wclk,
    rclk,
    rst_n,
    winc,
    wdata,
    wfull,
    rinc,
    rdata,
    rempty,

    flag_fifo_to_clk2,
    flag_clk2_to_fifo,

    flag_fifo_to_clk1,
	flag_clk1_to_fifo
);

input wclk, rclk;
input rst_n;
input winc;
input [WIDTH-1:0] wdata;
output reg wfull;
input rinc;
output reg [WIDTH-1:0] rdata;
output reg rempty;

parameter N = $clog2(WORDS);
// You can change the input / output of the custom flag ports
output reg flag_fifo_to_clk2;
input flag_clk2_to_fifo;

output reg flag_fifo_to_clk1;
input flag_clk1_to_fifo;

wire [WIDTH-1:0] rdata_r;

// Remember: 
//   wptr and rptr should be gray coded
//   Don't modify the signal name
reg [$clog2(WORDS):0] wptr,rq2_wptr;
reg [$clog2(WORDS):0] rptr,wq2_rptr;

reg [3:0]count;
//---------------------------------------------------------------------
//   Read Data Register
//---------------------------------------------------------------------
always @(posedge rclk or negedge rst_n) begin
    if (!rst_n) 
        rdata <= 0;
    else if (rinc & !rempty) 
        rdata <= rdata_r;
end

//---------------------------------------------------------------------
//   Intermediate Variables and Parameters
//---------------------------------------------------------------------
integer i;
reg [N+1:0] w_addr;          // Write address
reg [N+1:0] r_addr;          // Read address
reg [N:0]   rq2_wptr_bin;    // Binary form of the synchronized write pointer
reg [2:0]   wflag_cnt;       // Write flag counter
reg [2:0]   rflag_cnt;       // Read flag counter

//---------------------------------------------------------------------
//   Synchronization Modules
//---------------------------------------------------------------------
NDFF_BUS_syn #(N+1) sync_r2w (.D(rptr), .Q(wq2_rptr), .clk(wclk), .rst_n(rst_n));
NDFF_BUS_syn #(N+1) sync_w2r (.D(wptr), .Q(rq2_wptr), .clk(rclk), .rst_n(rst_n));

//-------------------------------------- flag_fifo_to_clk2 ------------------------------------//
// Control the flag for clk2 module to indicate if FIFO can accept new data
always @(posedge wclk or negedge rst_n) begin
    if (!rst_n)
        wflag_cnt <= 0;
    else begin
        if (!wfull && !winc)
            wflag_cnt <= wflag_cnt + 1;
        else
            wflag_cnt <= 0;
    end
end

always @(*) begin
    if(wfull)
        flag_fifo_to_clk2 = 0;
    else if(wptr == wq2_rptr && w_addr != 0)
        flag_fifo_to_clk2 = 1;
    // else if(w_addr[6:0] == 64)
    //     flag_fifo_to_clk2 = 0;
    else if(wflag_cnt == 1 || wflag_cnt == 2) // after two cycle, address in NDFF will be static
        flag_fifo_to_clk2 = 1;
    else       
        flag_fifo_to_clk2 = 0;
end
// -------------------------------------- flag_fifo_to_clk1 ----------------------------------- //
// convert gray code to binary
always @(*) begin
	rq2_wptr_bin[N]	= rq2_wptr[N];		
	for(i=N-1;i>=0;i=i-1) 
		rq2_wptr_bin[i] = rq2_wptr_bin[i+1] ^ rq2_wptr[i];
end

always @(posedge rclk or negedge rst_n) begin
    if (!rst_n)
        rflag_cnt <= 0;
    else begin
        if (!rempty && !rinc)
            rflag_cnt <= rflag_cnt + 1;
        else
            rflag_cnt <= 0;
    end
end

always @(*) begin
    if(rempty)
        flag_fifo_to_clk1 = 0;
    else if(rflag_cnt == 1 || rflag_cnt == 2) // after two cycle, address in NDFF will be static
        flag_fifo_to_clk1 = 1;
    else       
        flag_fifo_to_clk1 = 0;
end

// ---------------------------------------- empty & full -------------------------------------- //
always @(posedge rclk or negedge rst_n)begin
    if (!rst_n)
        rempty <= 1;
    else begin
        if (rptr == rq2_wptr)
            rempty <= 1;
        else
            rempty <= 0;
    end
end

always @(posedge wclk or negedge rst_n) begin
    if (!rst_n)
        wfull <= 0;
    else begin
        if (wptr == {~wq2_rptr[N:N-1], wq2_rptr[N-2:0]}) // when full, highest two bits will invert to wptr
            wfull <= 1;
        else
            wfull <= 0;
    end
end

// --------------------------------------- SRAM's address ------------------------------------- //
always @(posedge wclk or negedge rst_n) begin
    if (!rst_n)
        w_addr <= 0;
    else begin
        if (!wfull && winc)
            w_addr <= w_addr + 1;
        else
            w_addr <= w_addr;
    end
end

always @(posedge rclk or negedge rst_n) begin
    if (!rst_n)
        r_addr <= 0;
    else begin
        if (!rempty && rinc)
            r_addr <= r_addr + 1;
        else
            r_addr <= r_addr;
    end
end

// address in gray code
always @(*) begin
    wptr = (w_addr[N:0] >> 1) ^ w_addr[N:0];
    rptr = (r_addr[N:0] >> 1) ^ r_addr[N:0];
end


//--------------------------------------- Dual-Port SRAM --------------------------------------//
// Dual-port SRAM instance for writing and reading
wire WEAN = ~(winc && !wfull);

DUAL_64X8X1BM1 u_dual_sram (
    .CKA(wclk),
    .CKB(rclk),
    .WEAN(WEAN),
    .WEBN(1'b1),
    .CSA(1'b1),
    .CSB(1'b1),
    .OEA(1'b1),
    .OEB(1'b1),
    .A0(w_addr[0]),
    .A1(w_addr[1]),
    .A2(w_addr[2]),
    .A3(w_addr[3]),
    .A4(w_addr[4]),
    .A5(w_addr[5]),
    .B0(r_addr[0]),
    .B1(r_addr[1]),
    .B2(r_addr[2]),
    .B3(r_addr[3]),
    .B4(r_addr[4]),
    .B5(r_addr[5]),
    .DIA0(wdata[0]),
    .DIA1(wdata[1]),
    .DIA2(wdata[2]),
    .DIA3(wdata[3]),
    .DIA4(wdata[4]),
    .DIA5(wdata[5]),
    .DIA6(wdata[6]),
    .DIA7(wdata[7]),
    .DIB0(1'b0),
    .DIB1(1'b0),
    .DIB2(1'b0),
    .DIB3(1'b0),
    .DIB4(1'b0),
    .DIB5(1'b0),
    .DIB6(1'b0),
    .DIB7(1'b0),
    .DOB0(rdata_r[0]),
    .DOB1(rdata_r[1]),
    .DOB2(rdata_r[2]),
    .DOB3(rdata_r[3]),
    .DOB4(rdata_r[4]),
    .DOB5(rdata_r[5]),
    .DOB6(rdata_r[6]),
    .DOB7(rdata_r[7])
);

endmodule
