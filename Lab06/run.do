vlog ALU_1_bit.v mux.v mux2.v tb.v
vsim -novopt work.tb
view wave
add wave \
{sim:/tb/a } \
{sim:/tb/b } \
{sim:/tb/CarryIn } \
{sim:/tb/ALUOp } \
{sim:/tb/Result } \
{sim:/tb/CarryOut }
run 200ns