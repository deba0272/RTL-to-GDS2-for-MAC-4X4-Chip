#### CCOPT Configuration File #####


set_analysis_view -setup {worst} -hold {best}


setAnalysisMode -analysisType onChipVariation -cppr both

setNanoRouteMode -drouteUseMultiCutViaEffort "high"

### configure library cells for cts to be used

set_ccopt_property buffer_cells {bufbd1 bufbd2 bufbd3 bufbd4 bufbd7 bufbda bufbdf bufbdk}
set_ccopt_property inverter_cells {invbd2 invbd4 invbd7 invbda invbdf invbdk}

setRouteMode -earlyGlobalMaxRouteLayer 6


### Define route types to bind a on default routing rule

create_route_type -name leaf_rule -top_preferred_layer 2 -bottom_preferred_layer 1 -preferred_routing_layer_effort high

create_route_type -name trunk_rule -top_preferred_layer 3 -bottom_preferred_layer 2 -preferred_routing_layer_effort high

set_ccopt_property -net_type leaf route_type leaf_rule

set_ccopt_property -net_type trunk route_type trunk_rule

set_ccopt_property -net_type top route_type trunk_rule

###specify top routing rules will be used for any clock tree net with transitive sink fanout count

#set_ccopt_property routing_top_min_fanout 1

####

set_ccopt_property primary_delay_corner max_delay

set_ccopt_property route_type_autotrim false

