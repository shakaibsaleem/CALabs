module tb
(
);

reg a, b, CarryIn;
reg [3:0] ALUOp;
wire Result, CarryOut;

ALU_1_bit alu
(
	.a(a),.b(b),.CarryIn(CarryIn),.Result(Result),.CarryOut(CarryOut),.ALUOp(ALUOp)
);

initial
begin
a <= 1'b0;
b <= 1'b1;
CarryIn <= 1'b1;
ALUOp <= 4'b0;
end

always
begin
#10 ALUOp = ALUOp + 1;
end

initial
$monitor ("ALUOp = %d Result = %d CarryOut = %d", ALUOp, Result, CarryOut);

endmodule