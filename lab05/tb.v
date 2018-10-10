module tb
(
);

reg a, b, CarryIn;
reg [3:0] ALUOp;
wire Result, CarryOut;

ALU_1_bit alu (.a(a),.b(b),.CarryIn(CarryIn),.Result(Result),.CarryOut(CarryOut),.ALUOp(ALUOp) );

initial
begin
a <= 1'b0;
b <= 1'b1;
CarryIn <= 1'b1;
ALUOp <= 4'b0;

#10 ALUOp = 4'b0000;
#10 ALUOp = 4'b0001;
#10 ALUOp = 4'b0010;
#10 ALUOp = 4'b0110;
#10 ALUOp = 4'b1100;

#10 a <= 1'b1;
#10 b <= 1'b0;
#10 CarryIn <= 1'b1;

#10 ALUOp = 4'b0000;
#10 ALUOp = 4'b0001;
#10 ALUOp = 4'b0010;
#10 ALUOp = 4'b0110;
#10 ALUOp = 4'b1100;

end

initial
$monitor ("ALUOp = %d Result = %d CarryOut = %d", ALUOp, Result, CarryOut);

endmodule