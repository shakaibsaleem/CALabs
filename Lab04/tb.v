module tb ( );

reg [63:0] WriteData;
reg [4:0] RS1;
reg [4:0] RS2;
reg [4:0] RD;
reg 		RegWrite;
reg 		clk;
reg 		reset;
wire [63:0] ReadData1;
wire [63:0] ReadData2;
	
Registers r
(
	.WriteData(WriteData),
	.RS1(RS1),
	.RS2(RS2),
	.RD(RD),
	.RegWrite(RegWrite),
	.clk(clk),
	.reset(reset),
	.ReadData1(ReadData1),
	.ReadData2(ReadData2)
);

	initial
	clk=1'b0;
	
	always
	#10 clk=~clk;
	
	initial
	begin
		reset=1'b1;
		#15 reset=1'b0;
		#180 reset=1'b1;
		RS1=5'b00010;
		RS2=5'b00100;
		WriteData = 64'h0F0F0F0F0F0F0F0F;
		RegWrite=1'b1;
	end
	
	initial
	$monitor("Time = ",$time, "---> read1 = %d	read2 = %d	RegWrite = %d",ReadData1,ReadData2,RegWrite);

endmodule