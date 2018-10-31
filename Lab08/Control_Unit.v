module Control_Unit
{
input [6:0] Opcode,
output Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,
output [1:0] ALUOp
};

always @ *
	begin
		if (~Opcode[6] and Opcode[5] and Opcode[4])
			ALUSrc=0;
			MemtoReg=0;
			RegWrite=1;
			MemRead=0;
			MemWrite=0;
			Branch=0;
			ALUOp [1:0]= 2b'2;
		if (~Opcode[6] and ~Opcode[5] and ~Opcode[4])
			ALUSrc=1;
			MemtoReg=1;
			RegWrite=1;
			MemRead=1;
			MemWrite=0;
			Branch=0;
			ALUOp [1:0]= 2b'0;
		if (~Opcode[6] and Opcode[5] and ~Opcode[4])
			ALUSrc=1;
			MemtoReg=0;
			RegWrite=0;
			MemRead=0;
			MemWrite=1;
			Branch=0;
			ALUOp [1:0]= 2b'0;
		if (Opcode[6] and Opcode[5] and ~Opcode[4])
			ALUSrc=0;
			MemtoReg=0;
			RegWrite=0;
			MemRead=0;
			MemWrite=0;
			Branch=1;
			ALUOp [1:0]= 2b'1;
	end
endmodule
	
