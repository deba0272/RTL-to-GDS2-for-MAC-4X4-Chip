read_libs ../LIB_File/SVNIT_SCL180_tt_ccs.lib

read_hdl {../rtl/muxdelay.v ../rtl/MUX2X1.v}


elaborate  muxdelay
syn_generic
syn_map
syn_opt

write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > delays.sdf

report timing > muxdelay_timing.txt 
report area > muxdelay_cell.txt 

report power > muxdelay_power.txt
report gates > muxdelay_gates.txt

write_hdl > muxdelay_netlist.v 
write_sdc > muxdelay_const.sdc 
gui_show
