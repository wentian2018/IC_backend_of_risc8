# risc8
Derivative version of the free risc8 micro core originally by Tom Coonan.

As the original code was distributed under GPLv2 or later license, a choice
was made to license this derivate work under GPLv3.

The original code was once published on www.mindspring.com, which is no
longer available. A copy of the page along with the code archive and
documentation is still available under web archive (e.g.
<https://web.archive.org/web/20120118210705/http://www.mindspring.com/~tcoonan/newpic.html>).

Simulation
----------

The instructions how to simulate the core follow. The instructions are for the [Icarus Verilog](http://iverilog.icarus.com), which should be easily installed on a Linux box (e.g. for Ubuntu systems no harder than `apt-get install iverilog`).

    # Create and enter the simulation folder
    mkdir sim && cd sim
    
    # Compile the sources (RTL and testbench)
    iverilog -o test -s test  ../hdl/verilog/*.v  ../verif/hdl/verilog/*.v
    
    # Create symlinks to the memory contents files
    ln -s ../verif/other/sindata.hex sindata.hex
    ln -s ../verif/other/basic.rom basic.rom
    
    # Run the simulation
    ./test
    >Reading in SIN data for example DDS in EXP.V from sindata.hex
    >Free-RISC8.  Version 1.0
    >Free-RISC8 1.0.  This is the BASIC CONFIDENCE TEST.
    >Loading program memory with basic.rom
    >VCD info: dumpfile risc8.vcd opened for output.
    >MONITOR_OUTPUT_SIGNATURE: Expected output observed on PORTB: 00
    >...
    >MONITOR_PORTB: Port B changes to: 08
    >Done monitoring for output signature.  9 Matches, 0 Mismatches.
    >SUCCESS.
    >End of simulation signalled.  Killing simulation in a moment.
    
    # To inspect signal waveforms using GTKwave
    gtkwave -f risc8.vcd

