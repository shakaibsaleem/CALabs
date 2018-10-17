module Data_Memory
(
	input [1:0] size,
	input [63:0] Inst_Address,
	output reg [63:0] Instruction
);

	reg [7:0] Memory[15:0];
	
	initial
	begin
		Memory[0] =10000011;
		Memory[1] =00110100;
		Memory[2] =00000101;
		Memory[3] =00001111;
		Memory[4] =10110011;
		Memory[5] =10000100;
		Memory[6] =10011010;
		Memory[7] =00000000;
		Memory[8] =10010011;
		Memory[9] =10000100;
		Memory[10]=00010100;
		Memory[11]=00000000;
		Memory[12]=00100011;
		Memory[13]=00111000;
		Memory[14]=10010101;
		Memory[15]=00001110;
	end
	
	always@ *
	begin
	Instruction = Memory[Inst_Address] + Memory[Inst_Address+1] + Memory[Inst_Address+2] + Memory[Inst_Address+3];
	end
endmodule