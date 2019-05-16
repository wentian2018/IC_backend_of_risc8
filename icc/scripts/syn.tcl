set design_name risc8
############Design Data#########################
create_mw_lib  -technology ../../ref1/tech/cb13_6m.tf -mw_reference_library \
                          {../../ref1/mw_lib/ram16x128 \
                           ../../ref1/mw_lib/io \
                           ../../ref1/mw_lib/ram4x32 \
                           ../../ref1/mw_lib/ram8x64 \
                           ../../ref1/mw_lib/special \
                           ../../ref1/mw_lib/sc \
                           ../../ref1/mw_lib/ram32x64 } -bus_naming_style {[%d]} -open risc8_icc
                           
set_tlu_plus_files -max_tluplus ../../ref1/tlup/cb13_6m_max.tluplus \
                   -min_tluplus ../../ref1/tlup/cb13_6m_min.tluplus \
                   -tech2itf_map  ../../ref1/tlup/cb13_6m.map
check_tlu_plus_files 
read_verilog -verbose {../../dc/run/netlist/risc8.v}
read_sdc  -version Latest "../../dc/run/netlist/risc8.sdc"


source pad_cell_cons.tcl

create_floorplan -core_utilization 0.55 -left_io2core 80 -bottom_io2core 80 -right_io2core 80 -top_io2core 80
insert_pad_filler -cell 

####################Planning####################
### Keepout ###
set_keepout_margin -type hard -all_macros -outer {20 20 20 20} 
create_fp_placement 
########connect power and ground#######
derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS
derive_pg_connection -power_net VDD  -ground_net VSS -tie

### Build rings around six groups of macros ###
set_fp_rail_region_constraints  -polygon {{366 1304} {366 1680} {763 1680} {763 1304}}
set_fp_rail_region_constraints  -polygon {{366 940} {366 1300} {625 1300} {625 940}}
set_fp_rail_region_constraints  -polygon {{926 1193} {926 1807} {1454 1807} {1454 1193}}
set_fp_rail_region_constraints  -polygon {{1436 1660} {1436 1794} {1807 1794} {1807 1660}}
set_fp_rail_region_constraints  -polygon {{1500 1300} {1500 1663} {1807 1663} {1807 1300}}
set_fp_rail_region_constraints  -polygon {{1366 366} {1366 776} {1794 776} {1794 366}}


create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
commit_fp_group_block_ring

set_fp_rail_region_constraints -remove


## Complete the power grid structure: Ring around individual PLL macro, vertical/horizontal straps, and core ring ##
set_fp_rail_constraints -add_layer  -layer METAL5 -direction horizontal -max_strap 24 -min_strap 2 -min_width 2 -max_width 4 -spacing 0.6
set_fp_rail_constraints -add_layer  -layer METAL4 -direction vertical -max_strap 24 -min_strap 2 -min_width 2 -max_width 4 -spacing 0.6
set_fp_rail_constraints  -set_ring -horizontal_ring_layer { METAL3 } -vertical_ring_layer { METAL2 } -ring_max_width 12 -ring_min_width 10 -extend_strap core_ring

set_fp_block_ring_constraints -add -horizontal_layer METAL5 -horizontal_width 3 -horizontal_offset 0.600 -vertical_layer METAL4 -vertical_width 3 -vertical_offset 0.600 -block_type instance  -block {I_CLOCK_GEN/I_PLL_PCI} -net  {VDD VSS}
set_fp_rail_constraints -set_global   -no_routing_over_hard_macros
synthesize_fp_rail  -nets {VDD VSS} -voltage_supply 1.32 -synthesize_power_plan -power_budget 350 -pad_masters { pv0i pvdi }

commit_fp_rail

preroute_instances  -ignore_macros -ignore_cover_cells -primary_routing_layer pin -extend_for_multiple_connections -extension_gap 20
preroute_instances  -ignore_pads -ignore_cover_cells -primary_routing_layer pin
preroute_standard_cells -extend_for_multiple_connections  -extension_gap 20 -connect horizontal  -remove_floating_pieces  -do_not_route_over_macros  -fill_empty_rows  -port_filter_mode off -cell_master_filter_mode off -cell_instance_filter_mode off -voltage_area_filter_mode off -route_type {P/G Std. Cell Pin Conn}
#analyze_fp_rail  -nets {VDD VSS} -power_budget 80 -voltage_supply 1# 
create_fp_placement -incremental all

#########################################################################
########################<<< Place_opt>>>#################################
#########################################################################
read_sdc  -version Latest "../../dc/run/netlist/risc8.sdc"
#read_def chip.scandef
set_dont_touch_placement [all_macro_cells]
check_physical_design -stage pre_place_opt


derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS
derive_pg_connection -power_net VDD  -ground_net VSS -tie



#set_switching_activity -toggle_rate 0.03 -static_probability 0.5 [get_ports  "ppar_in pframe_n_in ptrdy_n_in pirdy_n_in pdevsel_n_in pstop_n_in pperr_n_in pserr_n_in"]

#########################################################################
###########################<<< CTS>>>####################################
#########################################################################
set power_cg_auto_identify true

check_physical_design -stage pre_clock_opt 

set_fix_hold [all_clocks]
set physopt_area_critical_range 0.1
clock_opt -fix_hold_all_clocks -no_clock_route
derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS
derive_pg_connection -power_net VDD  -ground_net VSS -tie




#########################################################################
############################<<< Route>>>#################################
#########################################################################
check_routeability -error_cell risc8.err
source ../../IC_Compiler_2010.12-SP2/lab6_chip_finishing/scripts/cb13_6m_antenna.tcl
source ../../IC_Compiler_2010.12-SP2/lab5_route/scripts/common_route_si_settings_zrt_icc.tcl
route_opt


derive_pg_connection -power_net VDD  -power_pin VDD  -ground_net VSS  -ground_pin VSS
derive_pg_connection -power_net VDD  -ground_net VSS -tie



if { ! [ file exists outputs ] } { file mkdir ../outputs }
report_timing -max_paths 10  > ../outputs/$design_name.rpt
report_constraints -all      >> ../outputs/$design_name.rpt
report_power                 >> ../outputs/$design_name.rpt
report_placement_utilization >> ../outputs/$design_name.rpt
 
set_write_stream_options -map_layer ../outputs/macro.map -child_depth 20 -flatten_via
write_stream -format gds -lib_name ../outputs -cells {rics8_icc} $design_name.gds
write_sdf -version 1.0 -context verilog -load_delay net $design_name.sdf
write_verilog -unconnected_ports -diode_ports -wire_declaration -keep_backslash_before_hiersep -no_physical_only_cells ${design_name}_route.v
start_gui
if { [info exists ::env(STARTGUI)   ] } {
        start_gui
} else {
 quit
}

