module InsParser

(
input [31:0] instruction,
output reg [6:0] opcode,
output reg [4:0] rd,
output reg [2:0] funct3,
output reg [4:0] rs1,
output reg [4:0] rs2,
output reg [6:0] funct7,
);
always
	begin
		opcode <= [6:0] instruction;
		rd <= [11:7] instruction;
		funct3 <= [14:12] instruction;
		rs1 <= [19:15] instruction;
		rs2 <= [24:20] instruction;
		funct7 <= [31:25] instruction;
	end


endmodule
