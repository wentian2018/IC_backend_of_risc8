#convert tri to wire
set verilogout_no_tri true
set verilogout_show_unconnected_pins true
set test_default_scan_style multiplexed_flip_flop
set timing_enable_multiple_clocks_per_reg true


####remove assign use buffers#####
###set_fix_multiple_port_nets -feedthroughs
set_fix_multiple_port_nets -all -buffer_constants


set compile_seqmap_enable_output_inversion true

set_leakage_optimization false
#set_cost_priority -default
# redundant logic for glitch filtering
# prevent DC from removing this
