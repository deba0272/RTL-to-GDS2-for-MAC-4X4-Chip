## FLOORPLAN 
## 
#set ASPECT RATIO 1.0 
#Shape of design e.g. rectangle with height= 1.0*width 
#set CORE UTILIZATION 0.60 
# Core utilization 0.1(0%).... 1.0(100%) 
#set CELL DENSITY 0.075 
# Core and module sizes by standard cell density. 
#set CORE_TO_LEFT  125 ; 
set CORE_TO_LEFT 200 ; 
# Distance from core to die/io in micron. (150 width if you are 
set CORE_TO_BOTTOM 200 ;
###using core to to margin here and use noSnapToGrid option with floorplan command). #Distance from core to die/io in micron. (150 width if you are; using core to to margin here and use noSnapToGrid option with floorplan command). 
set CORE_TO_RIGHT 200 ; 
#Distance from core to die/to in micron. (150 width if you are using core to to margin here and use noSnapToGrid option with floorplan command). 
set CORE_TO_TOP 200 ; 
# Distance from core to die/io in micron. (150 width if you are using core to to margin here and use noSnapToGrid option with floorplan command). 

#set DIE_WIDTH 2800 
set DIE_WIDTH 1940 
#Width of the die 

#set DIE_HEIGHT 2800 
set DIE_HEIGHT 1940 

#Height of the die 
#set CORE HEIGHT 500 
#Height of the core 
#set CORE WIDTH 500 
#Width of the core 
set CORE_MARGIN_BY die; 
set DESIGN_SITE CoreSite ; 
#Specify die -> core to die and to -> core to to 
#Specifies a core row site.sour	

floorPlan -site $DESIGN_SITE \
	-d $DIE_WIDTH $DIE_HEIGHT $CORE_TO_LEFT $CORE_TO_BOTTOM $CORE_TO_RIGHT $CORE_TO_TOP

add_tracks -honor_pitch

checkFPlan -outFile ./FloorPlanning/${init_top_cell}_floorplan.rpt

saveDesign ./FloorPlanning/${init_top_cell}_floorplan.enc



set IO_CELL_PREFIX FILLER
set IO_CELL_NAME {pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010};

addIoFiller \
	-prefix $IO_CELL_PREFIX \
	-cell $IO_CELL_NAME

addIoFiller -fillAnyGap\
	-prefix $IO_CELL_PREFIX \
	-cell pfeed00010

setVerifyGeometryMode -short true -padFillerCellsOverlap false -error 100000
verifyGeometry > ./FloorPlanning/${init_top_cell}_geom.rpt
verify_drc > ./FloorPlanning/${init_top_cell}_drc.rpt
verifyConnectivity -type all -connLoop -error 10000 -warning 5000
timeDesign -prePlace -outDir ./FloorPlanning/${init_top_cell}_timing.rpt

saveDesign ./FloorPlanning/${init_top_cell}_fp_filler.enc



