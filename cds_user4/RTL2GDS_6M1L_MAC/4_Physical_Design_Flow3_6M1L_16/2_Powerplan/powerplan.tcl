##globalNetConnect VDD_CORE -type pgpin -pin VDD -inst * -verbose
##globalNetConnect VSS_CORE -type pgpin -pin VSS -inst * -verbose
##globalNetConnect VDDO_CORE -type pgpin -pin VDDO -inst * -verbose
##globalNetConnect VSSO_CORE -type pgpin -pin VSSO -inst * -verbose

globalNetConnect VDD_CORE -type pgpin -pin VDD -all
globalNetConnect VSS_CORE -type pgpin -pin VSS -all
globalNetConnect VDDO_CORE -type pgpin -pin VDDO -all
globalNetConnect VSSO_CORE -type pgpin -pin VSSO -all

globalNetConnect VDD_CORE -type tiehi
globalNetConnect VSS_CORE -type tielo

#setAddRingMode -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape } 
#addRing -nets {VDD_CORE VSS_CORE} -type core_rings -follow core -center 1 -layer {top M3 bottom M3 left TOP_M right TOP_M} -width {top 30 bottom 30 left 30 right 30} -spacing {top 30 bottom 30 left 30 right 30} -offset {top 10 bottom 10 left 10 right 10} -snap_wire_center_to_grid None
setAddRingMode -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape } 
addRing -nets {VDD_CORE VSS_CORE} -type core_rings -follow core -layer {top M5 bottom M5 left TOP_M right TOP_M} -width {top 30 bottom 30 left 30 right 30} -spacing {top 30 bottom 30 left 30 right 30} -offset {top 10 bottom 10 left 10 right 10} -snap_wire_center_to_grid None


#setAddRingMode -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape } 
#addRing -nets {VDD_CORE VSS_CORE} -type core_rings -follow core -center 1 -layer {top M5 bottom M5 left TOP_M right TOP_M} -width {top 30 bottom 30 left 30 right 30} -spacing {top 30 bottom 30 left 30 right 30} -offset {top 10 bottom 10 left 10 right 10} -snap_wire_center_to_grid None

#setAddRingMode -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape } 
#addRing -nets {VDD_CORE VSS_CORE} -type core_rings -follow core -layer {top M3 bottom M3 left TOP_M right TOP_M} -width {top 30 bottom 10 left 30 right 30} -spacing {top 30 bottom 5 left 30 right 30} -offset {top 10 bottom 5 left 10 right 10} -snap_wire_center_to_grid None

setAddStripeMode -spacing_type edge_to_edge -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring block_ring} -skip_via_on_wire_shape { noshape }
addStripe -nets {VDD_CORE VSS_CORE} -layer TOP_M -direction vertical  -width 11.2 -spacing 11.2 -set_to_set_distance 112 -start_from left -start_offset 84.28 -switch_layer_over_obs true -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin { standardcell } 
addStripe -nets {VDD_CORE VSS_CORE} -layer M5 -direction horizontal -width 5.6 -spacing 11.2 -set_to_set_distance 224 -start_from bottom -start_offset 120.4 -switch_layer_over_obs true -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin { standardcell }

setSrouteMode -viaConnectToShape { ring stripe followpin } 
sroute -connect { padPin corePin } -layerChangeRange { M1(1) TOP_M(6) } -padPinPortConnect { allPort oneGeom} -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { M1(1) TOP_M(6) } -nets {VDD_CORE VSS_CORE} -allowLayerChange 1 -targetViaLayerRange { M1(1) TOP_M(6)}

verifyConnectivity -type all -connLoop -error 10000 -warning 5000 > ./PowerPlanning/${init_top_cell}_connectivity.rpt 
checkDesign -all > ./PowerPlanning/${init_top_cell}_PP_design.rpt 
timeDesign -prePlace > ./PowerPlanning/${init_top_cell}_timing_prePlace.rpt 
saveDesign ./PowerPlanning/${init_top_cell}_fp_powerplan.enc

