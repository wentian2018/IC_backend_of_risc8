

`timescale 1ns/1ps

module PB8_test_C_PAD;

  PB8 instance0(.I(I), .IE(IE), .OEN(OEN), .PAD(PAD), .PG(PG), .C(C));

  PB8_stim_C_PAD instance1(.I(I), .IE(IE), .OEN(OEN), .PAD(PAD), .PG(PG), .C(C));

endmodule

module PB8_stim_C_PAD(I, IE, OEN, PAD, PG, C);

  output I;
  reg I;
  output IE;
  reg IE;
  output OEN;
  reg OEN;
  output PG;
  reg PG;
  input C;
  inout PAD;
  reg _io_PAD;
  reg _io_ena_PAD;

  parameter NUM_INPUT_BITS = 5;
  parameter NUM_OUTPUT_BITS = 2;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_C_LOCATION = 5;
  parameter OUTPUT_PAD_LOCATION = 6;

  parameter NUM_VECTORS = 40;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'bx};
    vectors[1] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'bx};
    vectors[2] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'bx};
    vectors[3] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'bx};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx};
    vectors[9] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'bx, 1'bx};
    vectors[10] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'bx, 1'bx};
    vectors[11] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'bx, 1'bx};
    vectors[12] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[13] = {1'b1, 1'b1, 1'b0, 1'bx, 1'b1, 1'b1, 1'b1};
    vectors[14] = {1'b0, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[15] = {1'b1, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b1};
    vectors[16] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[17] = {1'b1, 1'b1, 1'b0, 1'bx, 1'b1, 1'b1, 1'b1};
    vectors[18] = {1'b1, 1'b1, 1'b0, 1'bx, 1'b1, 1'b1, 1'b1};
    vectors[19] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[20] = {1'b1, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b1};
    vectors[21] = {1'b0, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[22] = {1'b1, 1'b1, 1'b0, 1'bx, 1'b1, 1'b1, 1'b1};
    vectors[23] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[24] = {1'b1, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b1};
    vectors[25] = {1'b1, 1'b1, 1'b0, 1'bx, 1'b1, 1'b1, 1'b1};
    vectors[26] = {1'b1, 1'b1, 1'b0, 1'bx, 1'b1, 1'b1, 1'b1};
    vectors[27] = {1'b1, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b1};
    vectors[28] = {1'b0, 1'b0, 1'b1, 1'bx, 1'b1, 1'b0, 1'bx};
    vectors[29] = {1'b0, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[30] = {1'b0, 1'b1, 1'b1, 1'bx, 1'b1, 1'bx, 1'bx};
    vectors[31] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[32] = {1'b1, 1'b0, 1'b1, 1'bx, 1'b1, 1'b0, 1'bx};
    vectors[33] = {1'b1, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b1};
    vectors[34] = {1'b1, 1'b1, 1'b1, 1'bx, 1'b1, 1'bx, 1'bx};
    vectors[35] = {1'b1, 1'b1, 1'b0, 1'bx, 1'b1, 1'b1, 1'b1};
    vectors[36] = {1'b0, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[37] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[38] = {1'b0, 1'b1, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};
    vectors[39] = {1'b0, 1'b0, 1'b0, 1'bx, 1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {I, IE, OEN, _io_PAD, PG} = ivector[0:NUM_INPUT_BITS-1];

      _io_ena_PAD =  (ivector[OUTPUT_PAD_LOCATION] === 1'bx) ? 1'b1 : 1'b0;

      #20;  
      if(ivector[OUTPUT_C_LOCATION] !== C && ivector[OUTPUT_C_LOCATION] !== 1'bx)
        $display("testbench ERROR : PB8:C output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_C_LOCATION], C);
      if(ivector[OUTPUT_PAD_LOCATION] !== PAD && ivector[OUTPUT_PAD_LOCATION] !== 1'bx)
        $display("testbench ERROR : PB8:PAD output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_PAD_LOCATION], PAD);
    end

  end

  bufif1(PAD, _io_PAD, _io_ena_PAD);

endmodule
