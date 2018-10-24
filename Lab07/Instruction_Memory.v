module Instruction_Memory
(
	input [63:0] Inst_Address,
	output reg [31:0] Instruction
);

	reg [7:0] Memory[15:0];
	
	initial
	begin
		Memory[0] =8'h10;
		Memory[1] =8'h32;
		Memory[2] =8'h54;
		Memory[3] =8'h76;
		Memory[4] =8'h98;
		Memory[5] =8'hBA;
		Memory[6] =8'hDC;
		Memory[7] =8'hFE;
		Memory[8] =8'h10;
		Memory[9] =8'h32;
		Memory[10]=8'h54;
		Memory[11]=8'h76;
		Memory[12]=8'h98;
		Memory[13]=8'hBA;
		Memory[14]=8'hDC;
		Memory[15]=8'hFE;
	end
	
	always@ *
	begin
	Instruction = {Memory[Inst_Address[3:0]+3], Memory[Inst_Address[3:0]+2], Memory[Inst_Address[3:0]+1], Memory[Inst_Address[3:0]]};
	end
endmodule