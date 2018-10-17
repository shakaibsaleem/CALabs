module tb
(
);

reg [63:0] Inst_Address;
wire [31:0] Instruction;

Instruction_Memory i (.Inst_Address(Inst_Address),
					.Instruction(Instruction) );

initial
begin
	Inst_Address <= 64'b0;

	#10 Inst_Address = Inst_Address + 1;
	#10 Inst_Address = Inst_Address + 1;
	#10 Inst_Address = Inst_Address + 1;
	#10 Inst_Address = Inst_Address + 1;
	#10 Inst_Address = Inst_Address + 1;
	#10 Inst_Address = Inst_Address + 1;
	#10 Inst_Address = Inst_Address + 1;
	#10 Inst_Address = Inst_Address + 1;
end

initial
$monitor ("Addr = %d Ins = %d", Inst_Address, Instruction);

endmodule