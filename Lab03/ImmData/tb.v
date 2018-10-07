module tb();

reg [31:0] instruction;
wire [63:0] immediate;

IDE i
(
	.instruction(instruction),
	.immediate(immediate)
);

	initial 
	begin
		instruction = 32'b01111111111100000000000000000000; //Load
		#100 instruction = 32'b01111110000000000000111110100000; //Store
		#100 instruction = 32'b10000000000000000000111101000000; //Branch
		#100 instruction = 32'b01111110000000000000000011100000; //Branch
	end

	initial
	begin
	$monitor ("Output = %b", immediate);
	end

endmodule
