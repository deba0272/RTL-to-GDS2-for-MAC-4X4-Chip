# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Mon Jun 22 15:32:27 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mac_4x4_wrapper_chip

create_clock -name "clk" -period 200.0 -waveform {0.0 100.0} [get_ports clk]
group_path -weight 1.000000 -name I2R -from [list \
  [get_ports clk]  \
  [get_ports rst]  \
  [get_ports enable]  \
  [get_ports {a[3]}]  \
  [get_ports {a[2]}]  \
  [get_ports {a[1]}]  \
  [get_ports {a[0]}]  \
  [get_ports {b[3]}]  \
  [get_ports {b[2]}]  \
  [get_ports {b[1]}]  \
  [get_ports {b[0]}] ] -to [list \
  [get_cells {dut/acc_reg_reg[7]}]  \
  [get_cells {dut/acc_reg_reg[1]}]  \
  [get_cells {dut/acc_reg_reg[5]}]  \
  [get_cells {dut/acc_reg_reg[6]}]  \
  [get_cells {dut/acc_reg_reg[0]}]  \
  [get_cells {dut/acc_reg_reg[8]}]  \
  [get_cells {dut/acc_reg_reg[9]}]  \
  [get_cells {dut/acc_reg_reg[10]}]  \
  [get_cells {dut/acc_reg_reg[14]}]  \
  [get_cells {dut/acc_reg_reg[11]}]  \
  [get_cells {dut/acc_reg_reg[12]}]  \
  [get_cells {dut/acc_reg_reg[13]}]  \
  [get_cells {dut/acc_reg_reg[2]}]  \
  [get_cells {dut/acc_reg_reg[3]}]  \
  [get_cells {dut/acc_reg_reg[15]}]  \
  [get_cells {dut/acc_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[7]}]  \
  [get_cells {dut/mult_reg_reg[6]}]  \
  [get_cells {dut/mult_reg_reg[5]}]  \
  [get_cells {dut/mult_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[3]}]  \
  [get_cells {dut/mult_reg_reg[2]}]  \
  [get_cells {dut/mult_reg_reg[1]}]  \
  [get_cells {dut/mult_reg_reg[0]}]  \
  [get_cells dut/enable_s1_reg]  \
  [get_cells {dut/b_reg_reg[1]}]  \
  [get_cells {dut/a_reg_reg[1]}]  \
  [get_cells {dut/b_reg_reg[3]}]  \
  [get_cells {dut/a_reg_reg[0]}]  \
  [get_cells {dut/a_reg_reg[3]}]  \
  [get_cells {dut/b_reg_reg[0]}]  \
  [get_cells {dut/b_reg_reg[2]}]  \
  [get_cells {dut/a_reg_reg[2]}]  \
  [get_cells dut/enable_s2_reg] ]
group_path -weight 1.000000 -name R2O -from [list \
  [get_cells {dut/acc_reg_reg[7]}]  \
  [get_cells {dut/acc_reg_reg[1]}]  \
  [get_cells {dut/acc_reg_reg[5]}]  \
  [get_cells {dut/acc_reg_reg[6]}]  \
  [get_cells {dut/acc_reg_reg[0]}]  \
  [get_cells {dut/acc_reg_reg[8]}]  \
  [get_cells {dut/acc_reg_reg[9]}]  \
  [get_cells {dut/acc_reg_reg[10]}]  \
  [get_cells {dut/acc_reg_reg[14]}]  \
  [get_cells {dut/acc_reg_reg[11]}]  \
  [get_cells {dut/acc_reg_reg[12]}]  \
  [get_cells {dut/acc_reg_reg[13]}]  \
  [get_cells {dut/acc_reg_reg[2]}]  \
  [get_cells {dut/acc_reg_reg[3]}]  \
  [get_cells {dut/acc_reg_reg[15]}]  \
  [get_cells {dut/acc_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[7]}]  \
  [get_cells {dut/mult_reg_reg[6]}]  \
  [get_cells {dut/mult_reg_reg[5]}]  \
  [get_cells {dut/mult_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[3]}]  \
  [get_cells {dut/mult_reg_reg[2]}]  \
  [get_cells {dut/mult_reg_reg[1]}]  \
  [get_cells {dut/mult_reg_reg[0]}]  \
  [get_cells dut/enable_s1_reg]  \
  [get_cells {dut/b_reg_reg[1]}]  \
  [get_cells {dut/a_reg_reg[1]}]  \
  [get_cells {dut/b_reg_reg[3]}]  \
  [get_cells {dut/a_reg_reg[0]}]  \
  [get_cells {dut/a_reg_reg[3]}]  \
  [get_cells {dut/b_reg_reg[0]}]  \
  [get_cells {dut/b_reg_reg[2]}]  \
  [get_cells {dut/a_reg_reg[2]}]  \
  [get_cells dut/enable_s2_reg] ] -to [list \
  [get_ports {mac_out[15]}]  \
  [get_ports {mac_out[14]}]  \
  [get_ports {mac_out[13]}]  \
  [get_ports {mac_out[12]}]  \
  [get_ports {mac_out[11]}]  \
  [get_ports {mac_out[10]}]  \
  [get_ports {mac_out[9]}]  \
  [get_ports {mac_out[8]}]  \
  [get_ports {mac_out[7]}]  \
  [get_ports {mac_out[6]}]  \
  [get_ports {mac_out[5]}]  \
  [get_ports {mac_out[4]}]  \
  [get_ports {mac_out[3]}]  \
  [get_ports {mac_out[2]}]  \
  [get_ports {mac_out[1]}]  \
  [get_ports {mac_out[0]}] ]
