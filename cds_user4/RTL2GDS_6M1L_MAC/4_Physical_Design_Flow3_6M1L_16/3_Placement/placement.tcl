set PROCESS 180;

set EFFORT_LEVEL standard;

setDesignMode \
	-process $PROCESS \
	-flowEffort $EFFORT_LEVEL 

set MIN_LAYER 1;
set MAX_LAYER 6;

setRouteMode \
	-earlyGlobalMinRouteLayer $MIN_LAYER \
	-earlyGlobalMaxRouteLayer $MAX_LAYER \
	-earlyGlobalEffortLevel $EFFORT_LEVEL


### for without scan chain
setPlaceMode -place_design_floorplan_mode false -place_design_refine_place true -place_global_cong_effort high -place_global_max_density 0.65 -place_global_place_io_pins false -place_global_clock_gate_aware false -place_global_reorder_scan false


### for wth scan chain
#setPlaceMode -place_design_floorplan_mode false -place_design_refine_place true -place_global_cong_effort high -place_global_max_density 0.75 -place_global_place_io_pins false -place_global_clock_gate_aware false -place_global_reorder_scan true

#defIn ecg_rpeak_top_chip_wrapper_scanDEF.scandef
#setPlaceMode -place_design_floorplan_mode false -place_design_refine_place true -place_global_cong_effort high -place_global_max_density 0.70 -place_global_place_io_pins false -place_global_clock_gate_aware false -place_global_reorder_scan true

setOptMode -fixFanoutLoad true -reclaimArea true -simplifyNetlist true -setupTargetSlack 0.2 

## Placement in Florplan view Nano/Global Placement -> FLOORPLAN_MODE will be 'true' 

placeDesign -noPrePlaceOpt

setPlaceMode -place_design_floorplan_mode false -congEffort high

place_opt_design

###placeDesign -incremental

checkPlace > ./Placement/${init_top_cell}_place_summary.rpt


set GRID_ROW 20

set CELL_DNSTY_THRSLD 0.8;

set CELL_PIN_THRSLD 0.50;

set MAP_DISPLAY_STEP 0.1;

setDensityMapMode \
	-gridInRow $GRID_ROW \
	-threshold $CELL_DNSTY_THRSLD \
	-displayStep $MAP_DISPLAY_STEP
	
reportDensityMap > ./Placement/${init_top_cell}_cellDensity.rpt

setPinDensityMapMode \
	-gridInRow $GRID_ROW \
	-threshold $CELL_PIN_THRSLD \
	-displayStep $MAP_DISPLAY_STEP

reportPinDensityMap > ./Placement/${init_top_cell}_pinDensity.rpt

reportCongestion -overflow -hotSpot > ./Placement/${init_top_cell}_congestion.rpt

source ./placement_sta.tcl

saveDesign ./Placement/${init_top_cell}_place_timing.enc

checkPlace > ./Placement/${init_top_cell}_placeOpt_summary.rpt 
timeDesign -preCTS -expandedViews > ./Placement/${init_top_cell}_timing_preCTS.rpt 
saveNetlist ./Placement/${init_top_cell}_preCTS.v 
saveNetlist -includePowerGround ./Placement/${init_top_cell}_preCTS_withPG.v 
write_sdc ./Placement/${init_top_cell}_preCTS.sdc 
saveDesign ./Placement/${init_top_cell}_place.enc











