module Control_Unit
(
input [6:0] Opcode,
output reg Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,
output reg [1:0] ALUOp
);

always @ *
	begin
		if (Opcode[6:4]==3'b011)
		begin
			ALUSrc=0;
			MemtoReg=0;
			RegWrite=1;
			MemRead=0;
			MemWrite=0;
			Branch=0;
			ALUOp [1:0]= 2'b10;
		end
		if (Opcode[6:4]==3'b000)
		begin
			ALUSrc=1;
			MemtoReg=1;
			RegWrite=1;
			MemRead=1;
			MemWrite=0;
			Branch=0;
			ALUOp [1:0]= 2'b00;
		end
		if (Opcode[6:4]==3'b010)
		begin
			ALUSrc=1;
			MemtoReg=0;
			RegWrite=0;
			MemRead=0;
			MemWrite=1;
			Branch=0;
			ALUOp [1:0]= 2'b00;
		end
		if (Opcode[6:4]==3'b110)
		begin
			ALUSrc=0;
			MemtoReg=0;
			RegWrite=0;
			MemRead=0;
			MemWrite=0;
			Branch=1;
			ALUOp [1:0]= 2'b01;
		end
	end
endmodule
	
