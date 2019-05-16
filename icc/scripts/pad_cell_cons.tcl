# Create corners and P/G pads
create_cell {cornerll cornerlr cornerul cornerur} pfrelr
create_cell {vss1left vss1right vss1top vss1bottom} pv0i
create_cell {vdd1left vdd1right vdd1top vdd1bottom} pvdi
create_cell {vss2left vss2right vss2top vss2bottom} pv0a
create_cell {vdd2left vdd2right vdd2top vdd2bottom} pvda

# Define corner pad locations
set_pad_physical_constraints -pad_name "cornerul" -side 1
set_pad_physical_constraints -pad_name "cornerur" -side 2
set_pad_physical_constraints -pad_name "cornerlr" -side 3
set_pad_physical_constraints -pad_name "cornerll" -side 4

# Define signal and PG  pad locations

# Left side
set_pad_physical_constraints -pad_name "pad_iopad_0" -side 1 -order 1
set_pad_physical_constraints -pad_name "pad_iopad_1" -side 1 -order 2
set_pad_physical_constraints -pad_name "pad_iopad_2" -side 1 -order 3
set_pad_physical_constraints -pad_name "pad_iopad_3" -side 1 -order 4
set_pad_physical_constraints -pad_name "pad_iopad_4" -side 1 -order 5
set_pad_physical_constraints -pad_name "pad_iopad_5" -side 1 -order 6
set_pad_physical_constraints -pad_name "pad_iopad_6" -side 1 -order 7
set_pad_physical_constraints -pad_name "pad_iopad_7" -side 1 -order 8
set_pad_physical_constraints -pad_name "pad_iopad_8" -side 1 -order 9
set_pad_physical_constraints -pad_name "vdd2left" -side 1 -order 10
set_pad_physical_constraints -pad_name "vdd1left" -side 1 -order 11
set_pad_physical_constraints -pad_name "vss1left" -side 1 -order 12
set_pad_physical_constraints -pad_name "vss2left" -side 1 -order 13
set_pad_physical_constraints -pad_name "pad_iopad_9" -side 1 -order 14
set_pad_physical_constraints -pad_name "pad_iopad_10" -side 1 -order 15
set_pad_physical_constraints -pad_name "pad_iopad_11" -side 1 -order 16
set_pad_physical_constraints -pad_name "pad_iopad_12" -side 1 -order 17
set_pad_physical_constraints -pad_name "pad_iopad_13" -side 1 -order 18
set_pad_physical_constraints -pad_name "pad_iopad_14" -side 1 -order 19
set_pad_physical_constraints -pad_name "pad_iopad_15" -side 1 -order 20
set_pad_physical_constraints -pad_name "pclk_iopad" -side 1 -order 21
set_pad_physical_constraints -pad_name "pll_bypass_iopad" -side 1 -order 22

# Top side
set_pad_physical_constraints -pad_name "pc_be_iopad_0" -side 2 -order 1
set_pad_physical_constraints -pad_name "pc_be_iopad_1" -side 2 -order 2
set_pad_physical_constraints -pad_name "pc_be_iopad_2" -side 2 -order 3
set_pad_physical_constraints -pad_name "pc_be_iopad_3" -side 2 -order 4
set_pad_physical_constraints -pad_name "pdevsel_n_iopad" -side 2 -order 5
set_pad_physical_constraints -pad_name "pframe_n_iopad" -side 2 -order 6
set_pad_physical_constraints -pad_name "pgnt_n_iopad" -side 2 -order 7
set_pad_physical_constraints -pad_name "pidsel_iopad" -side 2 -order 8
set_pad_physical_constraints -pad_name "pirdy_n_iopad" -side 2 -order 9
set_pad_physical_constraints -pad_name "vdd2top" -side 2 -order 10
set_pad_physical_constraints -pad_name "vdd1top" -side 2 -order 11
set_pad_physical_constraints -pad_name "vss1top" -side 2 -order 12
set_pad_physical_constraints -pad_name "vss2top" -side 2 -order 13
set_pad_physical_constraints -pad_name "ppar_iopad" -side 2 -order 14
set_pad_physical_constraints -pad_name "pperr_n_iopad" -side 2 -order 15
set_pad_physical_constraints -pad_name "preq_n_iopad" -side 2 -order 16
set_pad_physical_constraints -pad_name "prst_n_iopad" -side 2 -order 17
set_pad_physical_constraints -pad_name "pstop_n_iopad" -side 2 -order 18
set_pad_physical_constraints -pad_name "pserr_n_iopad" -side 2 -order 19
set_pad_physical_constraints -pad_name "ptrdy_n_iopad" -side 2 -order 20
set_pad_physical_constraints -pad_name "sys_clk_iopad" -side 2 -order 21
set_pad_physical_constraints -pad_name "sdr_clk_iopad" -side 2 -order 22

