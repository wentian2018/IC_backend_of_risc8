###########Design setup###########

#create_mw_lib  -technology /home/zhouwt/risc8/ref1/tech/cb13_6m.tf  -mw_reference_library \
                           {../ref1/mw_lib/sc/ \
                            ../ref1/mw_lib/io \
                            ../ref1/mw_lib/ram16x128 \
                            ../ref1/mw_lib/ram32x64  \
                            ../ref1/mw_lib/ram4x32 \
                            ../ref1/mw_lib/ram8x64 \
                            ../ref1/mw_lib/special} \
                           -bus_naming_style {[%d]}  -open risc8_icc
#import_designs -format verilog {../rtl/alu.v  cpu.v  dram.v  idec.v  regs.v} -top cpu
#set_tlu_plus_files \
	-max_tluplus "../ref1/tlup/cb13_6m_max.tluplus"\
	-min_tluplus "../ref1/tlup/cb13_6m_min.tluplus"\
	-tech2itf_map "../ref1/tlupcb13_6m.map"

#read_sdc -version Latest "../dc/run/netlist/risc8.sdc"

read_pin_pad_physical_constraints ""

create_floorplan -control_type "aspect_ratio" -core_aspect_ratio "i" \
                 -core_utilization "0.7" -row_core_ratio "i"  -left_io2core "30" -bottom_io2cor "30" -right_io2core "30" -top_io2core "30" \
                 -start_first_row
insrert_pad_filler -cell {} -overlap_cell {}

save_mw_cel -design "risc8.CEL;1"
save_mw_cel -design "risc8.CEL;1" -as "die_init"

#####################palnning######################
set_keepout_margin -type hard -all_macros -outer {70 70 70 70}
derive_pg_collections -power_net "VDD" -power_pin "VDD" -ground_net "VSS" -ground_pin "VSS" -create_ports "top"
create_fp_placement
#synthesize_fp_rail \
	-power_budget "1000" -voltage_supply "1.2" -target_voltage_drop "250" \
	-output_dir "./outputs" -nets "VDD VSS" -create_virtual_rails "M1"\
	-synthesize_power_plan -synthesize_power_pads -use_strap_ends_as_pads
#commit_fp_rail 
set_fp_rail_constraints -add_layer  -layer M5 -direction horizontal -max_strap 10 -min_strap 3 -max_width 8 -min_width 8 -spacing minimum
set_fp_rail_constraints -add_layer  -layer M4 -direction vertical   -max_strap 10 -min_strap 3 -max_width 8 -min_width 8 -spacing minimum
set_fp_rail_constraints -set_ring   -nets  {VDD VSS VDD VSS VDD VSS} \
                        -horizontal_ring_layer { M5 } \ 
                        -vertical_ring_layer { M4 } \ 
                        -ring_width 8 -ring_offset 3 \ 
                        -extend_strap core_ring
set_fp_rail_constraints -set_global   -no_routing_over_hard_macros
set_fp_block_ring_constraints -add -horizontal_layer M5 -horizontal_width 8 -horizontal_offset 1 \
                                   -vertical_layer M4 -vertical_width 8 -vertical_offset 1 \
                                   -block_type master  -block {  RF_SP_64x144  RF_SP_64x16} -net  {VDD VSS}
synthesize_fp_rail  -nets {VDD VSS} -voltage_supply 1 -synthesize_power_plan -power_budget 80
 
 commit_fp_rail
preroute_instances  -ignore_macros -ignore_cover_cells -primary_routing_layer pin -extend_for_multiple_connections -extension_gap 20
preroute_instances  -ignore_pads -ignore_cover_cells -primary_routing_layer pin
preroute_standard_cells -extend_for_multiple_connections  \ 
                        -extension_gap 20 -connect horizontal \ 
                        -remove_floating_pieces  -do_not_route_over_macros \
                        -fill_empty_rows  -port_filter_mode off -cell_master_filter_mode off \
                        -cell_instance_filter_mode off \
                        -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}
set_pnet_options -partial "M4 M5"
create_fp_placement -incremental all

save_mw_cel -design "risc8.CEL;1"
save_mw_cel -design "risc8.CEL;1" -as "Design planning"

##############################Place opt###########################
read_sdc -version Latest "../dc/run/netlist/risc8.sdc"
read_def   
set_dont_touch_placement [all_macro_cells]
check_physical_design  -stage pre_place_opt
place_opt -power -optimize_dft
derive_pg_collections -power_net "VDD" -power_pin "VDD" -ground_net "VSS" -ground_pin "VSS" -create_ports "top"
save_mw_cel -design "risc8.CEL;1"
save_mw_cel -design "risc8.CEL;1" -as "placement"
##############################CTS###########################
set_power_cg_auto_identity true
check_physical_design -stage pre_clock_opt
set_fix_hold [all_clocks]
set physopt_area_critical_range 0.1
clock_opt -fix_hold_all_clocks -no_clock_route
route_zrt_group -all_clock_nets -reuse_existing_global_route true
derive_pg_collections -power_net "VDD" -power_pin "VDD" -ground_net "VSS" -ground_pin "VSS" -create_ports "top"
save_mw_cel -design "risc8.CEL;1"
save_mw_cel -design "risc8.CEL;1" -as "CTS"

#####################Route the ramaining nets########################
check_routeability -error_cell risc8.err
route_opt
set_route_zrt_detail_options -insert_diodes_during_routing true
route_zrt_detail -incremental true -initial_drc_from_input true
route_opt -initial_route_only
route_opt -skip_initial_route -effort low
derive_pg_collections -power_net "VDD" -power_pin "VDD" -ground_net "VSS" -ground_pin "VSS" -create_ports "top"
save_mw_cel -design "risc8.CEL;1"
save_mw_cel -design "risc8.CEL;1" -as "Route"

####################Add filler cells###################

insert_stdcell_filler \
-cell_with_metal "SHFILL1 SHIFILL2 SHFILL3" \
-connect_to_power "VDD" -connect_to_ground "VSS"

route_opt -incremental -size_only

###########################DFM######################





###Now my design is on silicon ! Generate the post place and route netlist,the constraints file and parasitics fiels to generate power estimates.###

change_names -rules verilog -hierarchy
write_verilog -unconnected_ports -diod_ports -wire_declaration -keep_backslash_before_hiersep -no_physical_only_cells "risc8_route.v"
write_sdf -version 1.0 -context verilog -load_delay net  "risc8.output.sdf"
write_sdc "risc8.output.sdc "
extract_rc -coupling_cap
write_parasitics -format SBPF -output "risc8.output.sbpf"
report_timing -max_paths 10  >  report.rpt
report_constraints -all      >> report.rpt
report_power                 >> report.rpt
report_placement_utilization >> report.rpt
