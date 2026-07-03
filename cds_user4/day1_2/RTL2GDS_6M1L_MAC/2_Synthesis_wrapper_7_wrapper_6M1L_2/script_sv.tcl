#set_attribute init_lib_search_path /home/priyank/Desktop/ECG_Chip2/lib
set_attribute init_hdl_search_path ../rtl_7

set_attribute library {/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/liberty/tsl18cio150_max.lib /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/liberty/lib_flow_ff/tsl18fs120_scl_ff.lib /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/liberty/tsl18cio150_min.lib}
set_attribute information_level 7 /

read_hdl {top_wrapper.v mac.v}

elaborate mac_4x4_wrapper_chip

read_sdc ../constraints/constraints_top_2.sdc

syn_generic
set_attribute syn_map_effort medium 
syn_map
set_attribute syn_opt_effort medium
syn_opt

write_hdl > top_streamed_wrapper_chip_netlist.v
write_sdc > top_streamed_wrapper_chip_sdc.sdc
write_sdf -nonegchecks -edges check_edge -timescale ns -recrem split > delays.sdf
#write_scandef > test_top_chip_scanDEF.scandef
#write_do_lec -golden_design test_top_chip_intermediate.v -revised_design ecg_rpeak_top_chip_wrapper_m.v -logfile  intermediate2final.lec.log intermediate2final.lec.do

##write_do_lec -golden_design fv_map -revised_design ${_OUTPUTS_PATH}/${DESIGN}_incremental.v -logfile  ${_LOG_PATH}/intermediate2final.lec.log > ${_OUTPUTS_PATH}/intermediate2final.lec.do

report gates >> gates.rpt
report qor >> qor.rpt
report area >> area.rpt
report timing >> timing.rpt
report power >> power.rpt
puts "============================"
puts "Synthesis Finished ........."
puts "============================"
