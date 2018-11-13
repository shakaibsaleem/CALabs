module tb();

reg [31:0] instruction;
wire [63:0] imm_data;

Immediate_Data_Extractor i
(
	.instruction(instruction),
	.imm_data(imm_data)
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
	$monitor ("Output = %b", imm_data);
	end

endmodule
