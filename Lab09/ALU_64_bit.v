module ALU_64_bit
(
	input [63:0]a, [63:0]b,
	input [3:0] ALUOp,
	output reg [63:0] Result,
	output reg ZERO
);

wire mux1out, mux2out;
wire abar, bbar;


assign abar = ~a;
assign bbar = ~b;
assign mux1out = (ALUOp[3])? abar:a;
assign mux2out = (ALUOp[2])? bbar:b;

always @ *
	begin
		case(Result)
		64'd0: ZERO = 1;
		default: ZERO = 0;
		endcase
		case(ALUOp[1:0])
			2'b00: Result =  mux1out && mux2out;
			2'b01: Result =  mux1out || mux2out;
			2'b10: Result =   mux1out + mux2out;
			default: Result = mux1out + mux2out;
		endcase
	end
endmodule