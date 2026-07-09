####IMPORTING DESIGN 
## 
set design_mode 180 
set init_design_netlisttype {Verilog} 
set init_verilog ./muxdelay_netlist.v 
set init_top_cell muxdelay 
set init_lef_file {../../LEF_File/logicCells_tech.lef /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/lef/tsl180l6.lef} 
##set init_io_file ./final.io 
set init_mmmc_file ./Default.view
set init_gnd_net {VSS_CORE VSSO_CORE} 
set init_pwr_net {VDD_CORE VDDO_CORE} 
set floorplan_default_site core 
save_global Default.globals 
##Specifies changes in the handling of different ERROR or WARN messages, ##-no_limit removes any limit on the Error and warning messages in log file. 
set_message -no_limit 
#
setDesignMode -process $design_mode

init_design

add_tracks -honor_pitch

checkUnique -verbose
check_timing -verbose
checkDesign -all > ./Import_Design/${init_top_cell}_design.rpt

reportGateCount -hinst ${init_top_cell} -level 10 -outfile ./Import_Design/${init_top_cell}_gatecount.rpt

reportNetStat > ./Import_Design/${init_top_cell}_netcount.rpt

saveDesign ./Import_Design/${init_top_cell}_importdesign.enc


