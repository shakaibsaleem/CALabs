module tb
();

reg [6:0] Opcode;
reg [3:0] Funct;
wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
wire [3:0] Operation;

top_control TC
(
	.Opcode(Opcode),
	.Funct(Funct),
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.MemWrite(MemWrite),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite),
	.Operation(Operation)
);

initial
	begin
		#10 Opcode = 7'b0000000; Funct = 4'b0000;

		//I-Type
		//ALUOp = 00, Operation should be = 0010
		#10 Opcode = 7'b0000011; Funct = 4'b0000;
		#10 Funct = 4'b1111;

		//SB-Type
		//ALUOp = 01, Operation should be = 0110
		#10 Opcode = 7'b1100011; Funct = 4'b0000;
		#10 Funct = 4'b1111;

		//R-Type
		//ALUOp = 10
		#10 Opcode = 7'b0110011;

		//Funct = 0000, Operation should be = 0010
		Funct = 4'b0000;

		//Funct = 1000, Operation should be = 0110
		#10 Funct = 4'b1000;
		

		//Funct = 0111, Operation should be = 0000
		#10 Funct = 4'b0111;

	end

initial
$monitor ("Opcode = %d, Funct = %d, Operation = %d", Opcode, Funct, Operation);

endmodule