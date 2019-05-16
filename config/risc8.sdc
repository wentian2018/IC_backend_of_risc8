###################### start of parameters ########################

#################### in-core timing margin ########################
set setup_margin  2.0
set hold_margin   0.8

#################### on-chip timing specifications ################
# 1MHz on-chip clock source
set clock_period 1000
# setup/hold time this core demands at inputs from other on-chip circuits
set oc_tiSU 0.5
set oc_tiHD 0.3
# delay/retention-time this core promises to other on-chip components
set oc_toDL 10
set oc_toRT 1.0
# transition time at inputs from on-chip components
set oc_tiTR 0.4
# capacitive load, i.e. input capacitance from on-chip components
set oc_load 0.4
# transition time promise to other on-chip components
set oc_toTR 0.4

# list of on-chip IO ports
set oc_inputs  [get_ports {}]
set oc_outputs [get_ports {cs_clk ss_clk fast_off ssen_n amp_en fault_o pg}]
set oc_async_inputs [get_ports {bgok oc sc fault_i en}]

########### external (off-chip) timing specifications #############
# setup/hold time this core demands from external inputs
set ext_tiSU 0.5
set ext_tiH  0.3
# hold-time this core promises to other external components
set ext_toDL 10
set ext_toRT 1.0
# transition time at inputs from input pads
set ext_tiTR 2.0
# capacitive load, i.e. input capacitance from output pads
set ext_load 2.0
# transition time promise to other external components
set ext_toTR 1.0

# list of external IO ports
set ext_inputs  [get_ports {} ]
set ext_outputs [get_ports {} ]
set ext_async_inputs [get_ports {}]

# clock mesh are treated as ideal net during synthesis
# delay time in early/late corners
set ck_tiDL_early    	0.6
set ck_tiDL_late     	1.5
# transition time fast/slow corners
set ck_tiTR_fast     	0.4
set ck_tiTR_slow     	1.0

# clock mesh are treated as ideal net during synthesis
# delay time in early/late corners
set ideal_tiDL_early    0.2
set ideal_tiDL_late     1.0
# transition time fast/slow corners
set ideal_tiTR_fast     0.05
set ideal_tiTR_slow     0.4


####################### end of parameters #########################

# main clock
create_clock -period $clock_period -name clk [get_ports ck1m]
if { $synopsys_program_name == "dc_shell" } {
    # optionally, use a shorter clock period during synthesis
    #set clock_period [expr $clock_period * 0.8]

    # 
    set_ideal_network {ck1m}
    # setup-time worst case for dff
    set_clock_latency    -max $ck_tiDL_early clk
    set_clock_transition -max $ck_tiTR_fast  clk
    # hold-time worst case for dff
    set_clock_latency    -min $ck_tiDL_late  clk
    set_clock_transition -min $ck_tiTR_slow  clk
}

# setup/hold margin for circuits in the core
set_clock_uncertainty -setup $setup_margin [get_clocks clk]
set_clock_uncertainty -hold  $hold_margin  [get_clocks clk]

# virtual clock for on-chip IO
create_clock -period $clock_period -name vclk_oc
# on-chip IO
if { [llength $oc_inputs] > 0 } {
    set_input_delay  -clock vclk_oc -max [expr $clock_period - $oc_tiSU]    $oc_inputs
    set_input_delay  -clock vclk_oc -min $oc_tiHD                           $oc_inputs
    set_input_transition $oc_tiTR                                           $oc_inputs
    set_load 0.1                                                            $oc_inputs
}
if { [llength $oc_outputs] > 0 } {
    set_output_delay -clock vclk_oc -max [expr $clock_period - $oc_toDL]    $oc_outputs
    set_output_delay -clock vclk_oc -min [expr -1 * $oc_toRT ]              $oc_outputs
    set_load -max $oc_load                                                  $oc_outputs
    set_load -min 0                                                         $oc_outputs
    set_max_transition $oc_toTR                                             $oc_outputs
}

# virtual clock for external IO
create_clock -period $clock_period -name vclk_oc
# external IO
if { [llength $ext_inputs] > 0 } {
    set_input_delay  -clock vclk_oc -max [expr $clock_period - $ext_tiSU]   $ext_inputs
    set_input_delay  -clock vclk_oc -min $ext_tiHD                          $ext_inputs
    set_input_transition $ext_tiTR                                          $ext_inputs
    set_load 0.6                                                            $ext_inputs
}
if { [llength $ext_outputs] > 0 } {
    set_output_delay -clock vclk_oc -max [expr $clock_period - $ext_toDL]   $ext_outputs
    set_output_delay -clock vclk_oc -min [expr -1 * $ext_toRT ]             $ext_outputs
    set_load -max $ext_load                                                 $ext_outputs
    set_load -min 0                                                         $ext_outputs
    set_max_transition $ext_toTR                                            $ext_outputs
}


# asynchronous inputs
if { [llength $oc_async_inputs] > 0 } {
    set_false_path -from $oc_async_inputs
}
if { [llength $ext_async_inputs] > 0 } {
    set_false_path -from $ext_async_inputs
}

# max transition of all internal nets (clocked by clk)
set_max_transition 1.0 -data_path [get_clock clk]

if { $synopsys_program_name == "dc_shell" } {
    # reset network are treated as ideal in DC
    set all_ideals {async_reset_inst/rstn_o_reg/Q \
                    async_reset_inst/rstn_o_reg/QN \
                    }
    set_ideal_network $all_ideals
    set_ideal_latency    -min $ideal_tiDL_early $all_ideals
    set_ideal_transition -min $ideal_tiTR_fast  $all_ideals
    set_ideal_latency    -max $ideal_tiDL_late  $all_ideals
    set_ideal_transition -max $ideal_tiTR_slow  $all_ideals
}

if { $synopsys_program_name == "pt_shell" } {
    # always consider clock latency in prime time
    set_propagated_clock [all_clocks]
} elseif { $synopsys_program_name == "icc_shell" } {
    echo "In ICC, should turn on propagated clock after CTS."
}

if { [llength $oc_inputs] > 0 } {
    group_path -name "IN"  -from $oc_inputs
}
if { [llength $oc_outputs] > 0 } {
    group_path -name "OUT" -to   $oc_outputs
}
if { [llength $ext_inputs] > 0 } {
    group_path -name "EXT_IN"  -from $ext_inputs
}
if { [llength $ext_outputs] > 0 } {
    group_path -name "EXT_OUT" -to   $ext_outputs
}