# Right side
set_pad_physical_constraints -pad_name "sdram_A_iopad_0" -side 3 -order 1
set_pad_physical_constraints -pad_name "sdram_A_iopad_1" -side 3 -order 2
set_pad_physical_constraints -pad_name "sdram_A_iopad_2" -side 3 -order 3
set_pad_physical_constraints -pad_name "sdram_A_iopad_3" -side 3 -order 4
set_pad_physical_constraints -pad_name "sdram_A_iopad_4" -side 3 -order 5
set_pad_physical_constraints -pad_name "sdram_A_iopad_5" -side 3 -order 6
set_pad_physical_constraints -pad_name "sdram_A_iopad_6" -side 3 -order 7
set_pad_physical_constraints -pad_name "sdram_A_iopad_7" -side 3 -order 8
set_pad_physical_constraints -pad_name "sdram_A_iopad_8" -side 3 -order 9
set_pad_physical_constraints -pad_name "vdd2right" -side 3 -order 10
set_pad_physical_constraints -pad_name "vdd1right" -side 3 -order 11
set_pad_physical_constraints -pad_name "vss1right" -side 3 -order 12
set_pad_physical_constraints -pad_name "vss2right" -side 3 -order 13
set_pad_physical_constraints -pad_name "sdram_A_iopad_9" -side 3 -order 14
set_pad_physical_constraints -pad_name "sdram_BWS_iopad_0" -side 3 -order 15
set_pad_physical_constraints -pad_name "sdram_BWS_iopad_1" -side 3 -order 16
set_pad_physical_constraints -pad_name "sdram_LD_iopad" -side 3 -order 17
set_pad_physical_constraints -pad_name "sdram_RW_iopad" -side 3 -order 18
set_pad_physical_constraints -pad_name "powersave_iopad" -side 3 -order 19
set_pad_physical_constraints -pad_name "scan_en_iopad" -side 3 -order 20
set_pad_physical_constraints -pad_name "pm66en_iopad" -side 3 -order 21
set_pad_physical_constraints -pad_name "test_mode_iopad" -side 3 -order 22

# Bottom side
set_pad_physical_constraints -pad_name "sdram_CK_iopad" -side 4 -order 1
set_pad_physical_constraints -pad_name "sdram_CKn_iopad" -side 4 -order 2
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_0" -side 4 -order 3
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_1" -side 4 -order 4
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_2" -side 4 -order 5
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_3" -side 4 -order 6
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_4" -side 4 -order 7
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_5" -side 4 -order 8
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_6" -side 4 -order 9
set_pad_physical_constraints -pad_name "vdd2bottom" -side 4 -order 10
set_pad_physical_constraints -pad_name "vdd1bottom" -side 4 -order 11
set_pad_physical_constraints -pad_name "vss1bottom" -side 4 -order 12
set_pad_physical_constraints -pad_name "vss2bottom" -side 4 -order 13
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_7" -side 4 -order 14
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_8" -side 4 -order 15
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_9" -side 4 -order 16
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_10" -side 4 -order 17
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_11" -side 4 -order 18
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_12" -side 4 -order 19
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_13" -side 4 -order 20
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_14" -side 4 -order 21
set_pad_physical_constraints -pad_name "sdram_DQ_iopad_15" -side 4 -order 22
