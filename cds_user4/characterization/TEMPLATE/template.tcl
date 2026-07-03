# =============================
# Global Settings
# =============================
set_units -timing 1ns
set_units -capacitance 1pf

set_vdd VDD 1.8
set_gnd GND 0

set_var sim_duration 10e-9
set_var constraint_search_bound 5e-9 
set_var reset_negative_power_info 1
set_var extsim_save_failed all

# =============================
# Templates
# =============================
define_template -type delay \
    -index_1 {0.02 0.05 0.2} \
    -index_2 {0.005 0.02 0.1} \
    delay_template

define_template -type power \
    -index_1 {0.02 0.05 0.2} \
    -index_2 {0.005 0.02 0.1} \
    power_template

define_template -type constraint \
    -index_1 {0.01 0.05 0.2} \
    -index_2 {0.01 0.05 0.2} \
    constraint_template

# =============================
# Cell Definitions
# =============================
set cells { inverter nand2x1 nor2 dff }

foreach cell $cells {
    if {[ALAPI_active_cell $cell]} {
        switch -glob -- $cell {
            "inverter" {
                define_cell -input {IN} -output {OUT} -pinlist {IN OUT VDD GND} \
                    -delay delay_template -power power_template $cell
                define_arc -type combinational -from IN -to OUT
            }
            "nand2x1" {
                define_cell -input {A B} -output {Y} -pinlist {A B Y VDD GND} \
                    -delay delay_template -power power_template $cell
                define_arc -type combinational -from A -to Y
                define_arc -type combinational -from B -to Y
            }
            "nor2" {
                define_cell -input {A B} -output {Y} -pinlist {A B Y VDD GND} \
                    -delay delay_template -power power_template $cell
                define_arc -type combinational -from A -to Y
                define_arc -type combinational -from B -to Y
            }
            "dff" {
                # We use -async to identify RST_N as the override
                # We do NOT use -user_arcs_only here to let Liberate 
                # try one more time to auto-link the logic.
                define_cell \
                    -input {D} \
                    -async {RST_N} \
                    -output {out} \
                    -clock {clk} \
                    -pinlist {clk RST_N D out VDD GND} \
                    -constraint constraint_template \
                    -delay delay_template \
                    -power power_template \
                    $cell
                
                # Manually define arcs to override the auto-generated ones
                # specifically to ensure the 'RST_N 0' state is used.
                define_arc -type rising_edge -from clk -to out -pin_out_state {RST_N 0}
                define_arc -type setup_rising -from D -to clk -pin_out_state {RST_N 0}
                define_arc -type hold_rising  -from D -to clk -pin_out_state {RST_N 0}
                define_arc -type recovery_falling -from RST_N -to clk
                define_arc -type removal_falling  -from RST_N -to clk
                define_arc -type combinational -from RST_N -to out
            }
        }
    }
}
