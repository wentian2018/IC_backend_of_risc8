###################################################################

# Created by write_sdc on Wed Oct 18 08:44:02 2006

###################################################################
set sdc_version 1.7

create_clock [get_ports pclk]  -name PCI_CLK  -period 15  -waveform {0 7.5}
set_clock_uncertainty 0.1  [get_clocks PCI_CLK]
create_clock [get_ports sys_clk]  -name SYS_CLK  -period 8  -waveform {0 4}
set_clock_uncertainty 0.1  [get_clocks SYS_CLK]
create_clock [get_ports sys_2x_clk]  -name SYS_2x_CLK  -period 4  -waveform {0 2}
set_clock_uncertainty 0.1  [get_clocks SYS_2x_CLK]
create_clock [get_ports sdram_clk]  -name SDRAM_CLK  -period 7.5  -waveform {0 3.75}
set_clock_uncertainty 0.1  [get_clocks SDRAM_CLK]
create_generated_clock [get_ports sd_CK]  -name SD_DDR_CLK  -source [get_ports sdram_clk]  -divide_by 1
set_clock_uncertainty 0.05  [get_clocks SD_DDR_CLK]

set_clock_gating_check -rise -setup 0.3 BLENDER
set_clock_gating_check -fall -setup 0.3 BLENDER
set_clock_gating_check -rise -hold 0.3 BLENDER
set_clock_gating_check -fall -hold 0.3 BLENDER

set_false_path -from [get_clocks SYS_CLK]    -to [get_clocks PCI_CLK]
set_false_path -from [get_clocks PCI_CLK]    -to [get_clocks SYS_CLK]
set_false_path -from [get_clocks SYS_2x_CLK] -to [get_clocks PCI_CLK]
set_false_path -from [get_clocks PCI_CLK]    -to [get_clocks SYS_2x_CLK]
set_false_path -from [get_clocks PCI_CLK]    -to [get_clocks SDRAM_CLK]
set_false_path -from [get_clocks SDRAM_CLK]  -to [get_clocks PCI_CLK]
set_false_path -from [get_clocks SYS_CLK]    -to [get_clocks SDRAM_CLK]
set_false_path -from [get_clocks SDRAM_CLK]  -to [get_clocks SYS_CLK]
set_false_path -from [get_clocks SYS_2x_CLK] -to [get_clocks SDRAM_CLK]
set_false_path -from [get_clocks SDRAM_CLK]  -to [get_clocks SYS_2x_CLK]
set_false_path -from [get_clocks PCI_CLK]    -to [get_clocks SD_DDR_CLK]
set_false_path -from [get_clocks SYS_CLK]    -to [get_clocks SD_DDR_CLK]
set_false_path -from [get_clocks SYS_2x_CLK] -to [get_clocks SD_DDR_CLK]

set_driving_cell [get_ports pclk] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell [get_ports sys_clk] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell [get_ports sys_2x_clk] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell [get_ports sdram_clk] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell [get_ports pci_rst_n] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell [get_ports sdram_rst_n] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell [get_ports sys_rst_n] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell [get_ports sys_2x_rst_n] \
        -library cb13fs120_tsmc_max \
        -lib_cell bufbd7 \
        -input_transition_rise 0.2 \
        -input_transition_fall 0.2

set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
test_mode]

set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
scan_en]

