module tb
();

reg [6:0] Opcode;
wire Branch, MemRead, MemtoReg;
wire [1:0] ALUOp;
wire MemWrite, ALUSrc, RegWrite;

Control_Unit CU
(
	.Opcode(Opcode),
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.ALUOp(ALUOp),
	.MemWrite(MemWrite),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite)
);

initial
	begin
		#10 Opcode = 7'b0000000;
		#10 Opcode = 7'b0110011;
		#10 Opcode = 7'b0000011;
		#10 Opcode = 7'b0100011;
		#10 Opcode = 7'b1100011;
		#10 Opcode = 7'b0000000;
	end

initial
$monitor ("Opcode = %d", Opcode);

endmodule