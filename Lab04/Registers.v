module Registers

(
	input [63:0] WriteData,
	input [4:0] RS1,
	input [4:0] RS2,
	input [4:0] RD,
	input 		RegWrite,
	input 		clk,
	input 		reset,
	output reg [63:0] ReadData1,
	output reg [63:0] ReadData2
);

reg [63:0] Register [31:0];

always @ (posedge reset or negedge clk)
	begin
		ReadData1 <= Register [RS1];
		ReadData2 <= Register [RS2];
		if (RegWrite)
			Register [RD] <= WriteData;
		if (reset)
			Register [0] <= 64'd0;
			Register [1] <= 64'd0;
			Register [2] <= 64'd0;
			Register [3] <= 64'd0;
			Register [4] <= 64'd0;
			Register [5] <= 64'd0;
			Register [6] <= 64'd0;
			Register [7] <= 64'd0;
			Register [8] <= 64'd0;
			Register [9] <= 64'd0;
			Register [10] <= 64'd0;
			Register [11] <= 64'd0;
			Register [12] <= 64'd0;
			Register [13] <= 64'd0;
			Register [14] <= 64'd0;
			Register [15] <= 64'd0;
			Register [16] <= 64'd0;
			Register [17] <= 64'd0;
			Register [18] <= 64'd0;
			Register [19] <= 64'd0;
			Register [20] <= 64'd0;
			Register [21] <= 64'd0;
			Register [22] <= 64'd0;
			Register [23] <= 64'd0;
			Register [24] <= 64'd0;
			Register [25] <= 64'd0;
			Register [26] <= 64'd0;
			Register [27] <= 64'd0;
			Register [28] <= 64'd0;
			Register [29] <= 64'd0;
			Register [30] <= 64'd0;
			Register [31] <= 64'd0;
	end

endmodule
