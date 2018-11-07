module tb
(
);

reg [1:0] ALUOp;
reg [3:0] Funct;
wire [3:0] Operation;


ALU_Control AC
(
	.ALUOp(ALUOp),
	.Funct(Funct),
	.Operation(Operation)
);

initial
	begin
		#10 ALUOp = 2'b00;
		Funct=4'b1000;
		#10 ALUOp = 2'b00;
		Funct=4'b1011;
		#10 ALUOp = 2'b01;
		Funct=4'b0010;
		#10 ALUOp = 2'b01;
		Funct=4'b1011;
		#10 ALUOp = 2'b10;
		Funct=4'b0000;
		#10 ALUOp = 2'b10;
		Funct=4'b1000;
		#10 ALUOp = 2'b10;
		Funct=4'b0111;
		#10 ALUOp = 2'b10;
		Funct=4'b0110;
	end

initial
$monitor ("ALUOp = %d", ALUOp);

endmodule