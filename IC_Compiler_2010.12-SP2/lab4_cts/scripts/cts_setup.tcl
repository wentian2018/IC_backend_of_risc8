#######################################
# Preparing for Clock Tree Synthesis  #
#######################################

set_clock_tree_exceptions -stop_pins {I_SDRAM_TOP/I_SDRAM_IF/sd_mux_*/S}

set_clock_tree_options -target_skew 0.1

set_clock_uncertainty 0.1 [all_clocks]

reset_clock_tree_references
set_clock_tree_references -references {bufbd1 bufbd2 bufbd4 bufbd7 bufbdf}

define_routing_rule  CLOCK_DOUBLE_SPACING \
	-spacings {METAL3 0.42 METAL4 0.63 METAL5 0.82}

report_routing_rule CLOCK_DOUBLE_SPACING

set_clock_tree_options -routing_rule CLOCK_DOUBLE_SPACING \
	-layer_list {METAL3 METAL5} -use_default_routing_for_sinks 1

report_clock_tree -settings

check_physical_design -stage pre_clock_opt -no_display

set_delay_calculation -clock_arnoldi

check_clock_tree
