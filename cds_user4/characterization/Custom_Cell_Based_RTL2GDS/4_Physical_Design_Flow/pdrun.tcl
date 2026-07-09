
puts "Import Design Started"
cd 0_Import_Design
source import.tcl
puts "Import Design Finished"

puts "Floorplan Started"
cd ../1_Floorplan
source floorplan.tcl
puts "Floorplan Finished"

puts "Powerplan Started"
cd ../2_Powerplan
source powerplan.tcl
puts "Powerplan Finished"

puts "Placement Started"
cd ../3_Placement
source placement.tcl
puts "Placement Finished"

#puts "ClockTreeSynthesis Started"
#cd ../4_CTS
#source cts.tcl
#puts "ClockTreeSynthesis Finished"


puts "Routing Started"
cd ../5_Routing
source route.tcl
puts "Routing Finished"

puts "GDSII Generated"






