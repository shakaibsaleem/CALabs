module tb
(

);

reg [63:0] WriteData,
reg [4:0] RS1,
reg [4:0] RS2,
reg [4:0] RD,
reg 		RegWrite,
reg 		clk,
reg 		reset,

Registers r
(
	.WriteData(WriteData),
	.RS1(RS1),
	.RS2(RS2),
	.RD(RD),
	.RegWrite(RegWrite),
	.clk(clk),
	.reset(reset)
);

initial
begin
	WriteData = 64'b0;
end

always
begin
	