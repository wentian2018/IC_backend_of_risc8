###################################################################

# Created by write_sdc on Thu May 16 16:14:30 2019

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -period 3.3  -waveform {0 1.65}
set_clock_latency -max 1  [get_clocks clk]
set_clock_latency -source -max 2  [get_clocks clk]
set_clock_uncertainty -setup 0.3  [get_clocks clk]
set_clock_transition -min -fall 0.1 [get_clocks clk]
set_clock_transition -min -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_clock_transition -max -rise 0.1 [get_clocks clk]
group_path -weight 5  -name clk  -to [get_clocks clk]
group_path -name COMB  -from [list [get_ports clk] [get_ports reset] [get_ports {pdata[11]}]         \
[get_ports {pdata[10]}] [get_ports {pdata[9]}] [get_ports {pdata[8]}]          \
[get_ports {pdata[7]}] [get_ports {pdata[6]}] [get_ports {pdata[5]}]           \
[get_ports {pdata[4]}] [get_ports {pdata[3]}] [get_ports {pdata[2]}]           \
[get_ports {pdata[1]}] [get_ports {pdata[0]}] [get_ports {portain[7]}]         \
[get_ports {portain[6]}] [get_ports {portain[5]}] [get_ports {portain[4]}]     \
[get_ports {portain[3]}] [get_ports {portain[2]}] [get_ports {portain[1]}]     \
[get_ports {portain[0]}] [get_ports {expdin[7]}] [get_ports {expdin[6]}]       \
[get_ports {expdin[5]}] [get_ports {expdin[4]}] [get_ports {expdin[3]}]        \
[get_ports {expdin[2]}] [get_ports {expdin[1]}] [get_ports {expdin[0]}]]  -to [list [get_ports {paddr[10]}] [get_ports {paddr[9]}] [get_ports           \
{paddr[8]}] [get_ports {paddr[7]}] [get_ports {paddr[6]}] [get_ports           \
{paddr[5]}] [get_ports {paddr[4]}] [get_ports {paddr[3]}] [get_ports           \
{paddr[2]}] [get_ports {paddr[1]}] [get_ports {paddr[0]}] [get_ports           \
{portbout[7]}] [get_ports {portbout[6]}] [get_ports {portbout[5]}] [get_ports  \
{portbout[4]}] [get_ports {portbout[3]}] [get_ports {portbout[2]}] [get_ports  \
{portbout[1]}] [get_ports {portbout[0]}] [get_ports {portcout[7]}] [get_ports  \
{portcout[6]}] [get_ports {portcout[5]}] [get_ports {portcout[4]}] [get_ports  \
{portcout[3]}] [get_ports {portcout[2]}] [get_ports {portcout[1]}] [get_ports  \
{portcout[0]}] [get_ports {expdout[7]}] [get_ports {expdout[6]}] [get_ports    \
{expdout[5]}] [get_ports {expdout[4]}] [get_ports {expdout[3]}] [get_ports     \
{expdout[2]}] [get_ports {expdout[1]}] [get_ports {expdout[0]}] [get_ports     \
{expaddr[6]}] [get_ports {expaddr[5]}] [get_ports {expaddr[4]}] [get_ports     \
{expaddr[3]}] [get_ports {expaddr[2]}] [get_ports {expaddr[1]}] [get_ports     \
{expaddr[0]}] [get_ports expread] [get_ports expwrite] [get_ports {debugw[7]}] \
[get_ports {debugw[6]}] [get_ports {debugw[5]}] [get_ports {debugw[4]}]        \
[get_ports {debugw[3]}] [get_ports {debugw[2]}] [get_ports {debugw[1]}]        \
[get_ports {debugw[0]}] [get_ports {debugpc[10]}] [get_ports {debugpc[9]}]     \
[get_ports {debugpc[8]}] [get_ports {debugpc[7]}] [get_ports {debugpc[6]}]     \
[get_ports {debugpc[5]}] [get_ports {debugpc[4]}] [get_ports {debugpc[3]}]     \
[get_ports {debugpc[2]}] [get_ports {debugpc[1]}] [get_ports {debugpc[0]}]     \
[get_ports {debuginst[11]}] [get_ports {debuginst[10]}] [get_ports             \
{debuginst[9]}] [get_ports {debuginst[8]}] [get_ports {debuginst[7]}]          \
[get_ports {debuginst[6]}] [get_ports {debuginst[5]}] [get_ports               \
{debuginst[4]}] [get_ports {debuginst[3]}] [get_ports {debuginst[2]}]          \
[get_ports {debuginst[1]}] [get_ports {debuginst[0]}] [get_ports               \
{debugstatus[7]}] [get_ports {debugstatus[6]}] [get_ports {debugstatus[5]}]    \
[get_ports {debugstatus[4]}] [get_ports {debugstatus[3]}] [get_ports           \
{debugstatus[2]}] [get_ports {debugstatus[1]}] [get_ports {debugstatus[0]}]]
group_path -name INPUTS  -from [list [get_ports clk] [get_ports reset] [get_ports {pdata[11]}]         \
[get_ports {pdata[10]}] [get_ports {pdata[9]}] [get_ports {pdata[8]}]          \
[get_ports {pdata[7]}] [get_ports {pdata[6]}] [get_ports {pdata[5]}]           \
[get_ports {pdata[4]}] [get_ports {pdata[3]}] [get_ports {pdata[2]}]           \
[get_ports {pdata[1]}] [get_ports {pdata[0]}] [get_ports {portain[7]}]         \
[get_ports {portain[6]}] [get_ports {portain[5]}] [get_ports {portain[4]}]     \
[get_ports {portain[3]}] [get_ports {portain[2]}] [get_ports {portain[1]}]     \
[get_ports {portain[0]}] [get_ports {expdin[7]}] [get_ports {expdin[6]}]       \
[get_ports {expdin[5]}] [get_ports {expdin[4]}] [get_ports {expdin[3]}]        \
[get_ports {expdin[2]}] [get_ports {expdin[1]}] [get_ports {expdin[0]}]]
group_path -name OUTPUTS  -to [list [get_ports {paddr[10]}] [get_ports {paddr[9]}] [get_ports           \
{paddr[8]}] [get_ports {paddr[7]}] [get_ports {paddr[6]}] [get_ports           \
{paddr[5]}] [get_ports {paddr[4]}] [get_ports {paddr[3]}] [get_ports           \
{paddr[2]}] [get_ports {paddr[1]}] [get_ports {paddr[0]}] [get_ports           \
{portbout[7]}] [get_ports {portbout[6]}] [get_ports {portbout[5]}] [get_ports  \
{portbout[4]}] [get_ports {portbout[3]}] [get_ports {portbout[2]}] [get_ports  \
{portbout[1]}] [get_ports {portbout[0]}] [get_ports {portcout[7]}] [get_ports  \
{portcout[6]}] [get_ports {portcout[5]}] [get_ports {portcout[4]}] [get_ports  \
{portcout[3]}] [get_ports {portcout[2]}] [get_ports {portcout[1]}] [get_ports  \
{portcout[0]}] [get_ports {expdout[7]}] [get_ports {expdout[6]}] [get_ports    \
{expdout[5]}] [get_ports {expdout[4]}] [get_ports {expdout[3]}] [get_ports     \
{expdout[2]}] [get_ports {expdout[1]}] [get_ports {expdout[0]}] [get_ports     \
{expaddr[6]}] [get_ports {expaddr[5]}] [get_ports {expaddr[4]}] [get_ports     \
{expaddr[3]}] [get_ports {expaddr[2]}] [get_ports {expaddr[1]}] [get_ports     \
{expaddr[0]}] [get_ports expread] [get_ports expwrite] [get_ports {debugw[7]}] \
[get_ports {debugw[6]}] [get_ports {debugw[5]}] [get_ports {debugw[4]}]        \
[get_ports {debugw[3]}] [get_ports {debugw[2]}] [get_ports {debugw[1]}]        \
[get_ports {debugw[0]}] [get_ports {debugpc[10]}] [get_ports {debugpc[9]}]     \
[get_ports {debugpc[8]}] [get_ports {debugpc[7]}] [get_ports {debugpc[6]}]     \
[get_ports {debugpc[5]}] [get_ports {debugpc[4]}] [get_ports {debugpc[3]}]     \
[get_ports {debugpc[2]}] [get_ports {debugpc[1]}] [get_ports {debugpc[0]}]     \
[get_ports {debuginst[11]}] [get_ports {debuginst[10]}] [get_ports             \
{debuginst[9]}] [get_ports {debuginst[8]}] [get_ports {debuginst[7]}]          \
[get_ports {debuginst[6]}] [get_ports {debuginst[5]}] [get_ports               \
{debuginst[4]}] [get_ports {debuginst[3]}] [get_ports {debuginst[2]}]          \
[get_ports {debuginst[1]}] [get_ports {debuginst[0]}] [get_ports               \
{debugstatus[7]}] [get_ports {debugstatus[6]}] [get_ports {debugstatus[5]}]    \
[get_ports {debugstatus[4]}] [get_ports {debugstatus[3]}] [get_ports           \
{debugstatus[2]}] [get_ports {debugstatus[1]}] [get_ports {debugstatus[0]}]]
set_input_delay -clock clk  -max 2.805  [get_ports clk]
set_input_delay -clock clk  -max 0.66  [get_ports reset]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[11]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[10]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[9]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[8]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[7]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[6]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[5]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[4]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[3]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[2]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[1]}]
set_input_delay -clock clk  -max 0.33  [get_ports {pdata[0]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[7]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[6]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[5]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[4]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[3]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[2]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[1]}]
set_input_delay -clock clk  -max 0.33  [get_ports {portain[0]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[7]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[6]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[5]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[4]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[3]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[2]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[1]}]
set_input_delay -clock clk  -max 0.33  [get_ports {expdin[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[10]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[9]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[8]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[7]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {paddr[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[7]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portbout[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[7]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {portcout[0]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[7]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[6]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[5]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[4]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[3]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[2]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[1]}]
set_output_delay -clock clk  -max 0.33  [get_ports {expdout[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports {expaddr[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {expaddr[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {expaddr[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {expaddr[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {expaddr[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {expaddr[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {expaddr[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports expread]
set_output_delay -clock clk  -max 2.64  [get_ports expwrite]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[7]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugw[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[10]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[9]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[8]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[7]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugpc[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[11]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[10]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[9]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[8]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[7]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debuginst[0]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[7]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[6]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[5]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[4]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[3]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[2]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[1]}]
set_output_delay -clock clk  -max 2.64  [get_ports {debugstatus[0]}]
