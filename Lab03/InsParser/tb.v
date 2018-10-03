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
        instruction = 64'b0;
    end

    always
    begin
        #5 instruction = 0000000000000000000000000000000000000000000000000000000001111111;
        #10 instruction = 0000000000000000000000000000000000000000000000000000111110000000;
        #15 instruction = 0000000000000000000000000000000000000000000000000111000000000000;
        #20 instruction = 0000000000000000000000000000000000000000000011111000000000000000;
        #25 instruction = 0000000000000000000000000000000000000001111100000000000000000000;
        #30 instruction = 0000000000000000000000000000000011111110000000000000000000000000;
        #35 instruction = 1111111111111111111111111111111100000000000000000000000000000000;
    end

    initial
    $monitor("instruction = ", $instruction,", opcode = ",$opcode,", rd = ",$rd,", funct3 = ", $funct3,", rs1 = ",$rs1,", rs2 = ",$rs2,", funct7 = ",$funct7);
endmodule
