set design_name risc8
create_mw_lib  -technology ../../ref1/tech/cb13_6m.tf -mw_reference_library \
                          {../../ref1/mw_lib/ram16x128 \
                           ../../ref1/mw_lib/io \
                           ../../ref1/mw_lib/ram4x32 \
                           ../../ref1/mw_lib/ram8x64 \
                           ../../ref1/mw_lib/special \
                           ../../ref1/mw_lib/sc \
                           ../../ref1/mw_lib/ram32x64 } -bus_naming_style {[%d]} -open risc8_dc
check_library
set_tlu_plus_file  -max_tluplus ../../ref1/tlup/cb13_6m_max.tluplus \
                   -min_tluplus ../../ref1/tlup/cb13_6m_min.tluplus \
                   -tech2itf_map  ../../ref1/tlup/cb13_6m.map
check_tlu_plus_files

set_svf ../outputs/risc8.svf

analyze -f verilog {cpu.v  alu.v  dram.v  idec.v  regs.v}
elaborate cpu

saif_map -start


source syn.sdc
check_timing


set_fix_multiple_port_nets -all -buffer_constants
#############Compile Options##########
if { [ file exists ../../config/config_options.tcl ] } {
	source -echo -v ../../config/config_options.tcl
}
################Group-path##############
group_path -name INPUTS -from [all_inputs]
group_path -name OUTPUTS -to [all_outputs]
group_path -name COMB -from [all_inputs] -to [all_outputs]
group_path -name clk  -weight 5 -critical_range 0.3

#balance_buffer -from clk
##########clock gating#######
#        compile_ultra -scan -gate_clock
###########DFT###########
#create_test_protocol
#dft_drc -v
#insert_dft
#############compile#########
compile_ultra
set_fix_hold [all_clocks]
compile_ultra -incremental -only_design_rule
############################################
check_design
###########Report and outputs##########
report_timing -delay_type max -max_path 10 -transition_time -capacitance > ../reports/${design_name}_timing.rpt
report_timing -delay_type min -max_path 10 -transition_time -capacitance >> ../reports/${design_name}_timing.rpt
report_area                                > ../reports/${design_name}.rpt
report_design                             >> ../reports/${design_name}.rpt
report_cell                               >> ../reports/${design_name}.rpt
report_power -nosplit                     >> ../reports/${design_name}.rpt
report_constraint -all_violators -verbose >> ../reports/${design_name}.rpt
echo "Loops\n"                            >> ../reports/${design_name}.rpt
echo "====\n"                             >> ../reports/${design_name}.rpt
report_timing -loops >> ../reports/${design_name}.rpt
echo "Reporting Hierarchy\n"                    >> ../reports/${design_name}.rpt
echo "===================\n"                    >> ../reports/${design_name}.rpt
report_hier                                     >> ../reports/${design_name}.rpt
get_designs -hier "*"                           >> ../reports/${design_name}.rpt

echo "Reporting Fanout\n"                       >> ../reports/${design_name}.rpt
echo "================\n"                       >> ../reports/${design_name}.rpt
report_net_fanout -tree -threshold 100 -nosplit >> ../reports/${design_name}.rpt
report_qor > ../reports/syn.rpt

change_names -rules verilog -hierarchy
redirect change_names { change_names -rules verilog -hierarchy -verbose }

set_svf off


if { ! [ file exists netlist ] } { file mkdir netlist }
write -f ddc -hierarchy -output netlist/$design_name.ddc
write -f verilog -hierarchy -output netlist/$design_name.v
write_sdc netlist/$design_name.sdc
write_sdf netlist/$design_name.sdf
##############################################################
if { [ file exists netlist/${design_name}.v ] } {
	echo "" > _vmake
}
#if { [info exists ::env(STARTGUI)   ] } {
	start_gui
#} else {
 #quit

