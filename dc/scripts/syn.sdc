

set CLK_PERIOD 3.3


create_clock -period $CLK_PERIOD -name clk [get_ports clk]
set_clock_uncertainty -setup 0.3 [get_clocks clk]
set_clock_latency -max -source 2 [get_clocks clk]
set_clock_latency -max 1 [get_clocks clk]
set_clock_transition 0.1 [get_clocks clk]


set_input_delay [expr {$CLK_PERIOD*0.85}] -max -clock clk [all_inputs]
set_input_delay [expr {$CLK_PERIOD*0.2}]  -max -clock clk [get_ports reset]
set_input_delay [expr {$CLK_PERIOD*0.1}]  -max -clock clk [get_ports "portain pdata  expdin"]


set_output_delay [expr { $CLK_PERIOD*0.8}] -max -clock clk [all_outputs]
set_output_delay [expr { $CLK_PERIOD*0.1}] -max -clock clk [get_ports expdout]



