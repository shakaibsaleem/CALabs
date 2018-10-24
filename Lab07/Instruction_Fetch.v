module Instruction_Fetch
(
input clk,
input reset,
output [31:0] Instruction
);

	wire [63:0] o, p;

	Program_Counter PC
	(
		.clk(clk),
		.reset(reset),
		.PC_In(o),
		.PC_Out(p)
	);
	
	Adder add
	(
		.a(p),
		.b(64'd4),
		.out(o)
	);
	
	Instruction_Memory IM
	(
		.Inst_Address(p),
		.Instruction(Instruction)
	);
endmodule