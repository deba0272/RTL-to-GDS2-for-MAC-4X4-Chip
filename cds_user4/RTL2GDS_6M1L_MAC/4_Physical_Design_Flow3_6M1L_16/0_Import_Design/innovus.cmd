#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Jun 22 16:17:55 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
set init_design_netlisttype Verilog
set init_verilog ./top_streamed_wrapper_chip_netlist.v
set init_top_cell mac_4x4_wrapper_chip
set init_lef_file {/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/lef/tsl180l6.lef /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_std.lef /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/lef/tsl18cio150_6lm.lef /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/memory/dpram/6M1L/DP_SRAM_rd3_1024x8/rd3_1024x8.lef}
set init_io_file ./final.io
set init_mmmc_file ./Default.view
set init_gnd_net {VSS_CORE VSSO_CORE}
set init_pwr_net {VDD_CORE VDDO_CORE}
set floorplan_default_site CoreSite
save_global Default.globals
set_message -no_limit
setDesignMode -process 180
init_design
add_tracks -honor_pitch
checkUnique -verbose
check_timing -verbose
checkDesign -all > ./Import_Design/mac_4x4_wrapper_chip_design.rpt
reportGateCount -hinst mac_4x4_wrapper_chip -level 10 -outfile ./Import_Design/mac_4x4_wrapper_chip_gatecount.rpt
reportNetStat > ./Import_Design/mac_4x4_wrapper_chip_netcount.rpt
saveDesign ./Import_Design/mac_4x4_wrapper_chip_importdesign.enc
floorPlan -site CoreSite -d 1940 1940 200 200 200 200
add_tracks -honor_pitch
checkFPlan -outFile ./FloorPlanning/mac_4x4_wrapper_chip_floorplan.rpt
saveDesign ./FloorPlanning/mac_4x4_wrapper_chip_floorplan.enc
addIoFiller -prefix FILLER -cell {pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010}
addIoFiller -fillAnyGap -prefix FILLER -cell pfeed00010
verify_drc > ./FloorPlanning/mac_4x4_wrapper_chip_drc.rpt
verifyConnectivity -type all -connLoop -error 10000 -warning 5000
timeDesign -prePlace -outDir ./FloorPlanning/mac_4x4_wrapper_chip_timing.rpt
saveDesign ./FloorPlanning/mac_4x4_wrapper_chip_fp_filler.enc
fit
zoomBox -1231.01600 -96.99200 3170.85600 2036.83200
selectInst FILLER_E_1
zoomBox -759.16600 -26.78300 2982.42600 1786.96800
globalNetConnect VDD_CORE -type pgpin -pin VDD -all
globalNetConnect VSS_CORE -type pgpin -pin VSS -all
globalNetConnect VDDO_CORE -type pgpin -pin VDDO -all
globalNetConnect VSSO_CORE -type pgpin -pin VSSO -all
globalNetConnect VDD_CORE -type tiehi
globalNetConnect VSS_CORE -type tielo
setAddRingMode -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape }
addRing -nets {VDD_CORE VSS_CORE} -type core_rings -follow core -layer {top M5 bottom M5 left TOP_M right TOP_M} -width {top 30 bottom 30 left 30 right 30} -spacing {top 30 bottom 30 left 30 right 30} -offset {top 10 bottom 10 left 10 right 10} -snap_wire_center_to_grid None
setAddStripeMode -spacing_type edge_to_edge -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring block_ring} -skip_via_on_wire_shape { noshape }
addStripe -nets {VDD_CORE VSS_CORE} -layer TOP_M -direction vertical -width 11.2 -spacing 11.2 -set_to_set_distance 112 -start_from left -start_offset 84.28 -switch_layer_over_obs true -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin { standardcell }
addStripe -nets {VDD_CORE VSS_CORE} -layer M5 -direction horizontal -width 5.6 -spacing 11.2 -set_to_set_distance 224 -start_from bottom -start_offset 120.4 -switch_layer_over_obs true -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin { standardcell }
setSrouteMode -viaConnectToShape { ring stripe followpin }
sroute -connect { padPin corePin } -layerChangeRange { M1(1) TOP_M(6) } -padPinPortConnect { allPort oneGeom} -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { M1(1) TOP_M(6) } -nets {VDD_CORE VSS_CORE} -allowLayerChange 1 -targetViaLayerRange { M1(1) TOP_M(6)}
verifyConnectivity -type all -connLoop -error 10000 -warning 5000 > ./PowerPlanning/mac_4x4_wrapper_chip_connectivity.rpt
checkDesign -all > ./PowerPlanning/mac_4x4_wrapper_chip_PP_design.rpt
timeDesign -prePlace > ./PowerPlanning/mac_4x4_wrapper_chip_timing_prePlace.rpt
saveDesign ./PowerPlanning/mac_4x4_wrapper_chip_fp_powerplan.enc
fit
zoomBox -967.73100 208.11000 2773.86200 2021.86100
zoomBox -553.71300 687.88300 2149.58800 1998.31800
zoomBox -32.55400 1085.07400 1627.61300 1889.84600
zoomBox -377.54900 860.22900 1920.26000 1974.10000
zoomBox -596.94100 717.24300 2106.36300 2027.68000
zoomBox -856.54300 556.85700 2323.81600 2098.54800
fit
zoomBox -1231.01600 -96.99200 3170.85600 2036.83200
zoomBox -809.24200 60.97900 2932.35000 1874.73000
zoomBox -442.39800 178.58000 2737.95700 1720.26900
zoomBox -810.12200 67.56100 2931.47300 1881.31300
deselectAll
selectWire 1499.8400 776.2900 1672.1200 810.1100 3 VDD_CORE
deselectAll
fit
