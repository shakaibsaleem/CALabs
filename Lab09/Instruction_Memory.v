module Instruction_Memory
(
	input [63:0] Inst_Address,
	output reg [31:0] Instruction
);

	reg [7:0] Memory[15:0];
	
	initial
	begin
		Memory[0] =8'b10000011;
		Memory[1] =8'b00110100;
		Memory[2] =8'b10000101;
		Memory[3] =8'b00000010;
		Memory[4] =8'b10110011;
		Memory[5] =8'b10000100;
		Memory[6] =8'b10011010;
		Memory[7] =8'b00000000;
		Memory[8] =8'b10010011;
		Memory[9] =8'b10000100;
		Memory[10]=8'b00010100;
		Memory[11]=8'b00000000;
		Memory[12]=8'b00100011;
		Memory[13]=8'b00110100;
		Memory[14]=8'b10010101;
		Memory[15]=8'b00000010;
	end
	
	always@ *
	begin
	Instruction = {Memory[Inst_Address+3], Memory[Inst_Address+2], Memory[Inst_Address+1], Memory[Inst_Address]};
	end
endmodule