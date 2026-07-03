################################################################################
# Unified Cadence Liberate Characterization & Area Merge Script
################################################################################

# =============================
# 1. Environment & Run Setup
# =============================
set rundir $env(PWD)
set scl_models   ${rundir}/SCL_MODELS
set netlist_dir  ${rundir}/NETLIST
set template_dir ${rundir}/TEMPLATE

file mkdir ${rundir}/LDB
file mkdir ${rundir}/LIBRARY
file mkdir ${rundir}/DATASHEET
file mkdir ${rundir}/VERILOG

# Operating Conditions
set_operating_condition -voltage 1.8 -temp 25

# Simulator & Device Setup
set_var extsim_model_include ${scl_models}/scl18_tt.scs
set_var extsim_save_failed deck
set_var extsim_save_passed none
set_var floating_node_initialize_mode 1

define_leafcell -type nmos -pin_position {0 1 2 3} {n18}
define_leafcell -type pmos -pin_position {0 1 2 3} {p18}

# Load Template & Read Spice
source ${template_dir}/template.tcl

set spicefiles {}
foreach cell $cells {
    lappend spicefiles ${netlist_dir}/${cell}.scs
}
read_spice -format spectre $spicefiles

# ==============================================================================
# 2. Step 1: Characterization (Timing & Power)
# ==============================================================================
char_library -cells ${cells} -ccs -ecsm 

# Write intermediate "timing-only" libraries
write_library -overwrite -ccs ${rundir}/LIBRARY/temp_ccs.lib
write_library -overwrite -ecsm ${rundir}/LIBRARY/temp_ecsm.lib

# ==============================================================================
# 3. Step 2: Area Generation (Perl)
# ==============================================================================
puts "Info: Generating Area-only library via Perl..."

# This creates LIBRARY/userdata.lib (ensure Perl script has no tr/a-z/A-Z/)
if {[catch {exec perl area.pl < areas.txt} perl_out]} {
    puts "Error: area.pl execution failed: $perl_out"
}

# ==============================================================================
# 4. Step 3: Merge Timing and Area (NLDM, CCS, and ECSM)
# ==============================================================================
if {[file exists ${rundir}/LIBRARY/userdata.lib]} {
    puts "Info: Merging Timing and Area libraries for all models..."

    # 1. Create temporary NLDM (Timing only)
    write_library -overwrite ${rundir}/LIBRARY/temp_nldm.lib

    # 2. Merge NLDM
    merge_library -filename ${rundir}/LIBRARY/SVNIT_SCL180_tt.lib \
        ${rundir}/LIBRARY/userdata.lib \
        ${rundir}/LIBRARY/temp_nldm.lib
    
    # 3. Merge CCS 
    merge_library -filename ${rundir}/LIBRARY/SVNIT_SCL180_tt_ccs.lib \
        ${rundir}/LIBRARY/userdata.lib \
        ${rundir}/LIBRARY/temp_ccs.lib
    
    # 4. Merge ECSM 
    merge_library -filename ${rundir}/LIBRARY/SVNIT_SCL180_tt_ecsm.lib \
        ${rundir}/LIBRARY/userdata.lib \
        ${rundir}/LIBRARY/temp_ecsm.lib

    puts "Info: All library formats (NLDM, CCS, ECSM) merged successfully."
}
# ==============================================================================
# 5. Step 4: Verilog & Datasheet (From Merged Data)
# ==============================================================================

# Ensure memory has the merged data for the final reports
read_library ${rundir}/LIBRARY/SVNIT_SCL180_tt_ccs.lib

# Verilog generation (Note: removed -overwrite for compatibility)
write_verilog ${rundir}/VERILOG/SVNIT_SCL180_behavioral.v

# Final Database
write_ldb -overwrite ${rundir}/LDB/SVNIT_SCL180_tt.ldb

# Final HTML Datasheet (Now includes Area because we read the merged lib)
write_datasheet \
    -format html \
    -dir ${rundir}/DATASHEET \
    "SVNIT SCL180 Standard Cell Library (TT Corner)"

puts "Info: All tasks completed successfully."
