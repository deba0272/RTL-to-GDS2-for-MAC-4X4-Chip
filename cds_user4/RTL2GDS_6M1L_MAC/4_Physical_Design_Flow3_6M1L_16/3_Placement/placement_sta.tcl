
set timing_report [report_timing -collection -late]

set slack_time [get_property $timing_report slack]

if { $slack_time < 0.2} {
puts "Optimizing for Slack"
optDesign -preCTS -drv
puts "Optimization Complete"
} else {
puts "No slack violation 1"
}
 
set timing_report [report_timing -collection -late]

set slack_time [get_property $timing_report slack]

if { $slack_time < 0.2} { 
puts "Optimizing for Slack" 
optDesign -preCTS -incr 
puts "Optimization Complete" 
} else {
puts "No slack violation 2" 
}

set timing_report [report_timing -collection -late]

set slack_time [get_property $timing_report slack]

if { $slack_time < 0.2} {
puts "Optimizing for Slack" 
optDesign -preCTS -incr 
puts "Optimization Complete" 
} else {
puts "No slack violation 3" 
}
set timing_report [report_timing -collection -late];
set slack_time [get_property $timing_report slack];
if { $slack_time < 0.2} { 
puts "Optimizing for Slack" 
optDesign -preCTS -incr 
puts "Optimization Complete" 
} else {
puts "No slack violation 4" 
}