set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pidsel]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pgnt_n]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[15]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[14]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[13]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[12]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[11]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[10]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[9]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[8]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[7]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[6]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[5]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[4]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[3]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[2]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[1]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pad_in[0]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
ppar_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pc_be_in[3]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pc_be_in[2]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pc_be_in[1]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
{pc_be_in[0]}]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pframe_n_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
ptrdy_n_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pirdy_n_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pdevsel_n_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pstop_n_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pperr_n_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pserr_n_in]
set_driving_cell -lib_cell pc3b03 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 1 -input_transition_fall 1 [get_ports     \
pm66en]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[15]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[14]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[13]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[12]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[11]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[10]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[9]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[8]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[7]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[6]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[5]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[4]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[3]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[2]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[1]}]
set_driving_cell -lib_cell pc3b05 -library cb13io320_tsmc_max -pin CIN         \
-from_pin PAD -input_transition_rise 0.5 -input_transition_fall 0.5 [get_ports \
{sd_DQ_in[0]}]
set_load -pin_load 0.475 [get_ports {pad_out[15]}]
set_load -pin_load 0.475 [get_ports {pad_out[14]}]
set_load -pin_load 0.475 [get_ports {pad_out[13]}]
set_load -pin_load 0.475 [get_ports {pad_out[12]}]
set_load -pin_load 0.475 [get_ports {pad_out[11]}]
set_load -pin_load 0.475 [get_ports {pad_out[10]}]
set_load -pin_load 0.475 [get_ports {pad_out[9]}]
set_load -pin_load 0.475 [get_ports {pad_out[8]}]
set_load -pin_load 0.475 [get_ports {pad_out[7]}]
set_load -pin_load 0.475 [get_ports {pad_out[6]}]
set_load -pin_load 0.475 [get_ports {pad_out[5]}]
set_load -pin_load 0.475 [get_ports {pad_out[4]}]
set_load -pin_load 0.475 [get_ports {pad_out[3]}]
set_load -pin_load 0.475 [get_ports {pad_out[2]}]
set_load -pin_load 0.475 [get_ports {pad_out[1]}]
set_load -pin_load 0.475 [get_ports {pad_out[0]}]
set_load -pin_load 0.475 [get_ports pad_en]
set_load -pin_load 0.475 [get_ports ppar_out]
set_load -pin_load 0.475 [get_ports ppar_en]
set_load -pin_load 0.475 [get_ports {pc_be_out[3]}]
set_load -pin_load 0.475 [get_ports {pc_be_out[2]}]
set_load -pin_load 0.475 [get_ports {pc_be_out[1]}]
set_load -pin_load 0.475 [get_ports {pc_be_out[0]}]
set_load -pin_load 0.475 [get_ports pc_be_en]
set_load -pin_load 0.475 [get_ports pframe_n_out]
set_load -pin_load 0.475 [get_ports pframe_n_en]
set_load -pin_load 0.475 [get_ports ptrdy_n_out]
set_load -pin_load 0.475 [get_ports ptrdy_n_en]
set_load -pin_load 0.475 [get_ports pirdy_n_out]
set_load -pin_load 0.475 [get_ports pirdy_n_en]
set_load -pin_load 0.475 [get_ports pdevsel_n_out]
set_load -pin_load 0.475 [get_ports pdevsel_n_en]
set_load -pin_load 0.475 [get_ports pstop_n_out]
set_load -pin_load 0.475 [get_ports pstop_n_en]
set_load -pin_load 0.475 [get_ports pperr_n_out]
set_load -pin_load 0.475 [get_ports pperr_n_en]
set_load -pin_load 0.475 [get_ports pserr_n_out]
set_load -pin_load 0.475 [get_ports pserr_n_en]
set_load -pin_load 0.475 [get_ports preq_n]
set_load -pin_load 0.14 [get_ports {sd_A[9]}]
set_load -pin_load 0.14 [get_ports {sd_A[8]}]
set_load -pin_load 0.14 [get_ports {sd_A[7]}]
set_load -pin_load 0.14 [get_ports {sd_A[6]}]
set_load -pin_load 0.14 [get_ports {sd_A[5]}]
set_load -pin_load 0.14 [get_ports {sd_A[4]}]
set_load -pin_load 0.14 [get_ports {sd_A[3]}]
set_load -pin_load 0.14 [get_ports {sd_A[2]}]
set_load -pin_load 0.14 [get_ports {sd_A[1]}]
set_load -pin_load 0.14 [get_ports {sd_A[0]}]
set_load -pin_load 0.14 [get_ports sd_CK]
set_load -pin_load 0.14 [get_ports sd_CKn]
set_load -pin_load 0.14 [get_ports sd_LD]
set_load -pin_load 0.14 [get_ports sd_RW]
set_load -pin_load 0.14 [get_ports {sd_BWS[1]}]
set_load -pin_load 0.14 [get_ports {sd_BWS[0]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[15]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[14]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[13]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[12]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[11]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[10]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[9]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[8]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[7]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[6]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[5]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[4]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[3]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[2]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[1]}]
set_load -pin_load 0.475 [get_ports {sd_DQ_out[0]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[15]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[14]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[13]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[12]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[11]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[10]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[9]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[8]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[7]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[6]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[5]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[4]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[3]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[2]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[1]}]
set_load -pin_load 1.725 [get_ports {sd_DQ_en[0]}]
set_input_delay -clock PCI_CLK 1    [get_ports pci_rst_n]
set_input_delay -clock SDRAM_CLK 1  [get_ports sdram_rst_n]
set_input_delay -clock SYS_CLK 1    [get_ports sys_rst_n]
set_input_delay -clock SYS_2x_CLK 1 [get_ports sys_2x_rst_n]
set_input_delay -clock PCI_CLK  3  [get_ports scan_en]
set_input_delay -clock PCI_CLK  3  [get_ports test_mode]
set_input_delay -clock PCI_CLK  8  [get_ports pidsel]
set_input_delay -clock PCI_CLK  8  [get_ports pgnt_n]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[15]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[14]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[13]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[12]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[11]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[10]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[9]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[8]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[7]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[6]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[5]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[4]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[3]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[2]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[1]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pad_in[0]}]
set_input_delay -clock PCI_CLK  8  [get_ports ppar_in]
set_input_delay -clock PCI_CLK  8  [get_ports {pc_be_in[3]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pc_be_in[2]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pc_be_in[1]}]
set_input_delay -clock PCI_CLK  8  [get_ports {pc_be_in[0]}]
set_input_delay -clock PCI_CLK  8  [get_ports pframe_n_in]
set_input_delay -clock PCI_CLK  8  [get_ports ptrdy_n_in]
set_input_delay -clock PCI_CLK  8  [get_ports pirdy_n_in]
set_input_delay -clock PCI_CLK  8  [get_ports pdevsel_n_in]
set_input_delay -clock PCI_CLK  8  [get_ports pstop_n_in]
set_input_delay -clock PCI_CLK  8  [get_ports pperr_n_in]
set_input_delay -clock PCI_CLK  8  [get_ports pserr_n_in]
set_input_delay -clock PCI_CLK  8  [get_ports pm66en]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[15]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[14]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[13]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[12]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[11]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[10]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[9]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[8]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[7]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[6]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[5]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[4]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[3]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[2]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[1]}]
set_input_delay -clock SDRAM_CLK  3  [get_ports {sd_DQ_in[0]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[15]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[14]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[13]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[12]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[11]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[10]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[9]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[8]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[7]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[6]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[5]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[4]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[3]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[2]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[1]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pad_out[0]}]
set_output_delay -clock PCI_CLK  7  [get_ports pad_en]
set_output_delay -clock PCI_CLK  7  [get_ports ppar_out]
set_output_delay -clock PCI_CLK  7  [get_ports ppar_en]
set_output_delay -clock PCI_CLK  7  [get_ports {pc_be_out[3]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pc_be_out[2]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pc_be_out[1]}]
set_output_delay -clock PCI_CLK  7  [get_ports {pc_be_out[0]}]
set_output_delay -clock PCI_CLK  7  [get_ports pc_be_en]
set_output_delay -clock PCI_CLK  7  [get_ports pframe_n_out]
set_output_delay -clock PCI_CLK  7  [get_ports pframe_n_en]
set_output_delay -clock PCI_CLK  7  [get_ports ptrdy_n_out]
set_output_delay -clock PCI_CLK  7  [get_ports ptrdy_n_en]
set_output_delay -clock PCI_CLK  7  [get_ports pirdy_n_out]
set_output_delay -clock PCI_CLK  7  [get_ports pirdy_n_en]
set_output_delay -clock PCI_CLK  7  [get_ports pdevsel_n_out]
set_output_delay -clock PCI_CLK  7  [get_ports pdevsel_n_en]
set_output_delay -clock PCI_CLK  7  [get_ports pstop_n_out]
set_output_delay -clock PCI_CLK  7  [get_ports pstop_n_en]
set_output_delay -clock PCI_CLK  7  [get_ports pperr_n_out]
set_output_delay -clock PCI_CLK  7  [get_ports pperr_n_en]
set_output_delay -clock PCI_CLK  7  [get_ports pserr_n_out]
set_output_delay -clock PCI_CLK  7  [get_ports pserr_n_en]
set_output_delay -clock PCI_CLK  7  [get_ports preq_n]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[9]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[8]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[7]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[6]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[5]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[4]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[3]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[2]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[1]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_A[0]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_BWS[1]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_BWS[0]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[15]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[14]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[13]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[12]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[11]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[10]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[9]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[8]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[7]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[6]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[5]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[4]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[3]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[2]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[1]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_out[0]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[15]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[14]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[13]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[12]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[11]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[10]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[9]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[8]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[7]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[6]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[5]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[4]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[3]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[2]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[1]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports {sd_DQ_en[0]}]
set_output_delay -clock SD_DDR_CLK  2  [get_ports sd_LD]
set_output_delay -clock SD_DDR_CLK  2  [get_ports sd_RW]
