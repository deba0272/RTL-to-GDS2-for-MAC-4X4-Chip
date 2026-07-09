set MAX_SKEW false;
set MAX_DELAY 1;
set MIN_DELAY 0;
set BOUNDARY false;
set ECO_ROUTE true;
set MACRO_ONLY false;
set delay_PreCTS false;

set CELLS_NAME {dl03d2 buffd1 bufbd2 buffd7 dl01d1 bufbd1 bufbd3 dl01d2 bufbd4 dl02d4 dl04d4 buffd4 bufbdk bufbda buffd3 dl01d4 dl02d1 dl04d2 dl03d4 dl02d2 buffda 
bufbdf dl03d1 buffd2 bufbd7 dl04d1 inv0d4 invbdf invbd7 inv0d0 invbd2 invbd4 inv0d7 inv0d1 invbdk inv0da invbda inv0d2};

#setUsefulSkewMode \ 
#	-maxSkew $MAX_SKEW \ 
#	-noBoundary $BOUNDARY \
#	-useCells $CELLS_NAME \ 
#	-maxAllowedDelay $MAX_DELAY \ 
#	-ecoRoute $ECO_ROUTE \
#	-macroonly $MACRO_ONLY

setUsefulSkewMode -delayPreCTS $delay_PreCTS -macroOnly $MACRO_ONLY -maxAllowedDelay $MAX_DELAY -minAllowedDelay $MIN_DELAY -noBoundary $BOUNDARY

set OPT_EFFORT high;
set PIN_SWAPING true; 
set RESTRUCTURING true; 
set DOWNSIZING true; 
set DELETE_INST true; 
set POWER_EFFORT NONE;

set POWER_RATIO 1; 
set RECLAIM_AREA true;
set SIMPLIFY_NETLIST true;

set SETUP_SLACK 0.2;
set HOLD_SLACK 0.2;

set MAX_AREA_DENSITY 0.95;

set DRV_MARGIN 0.1;
set USEFUL_SKEW true;

set USEFUL_SKEW_preCTS true;
set USEFUL_SKEW_postRoute true;

#setOptMode \ 
#	-effort $OPT_EFFORT \ 
#	-powercreate_library_setEffort $POWER_EFFORT \ 
#	-leakageToDynamicRatio $POWER_RATIO \ 
#	-reclaimArea $RECLAIM_AREA \ 
#	-simplifyNetlist $SIMPLIFY_NETLIST \ 
#	-swapPin $PIN_SWAPING 
#	-restruct $RESTRUCTURING \ 
#	-deleteInst $DELETE_INST \ 
#	-downsizeInst $DOWNSIZING 
#	-setupTargetSlack $SETUP_SLACK \ 
#	-holdTargetSlack $HOLD_SLACK \ 
#	-maxDensity $MAX_AREA_DENSITY \ 
#	-drcMargin $DRV_MARGIN \ 
#	-usefulSkew $USEFUL_SKEW \ 
#	-usefulSkewPreCTS $USEFUL_SKEW_preCTS \ 
#	-usefulSkewPostRoute $USEFUL_SKEW_postRoute 

setOptMode -powerEffort $POWER_EFFORT -leakageToDynamicRatio $POWER_RATIO -reclaimArea $RECLAIM_AREA -simplifyNetlist $SIMPLIFY_NETLIST -swapPin $PIN_SWAPING -restruct $RESTRUCTURING -deleteInst $DELETE_INST -downsizeInst $DOWNSIZING -setupTargetSlack $SETUP_SLACK -holdTargetSlack $HOLD_SLACK -maxDensity $MAX_AREA_DENSITY -drcMargin $DRV_MARGIN -usefulSkew $USEFUL_SKEW -usefulSkewPreCTS $USEFUL_SKEW_preCTS -usefulSkewPostRoute $USEFUL_SKEW_postRoute 
## 
## SETUP OPTIMIZATION 
set timing_report_s [report_timing -collection -late] 
set slack_time_s [get_property $timing_report_s slack] 
if { $slack_time_s < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -drv 
puts "Optimization Complete" 
} else { 
puts "No SETUP slack violation 1" 
} 

set timing_report_s [report_timing -collection -late] 
set slack_time_s [get_property $timing_report_s slack]

if { $slack_time_s < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -incr 
puts "Optimization Complete" 
} else { 
puts "No SETUP slack violation 2" 
}

set timing_report_s [report_timing -collection -late] 
set slack_time_s [get_property $timing_report_s slack]

if { $slack_time_s < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -incr 
puts "Optimization Complete" 
} else { 
puts "No SETUP slack violation 3" 
}

set timing_report_s [report_timing -collection -late] 
set slack_time_s [get_property $timing_report_s slack]

if { $slack_time_s < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -incr 
puts "Optimization Complete" 
} else { 
puts "No SETUP slack violation 4" 
}

#############
## HOLD OPTIMIZATION 
###############

set timing_report_h [report_timing -collection -early] 
set slack_time_h [get_property $timing_report_h slack] 
if { $slack_time_h < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -hold 
puts "Optimization Complete" 
} else { 
puts "No HOLD slack violation 1" 
} 


set timing_report_h [report_timing -collection -early] 
set slack_time_h [get_property $timing_report_h slack] 
if { $slack_time_h < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -hold -incr
puts "Optimization Complete" 
} else { 
puts "No HOLD slack violation 2" 
}

set timing_report_h [report_timing -collection -early] 
set slack_time_h [get_property $timing_report_h slack] 
if { $slack_time_h < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -hold -incr
puts "Optimization Complete" 
} else { 
puts "No HOLD slack violation 3" 
}

set timing_report_h [report_timing -collection -early] 
set slack_time_h [get_property $timing_report_h slack] 
if { $slack_time_h < 0.2} { 
puts "Optimizing for Slack" 
optDesign -postCTS -hold -incr
puts "Optimization Complete" 
} else { 
puts "No HOLD slack violation 4" 
}









