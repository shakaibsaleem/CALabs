vlog tb.v IDE.v 

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/instruction } \
{sim:/tb/immediate } \

run 800ns
