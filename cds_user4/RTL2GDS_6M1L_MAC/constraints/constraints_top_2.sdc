###############################################################################
# Sliding Window 4x4 Stream Wrapper – PD SAFE SDC
# 
# [Added for Freshers]: This is a Synopsys Design Constraints (SDC) file. 
# Think of it as a rulebook for the implementation tools (like synthesis and 
# place-and-route). It tells the tool exactly how fast the chip needs to run, 
# and what the timing environment outside of our specific chip/block looks like.
###############################################################################

# Sets the baseline unit of time for all numbers in this file to 1 nanosecond (ns).
# Any time we write a number like "5.0" later on, the tool knows it means 5.0 ns.
set_units -time 1ns

# Sets the baseline unit of capacitance to 1 picoFarad (pF). 
# This is used when calculating how much electrical load our outputs are driving.
set_units -capacitance 1pF

############################
# Clock
############################
# Creates a variable named 'clk_period' and assigns it a value of 200.000 ns.
# This makes it easy to change the clock speed later by just updating this one line.
set clk_period 200.000

# This is the most important command. It defines the heartbeat of the design.
# -name clk: We are naming this clock "clk".
# -period $clk_period: It repeats every 200.000 ns.
# -waveform {0 100}: It goes HIGH (1) at 0ns and LOW (0) at 100ns (a 50% duty cycle).
# [get_ports clk]: It tells the tool to look for this clock arriving on the physical input pin named "clk".
create_clock -name clk -period $clk_period \
    -waveform {0 100} [get_ports clk]

# Adds a 7.0 ns safety margin for "setup" timing (making sure data arrives before the clock edge).
# In the real world, clocks aren't perfect; they arrive a little early or late (jitter/skew). 
# This forces the tool to design the logic to be 7.0 ns faster than strictly necessary to be safe.
set_clock_uncertainty -setup 7.0 [get_clocks clk]

# Adds a 7.0 ns safety margin for "hold" timing (making sure data stays stable after the clock edge).
# This forces the tool to ensure signals don't change too quickly and overwrite current data.
set_clock_uncertainty -hold  7.0 [get_clocks clk]

############################
# Input delays (realistic)
# 
# [Added for Freshers]: Input delays tell our chip how much time was ALREADY used up 
# by logic outside our chip before the signal reached our input pins.
############################
# Tells the tool: "The valid_in signal will arrive 8.0 ns AFTER the clock edge."
# Our internal logic must handle it with whatever time is left in the 200ns cycle.
set_input_delay -clock clk 8.000 [get_ports valid_in]

# Tells the tool: "The reset (rst) signal will arrive 5.0 ns AFTER the clock edge."
set_input_delay -clock clk 5.000 [get_ports rst]

# This 'foreach' loop is a shortcut. Instead of writing 32 lines of code for our 16-bit 
# a and b buses, we loop through the numbers 0 to 15.
foreach bit {0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15} {
    # Applies a 5.0 ns input delay to every single bit (0 through 15) of the stream_a_in bus.
    set_input_delay -clock clk 5.000 [get_ports "stream_a_in[$bit]"]
    # Applies a 5.0 ns input delay to every single bit (0 through 15) of the stream_b_in bus.
    set_input_delay -clock clk 5.000 [get_ports "stream_b_in[$bit]"]
}

############################
# Output delays
#
# [Added for Freshers]: Output delays tell our chip how much time the logic 
# OUTSIDE our chip needs to do its job. We have to push our data out early enough 
# to give the outside world enough time to capture it.
############################
# Another loop, this time for our 16-bit output bus.
foreach bit {0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15} {
    # Tells the tool: "The outside world needs 3.0 ns to process this output."
    # So, our chip must push the data out of the stream_out pins 3.0 ns BEFORE the next clock edge.
    set_output_delay -clock clk 3.000 [get_ports "stream_out[$bit]"]
}
# Applies the same 3.0 ns output requirement to the valid_out signal.
set_output_delay -clock clk 3.000 [get_ports valid_out]

############################
# Path grouping
#
# [Added for Freshers]: Timing tools try to optimize the worst paths first. 
# If we don't group them, the tool might spend all its time fixing internal paths 
# and completely ignore the input/output paths. Grouping forces the tool to work 
# on all three categories independently.
############################
# Groups all paths that start at an input pin and end at an internal flip-flop (Input-to-Register).
group_path -name I2R -from [all_inputs]    -to [all_registers]

# Groups all paths that start at an internal flip-flop and end at an output pin (Register-to-Output).
group_path -name R2O -from [all_registers] -to [all_outputs]

# Groups all standard internal paths moving from one flip-flop to another (Register-to-Register).
group_path -name R2R -from [all_registers] -to [all_registers]

############################
# HOLD FIX (controlled)
############################
# If signals travel from one flip flop to another TOO FAST, they violate "hold time" 
# and corrupt the data. This command explicitly tells the Physical Design (PD) tools 
# to insert delay buffers into the physical layout to slow down those fast paths and fix them.
set_fix_hold -hold [get_clocks clk]

###############################################################################
# END
###############################################################################