group_path -weight 1.000000 -name R2R -from [list \
  [get_cells {dut/acc_reg_reg[7]}]  \
  [get_cells {dut/acc_reg_reg[1]}]  \
  [get_cells {dut/acc_reg_reg[5]}]  \
  [get_cells {dut/acc_reg_reg[6]}]  \
  [get_cells {dut/acc_reg_reg[0]}]  \
  [get_cells {dut/acc_reg_reg[8]}]  \
  [get_cells {dut/acc_reg_reg[9]}]  \
  [get_cells {dut/acc_reg_reg[10]}]  \
  [get_cells {dut/acc_reg_reg[14]}]  \
  [get_cells {dut/acc_reg_reg[11]}]  \
  [get_cells {dut/acc_reg_reg[12]}]  \
  [get_cells {dut/acc_reg_reg[13]}]  \
  [get_cells {dut/acc_reg_reg[2]}]  \
  [get_cells {dut/acc_reg_reg[3]}]  \
  [get_cells {dut/acc_reg_reg[15]}]  \
  [get_cells {dut/acc_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[7]}]  \
  [get_cells {dut/mult_reg_reg[6]}]  \
  [get_cells {dut/mult_reg_reg[5]}]  \
  [get_cells {dut/mult_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[3]}]  \
  [get_cells {dut/mult_reg_reg[2]}]  \
  [get_cells {dut/mult_reg_reg[1]}]  \
  [get_cells {dut/mult_reg_reg[0]}]  \
  [get_cells dut/enable_s1_reg]  \
  [get_cells {dut/b_reg_reg[1]}]  \
  [get_cells {dut/a_reg_reg[1]}]  \
  [get_cells {dut/b_reg_reg[3]}]  \
  [get_cells {dut/a_reg_reg[0]}]  \
  [get_cells {dut/a_reg_reg[3]}]  \
  [get_cells {dut/b_reg_reg[0]}]  \
  [get_cells {dut/b_reg_reg[2]}]  \
  [get_cells {dut/a_reg_reg[2]}]  \
  [get_cells dut/enable_s2_reg] ] -to [list \
  [get_cells {dut/acc_reg_reg[7]}]  \
  [get_cells {dut/acc_reg_reg[1]}]  \
  [get_cells {dut/acc_reg_reg[5]}]  \
  [get_cells {dut/acc_reg_reg[6]}]  \
  [get_cells {dut/acc_reg_reg[0]}]  \
  [get_cells {dut/acc_reg_reg[8]}]  \
  [get_cells {dut/acc_reg_reg[9]}]  \
  [get_cells {dut/acc_reg_reg[10]}]  \
  [get_cells {dut/acc_reg_reg[14]}]  \
  [get_cells {dut/acc_reg_reg[11]}]  \
  [get_cells {dut/acc_reg_reg[12]}]  \
  [get_cells {dut/acc_reg_reg[13]}]  \
  [get_cells {dut/acc_reg_reg[2]}]  \
  [get_cells {dut/acc_reg_reg[3]}]  \
  [get_cells {dut/acc_reg_reg[15]}]  \
  [get_cells {dut/acc_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[7]}]  \
  [get_cells {dut/mult_reg_reg[6]}]  \
  [get_cells {dut/mult_reg_reg[5]}]  \
  [get_cells {dut/mult_reg_reg[4]}]  \
  [get_cells {dut/mult_reg_reg[3]}]  \
  [get_cells {dut/mult_reg_reg[2]}]  \
  [get_cells {dut/mult_reg_reg[1]}]  \
  [get_cells {dut/mult_reg_reg[0]}]  \
  [get_cells dut/enable_s1_reg]  \
  [get_cells {dut/b_reg_reg[1]}]  \
  [get_cells {dut/a_reg_reg[1]}]  \
  [get_cells {dut/b_reg_reg[3]}]  \
  [get_cells {dut/a_reg_reg[0]}]  \
  [get_cells {dut/a_reg_reg[3]}]  \
  [get_cells {dut/b_reg_reg[0]}]  \
  [get_cells {dut/b_reg_reg[2]}]  \
  [get_cells {dut/a_reg_reg[2]}]  \
  [get_cells dut/enable_s2_reg] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 5.0 [get_ports rst]
set_wire_load_mode "enclosed"
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb2]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb1]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb4]
set_clock_uncertainty -setup 7.0 [get_clocks clk]
set_clock_uncertainty -hold 7.0 [get_clocks clk]
