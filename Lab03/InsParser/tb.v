module tb
(

);
    reg [31:0] instruction;
    wire [6:0] opcode,
    wire [4:0] rd,
    wire [2:0] funct3,
    wire [4:0] rs1,
    wire [4:0] rs2,
    wire [6:0] funct7,

    InsParser i1
    (
        .instruction(instruction),
        .opcode(opcode),
        .rd(rd),
        .funct3(funct3),
        .rs1(rs1),
        .rs2(rs2),
        .funct7(funct7),
    );

    initial
    begin
        a = 64'b0; 
        b = 64'b0;
        sel= 1'b0;
    end
    
    always
    begin
        #5 sel= ~sel;
        #10 a = ~a;
        #20 b = ~b;
    end

    initial
    $monitor("a = ", $a,", b = ",$b,", sel = ",$sel,", out = ", $data_out);
endmodule
