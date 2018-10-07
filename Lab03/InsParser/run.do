vlog tb.v InsParser.v 

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/instruction } \
{sim:/tb/opcode } \
{sim:/tb/funct7 } \
{sim:/tb/rd } \
{sim:/tb/rs1 } \
{sim:/tb/rs2 } \
{sim:/tb/funct3 } 

run 300ns