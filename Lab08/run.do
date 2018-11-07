vlog ALU_Control.v Control_Unit.v top_control.v tb.v
vsim -novopt work.tb
view wave
add wave \
{sim:/tb/Opcode } \
{sim:/tb/Funct } \
{sim:/tb/Operation }
run 100ns