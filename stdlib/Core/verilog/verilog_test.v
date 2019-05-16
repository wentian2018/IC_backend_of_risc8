

`timescale 1ns/1ps

module AND2X2_test_Y;

  AND2X2 instance0(.A(A), .B(B), .Y(Y));

  AND2X2_stim_Y instance1(.A(A), .B(B), .Y(Y));

endmodule

module AND2X2_stim_Y(A, B, Y);

  output A;
  reg A;
  output B;
  reg B;
  input Y;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 2;

  parameter NUM_VECTORS = 24;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0};
    vectors[1] = {1'b1, 1'b0, 1'b0};
    vectors[2] = {1'b1, 1'b0, 1'b0};
    vectors[3] = {1'b0, 1'b0, 1'b0};
    vectors[4] = {1'b0, 1'b0, 1'b0};
    vectors[5] = {1'b0, 1'b1, 1'b0};
    vectors[6] = {1'b0, 1'b1, 1'b0};
    vectors[7] = {1'b0, 1'b0, 1'b0};
    vectors[8] = {1'b0, 1'b1, 1'b0};
    vectors[9] = {1'b1, 1'b1, 1'b1};
    vectors[10] = {1'b1, 1'b1, 1'b1};
    vectors[11] = {1'b0, 1'b1, 1'b0};
    vectors[12] = {1'b1, 1'b0, 1'b0};
    vectors[13] = {1'b1, 1'b1, 1'b1};
    vectors[14] = {1'b1, 1'b1, 1'b1};
    vectors[15] = {1'b1, 1'b0, 1'b0};
    vectors[16] = {1'b0, 1'b0, 1'b0};
    vectors[17] = {1'b1, 1'b0, 1'b0};
    vectors[18] = {1'b1, 1'b0, 1'b0};
    vectors[19] = {1'b0, 1'b0, 1'b0};
    vectors[20] = {1'b0, 1'b0, 1'b0};
    vectors[21] = {1'b0, 1'b1, 1'b0};
    vectors[22] = {1'b0, 1'b1, 1'b0};
    vectors[23] = {1'b0, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : AND2X2:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module AOI21X1_test_Y;

  AOI21X1 instance0(.A0(A0), .A1(A1), .B0(B0), .Y(Y));

  AOI21X1_stim_Y instance1(.A0(A0), .A1(A1), .B0(B0), .Y(Y));

endmodule

module AOI21X1_stim_Y(A0, A1, B0, Y);

  output A0;
  reg A0;
  output A1;
  reg A1;
  output B0;
  reg B0;
  input Y;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 3;

  parameter NUM_VECTORS = 52;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[9] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[10] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[11] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[12] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[13] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[14] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[15] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[16] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[17] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[18] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[19] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[21] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[22] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[23] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[24] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[25] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[26] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[27] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[28] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[29] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[30] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[31] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[32] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[33] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[34] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[35] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[36] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[37] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[38] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[39] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[40] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[41] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[42] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[43] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[44] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[45] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[46] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[47] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[48] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[49] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[50] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[51] = {1'b1, 1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A0, A1, B0} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : AOI21X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module DFFDRX1_test_Q_QN;

  DFFDRX1 instance0(.CK(CK), .D(D), .RN(RN), .Q(Q), .QN(QN));

  DFFDRX1_stim_Q_QN instance1(.CK(CK), .D(D), .RN(RN), .Q(Q), .QN(QN));

endmodule

module DFFDRX1_stim_Q_QN(CK, D, RN, Q, QN);

  output CK;
  reg CK;
  output D;
  reg D;
  output RN;
  reg RN;
  input Q;
  input QN;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 2;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Q_LOCATION = 3;
  parameter OUTPUT_QN_LOCATION = 4;

  parameter NUM_VECTORS = 138;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[10] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[11] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[13] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[14] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[15] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[16] = {1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[17] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[18] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[19] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[21] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[22] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[23] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[24] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[25] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[26] = {1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[27] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[28] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[29] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[30] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[31] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[32] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[33] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[34] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[35] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[36] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[37] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[38] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[39] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[40] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[41] = {1'b1, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[42] = {1'b1, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[43] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[44] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[45] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[46] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[47] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[48] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[49] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[50] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[51] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[52] = {1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[53] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[54] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[55] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[56] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[57] = {1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[58] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[59] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[60] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[61] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[62] = {1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[63] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[64] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[65] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[66] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[67] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[68] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[69] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[70] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[71] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[72] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[73] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[74] = {1'b1, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[75] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[76] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[77] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[78] = {1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[79] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[80] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[81] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[82] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[83] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[84] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[85] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[86] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[87] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[88] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[89] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[90] = {1'b1, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[91] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[92] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[93] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[94] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[95] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[96] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[97] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[98] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[99] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[100] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[101] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[102] = {1'b0, 1'b0, 1'b1, 1'bx, 1'bx};
    vectors[103] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[104] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[105] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[106] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[107] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[108] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[109] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[110] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[111] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[112] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[113] = {1'b0, 1'b0, 1'b1, 1'bx, 1'bx};
    vectors[114] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[115] = {1'b1, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[116] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[117] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[118] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[119] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[120] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[121] = {1'b0, 1'b1, 1'b1, 1'bx, 1'bx};
    vectors[122] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[123] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b0};
    vectors[124] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[125] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[126] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[127] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[128] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[129] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[130] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[131] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[132] = {1'b0, 1'b0, 1'b1, 1'bx, 1'bx};
    vectors[133] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[134] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[135] = {1'b1, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[136] = {1'b1, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[137] = {1'b1, 1'b1, 1'b0, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {CK, D, RN} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Q_LOCATION] !== Q && ivector[OUTPUT_Q_LOCATION] !== 1'bx)
        $display("testbench ERROR : DFFDRX1:Q output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Q_LOCATION], Q);
      if(ivector[OUTPUT_QN_LOCATION] !== QN && ivector[OUTPUT_QN_LOCATION] !== 1'bx)
        $display("testbench ERROR : DFFDRX1:QN output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_QN_LOCATION], QN);
    end

  end

endmodule



module DFFDX1_test_Q_QN;

  DFFDX1 instance0(.CK(CK), .D(D), .Q(Q), .QN(QN));

  DFFDX1_stim_Q_QN instance1(.CK(CK), .D(D), .Q(Q), .QN(QN));

endmodule

module DFFDX1_stim_Q_QN(CK, D, Q, QN);

  output CK;
  reg CK;
  output D;
  reg D;
  input Q;
  input QN;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 2;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Q_LOCATION = 2;
  parameter OUTPUT_QN_LOCATION = 3;

  parameter NUM_VECTORS = 75;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[2] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[5] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[8] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[10] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[11] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[12] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[13] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[14] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[15] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[16] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[17] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[18] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[19] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[21] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[22] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[23] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[24] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[25] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[26] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[27] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[28] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[29] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[30] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[31] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[32] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[33] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[34] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[35] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[36] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[37] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[38] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[39] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[40] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[41] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[42] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[43] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[44] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[45] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[46] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[47] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[48] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[49] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[50] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[51] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[52] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[53] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[54] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[55] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[56] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[57] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[58] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[59] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[60] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[61] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[62] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[63] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[64] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[65] = {1'b0, 1'b0, 1'bx, 1'bx};
    vectors[66] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[67] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[68] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[69] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[70] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[71] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[72] = {1'b0, 1'b1, 1'bx, 1'bx};
    vectors[73] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[74] = {1'b1, 1'b0, 1'b1, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {CK, D} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Q_LOCATION] !== Q && ivector[OUTPUT_Q_LOCATION] !== 1'bx)
        $display("testbench ERROR : DFFDX1:Q output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Q_LOCATION], Q);
      if(ivector[OUTPUT_QN_LOCATION] !== QN && ivector[OUTPUT_QN_LOCATION] !== 1'bx)
        $display("testbench ERROR : DFFDX1:QN output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_QN_LOCATION], QN);
    end

  end

endmodule



module DFFNX1_test_QN;

  DFFNX1 instance0(.CK(CK), .D(D), .QN(QN));

  DFFNX1_stim_QN instance1(.CK(CK), .D(D), .QN(QN));

endmodule

module DFFNX1_stim_QN(CK, D, QN);

  output CK;
  reg CK;
  output D;
  reg D;
  input QN;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_QN_LOCATION = 2;

  parameter NUM_VECTORS = 65;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'bx};
    vectors[1] = {1'b1, 1'b0, 1'b1};
    vectors[2] = {1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b1, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'bx};
    vectors[5] = {1'b1, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'bx};
    vectors[8] = {1'b1, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b1};
    vectors[10] = {1'b0, 1'b1, 1'b1};
    vectors[11] = {1'b0, 1'b1, 1'bx};
    vectors[12] = {1'b1, 1'b1, 1'b0};
    vectors[13] = {1'b0, 1'b1, 1'b0};
    vectors[14] = {1'b0, 1'b0, 1'b0};
    vectors[15] = {1'b0, 1'b1, 1'bx};
    vectors[16] = {1'b1, 1'b1, 1'b0};
    vectors[17] = {1'b1, 1'b0, 1'b0};
    vectors[18] = {1'b0, 1'b0, 1'b0};
    vectors[19] = {1'b1, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b1};
    vectors[21] = {1'b0, 1'b0, 1'bx};
    vectors[22] = {1'b1, 1'b0, 1'b1};
    vectors[23] = {1'b1, 1'b1, 1'b1};
    vectors[24] = {1'b0, 1'b1, 1'b1};
    vectors[25] = {1'b1, 1'b1, 1'b0};
    vectors[26] = {1'b0, 1'b1, 1'b0};
    vectors[27] = {1'b0, 1'b1, 1'bx};
    vectors[28] = {1'b1, 1'b1, 1'b0};
    vectors[29] = {1'b1, 1'b0, 1'b0};
    vectors[30] = {1'b0, 1'b0, 1'b0};
    vectors[31] = {1'b1, 1'b0, 1'b1};
    vectors[32] = {1'b0, 1'b0, 1'bx};
    vectors[33] = {1'b1, 1'b0, 1'b1};
    vectors[34] = {1'b1, 1'b1, 1'b1};
    vectors[35] = {1'b0, 1'b1, 1'b1};
    vectors[36] = {1'b1, 1'b1, 1'b0};
    vectors[37] = {1'b0, 1'b0, 1'bx};
    vectors[38] = {1'b1, 1'b0, 1'b1};
    vectors[39] = {1'b0, 1'b0, 1'b1};
    vectors[40] = {1'b1, 1'b0, 1'b1};
    vectors[41] = {1'b0, 1'b1, 1'bx};
    vectors[42] = {1'b1, 1'b1, 1'b0};
    vectors[43] = {1'b0, 1'b1, 1'b0};
    vectors[44] = {1'b1, 1'b1, 1'b0};
    vectors[45] = {1'b0, 1'b0, 1'bx};
    vectors[46] = {1'b1, 1'b0, 1'b1};
    vectors[47] = {1'b0, 1'b0, 1'b1};
    vectors[48] = {1'b0, 1'b1, 1'bx};
    vectors[49] = {1'b1, 1'b1, 1'b0};
    vectors[50] = {1'b0, 1'b1, 1'b0};
    vectors[51] = {1'b0, 1'b0, 1'bx};
    vectors[52] = {1'b1, 1'b0, 1'b1};
    vectors[53] = {1'b0, 1'b0, 1'b1};
    vectors[54] = {1'b0, 1'b1, 1'b1};
    vectors[55] = {1'b0, 1'b0, 1'bx};
    vectors[56] = {1'b1, 1'b0, 1'b1};
    vectors[57] = {1'b1, 1'b1, 1'b1};
    vectors[58] = {1'b0, 1'b1, 1'bx};
    vectors[59] = {1'b1, 1'b1, 1'b0};
    vectors[60] = {1'b0, 1'b1, 1'b0};
    vectors[61] = {1'b0, 1'b0, 1'b0};
    vectors[62] = {1'b0, 1'b1, 1'bx};
    vectors[63] = {1'b1, 1'b1, 1'b0};
    vectors[64] = {1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {CK, D} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_QN_LOCATION] !== QN && ivector[OUTPUT_QN_LOCATION] !== 1'bx)
        $display("testbench ERROR : DFFNX1:QN output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_QN_LOCATION], QN);
    end

  end

endmodule



module DFFX1_test_Q;

  DFFX1 instance0(.CK(CK), .D(D), .Q(Q));

  DFFX1_stim_Q instance1(.CK(CK), .D(D), .Q(Q));

endmodule

module DFFX1_stim_Q(CK, D, Q);

  output CK;
  reg CK;
  output D;
  reg D;
  input Q;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Q_LOCATION = 2;

  parameter NUM_VECTORS = 65;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'bx};
    vectors[1] = {1'b1, 1'b0, 1'b0};
    vectors[2] = {1'b0, 1'b0, 1'b0};
    vectors[3] = {1'b1, 1'b0, 1'b0};
    vectors[4] = {1'b0, 1'b0, 1'bx};
    vectors[5] = {1'b1, 1'b0, 1'b0};
    vectors[6] = {1'b0, 1'b0, 1'b0};
    vectors[7] = {1'b0, 1'b0, 1'bx};
    vectors[8] = {1'b1, 1'b0, 1'b0};
    vectors[9] = {1'b0, 1'b0, 1'b0};
    vectors[10] = {1'b0, 1'b1, 1'b0};
    vectors[11] = {1'b0, 1'b1, 1'bx};
    vectors[12] = {1'b1, 1'b1, 1'b1};
    vectors[13] = {1'b0, 1'b1, 1'b1};
    vectors[14] = {1'b0, 1'b0, 1'b1};
    vectors[15] = {1'b0, 1'b1, 1'bx};
    vectors[16] = {1'b1, 1'b1, 1'b1};
    vectors[17] = {1'b1, 1'b0, 1'b1};
    vectors[18] = {1'b0, 1'b0, 1'b1};
    vectors[19] = {1'b1, 1'b0, 1'b0};
    vectors[20] = {1'b0, 1'b0, 1'b0};
    vectors[21] = {1'b0, 1'b0, 1'bx};
    vectors[22] = {1'b1, 1'b0, 1'b0};
    vectors[23] = {1'b1, 1'b1, 1'b0};
    vectors[24] = {1'b0, 1'b1, 1'b0};
    vectors[25] = {1'b1, 1'b1, 1'b1};
    vectors[26] = {1'b0, 1'b1, 1'b1};
    vectors[27] = {1'b0, 1'b0, 1'bx};
    vectors[28] = {1'b1, 1'b0, 1'b0};
    vectors[29] = {1'b1, 1'b1, 1'b0};
    vectors[30] = {1'b0, 1'b1, 1'b0};
    vectors[31] = {1'b1, 1'b1, 1'b1};
    vectors[32] = {1'b0, 1'b1, 1'bx};
    vectors[33] = {1'b1, 1'b1, 1'b1};
    vectors[34] = {1'b1, 1'b0, 1'b1};
    vectors[35] = {1'b0, 1'b0, 1'b1};
    vectors[36] = {1'b1, 1'b0, 1'b0};
    vectors[37] = {1'b0, 1'b0, 1'bx};
    vectors[38] = {1'b1, 1'b0, 1'b0};
    vectors[39] = {1'b0, 1'b0, 1'b0};
    vectors[40] = {1'b1, 1'b0, 1'b0};
    vectors[41] = {1'b0, 1'b1, 1'bx};
    vectors[42] = {1'b1, 1'b1, 1'b1};
    vectors[43] = {1'b0, 1'b1, 1'b1};
    vectors[44] = {1'b1, 1'b1, 1'b1};
    vectors[45] = {1'b0, 1'b0, 1'bx};
    vectors[46] = {1'b1, 1'b0, 1'b0};
    vectors[47] = {1'b0, 1'b0, 1'b0};
    vectors[48] = {1'b0, 1'b1, 1'bx};
    vectors[49] = {1'b1, 1'b1, 1'b1};
    vectors[50] = {1'b0, 1'b1, 1'b1};
    vectors[51] = {1'b0, 1'b0, 1'bx};
    vectors[52] = {1'b1, 1'b0, 1'b0};
    vectors[53] = {1'b0, 1'b0, 1'b0};
    vectors[54] = {1'b0, 1'b1, 1'b0};
    vectors[55] = {1'b0, 1'b0, 1'bx};
    vectors[56] = {1'b1, 1'b0, 1'b0};
    vectors[57] = {1'b1, 1'b1, 1'b0};
    vectors[58] = {1'b0, 1'b1, 1'bx};
    vectors[59] = {1'b1, 1'b1, 1'b1};
    vectors[60] = {1'b0, 1'b1, 1'b1};
    vectors[61] = {1'b0, 1'b0, 1'b1};
    vectors[62] = {1'b0, 1'b1, 1'bx};
    vectors[63] = {1'b1, 1'b1, 1'b1};
    vectors[64] = {1'b1, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {CK, D} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Q_LOCATION] !== Q && ivector[OUTPUT_Q_LOCATION] !== 1'bx)
        $display("testbench ERROR : DFFX1:Q output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Q_LOCATION], Q);
    end

  end

endmodule



module DFFX2_test_Q;

  DFFX2 instance0(.CK(CK), .D(D), .Q(Q));

  DFFX2_stim_Q instance1(.CK(CK), .D(D), .Q(Q));

endmodule

module DFFX2_stim_Q(CK, D, Q);

  output CK;
  reg CK;
  output D;
  reg D;
  input Q;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Q_LOCATION = 2;

  parameter NUM_VECTORS = 65;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'bx};
    vectors[1] = {1'b1, 1'b0, 1'b0};
    vectors[2] = {1'b0, 1'b0, 1'b0};
    vectors[3] = {1'b1, 1'b0, 1'b0};
    vectors[4] = {1'b0, 1'b0, 1'bx};
    vectors[5] = {1'b1, 1'b0, 1'b0};
    vectors[6] = {1'b0, 1'b0, 1'b0};
    vectors[7] = {1'b0, 1'b0, 1'bx};
    vectors[8] = {1'b1, 1'b0, 1'b0};
    vectors[9] = {1'b0, 1'b0, 1'b0};
    vectors[10] = {1'b0, 1'b1, 1'b0};
    vectors[11] = {1'b0, 1'b1, 1'bx};
    vectors[12] = {1'b1, 1'b1, 1'b1};
    vectors[13] = {1'b0, 1'b1, 1'b1};
    vectors[14] = {1'b0, 1'b0, 1'b1};
    vectors[15] = {1'b0, 1'b1, 1'bx};
    vectors[16] = {1'b1, 1'b1, 1'b1};
    vectors[17] = {1'b1, 1'b0, 1'b1};
    vectors[18] = {1'b0, 1'b0, 1'b1};
    vectors[19] = {1'b1, 1'b0, 1'b0};
    vectors[20] = {1'b0, 1'b0, 1'b0};
    vectors[21] = {1'b0, 1'b0, 1'bx};
    vectors[22] = {1'b1, 1'b0, 1'b0};
    vectors[23] = {1'b1, 1'b1, 1'b0};
    vectors[24] = {1'b0, 1'b1, 1'b0};
    vectors[25] = {1'b1, 1'b1, 1'b1};
    vectors[26] = {1'b0, 1'b1, 1'b1};
    vectors[27] = {1'b0, 1'b0, 1'bx};
    vectors[28] = {1'b1, 1'b0, 1'b0};
    vectors[29] = {1'b1, 1'b1, 1'b0};
    vectors[30] = {1'b0, 1'b1, 1'b0};
    vectors[31] = {1'b1, 1'b1, 1'b1};
    vectors[32] = {1'b0, 1'b1, 1'bx};
    vectors[33] = {1'b1, 1'b1, 1'b1};
    vectors[34] = {1'b1, 1'b0, 1'b1};
    vectors[35] = {1'b0, 1'b0, 1'b1};
    vectors[36] = {1'b1, 1'b0, 1'b0};
    vectors[37] = {1'b0, 1'b0, 1'bx};
    vectors[38] = {1'b1, 1'b0, 1'b0};
    vectors[39] = {1'b0, 1'b0, 1'b0};
    vectors[40] = {1'b1, 1'b0, 1'b0};
    vectors[41] = {1'b0, 1'b1, 1'bx};
    vectors[42] = {1'b1, 1'b1, 1'b1};
    vectors[43] = {1'b0, 1'b1, 1'b1};
    vectors[44] = {1'b1, 1'b1, 1'b1};
    vectors[45] = {1'b0, 1'b0, 1'bx};
    vectors[46] = {1'b1, 1'b0, 1'b0};
    vectors[47] = {1'b0, 1'b0, 1'b0};
    vectors[48] = {1'b0, 1'b1, 1'bx};
    vectors[49] = {1'b1, 1'b1, 1'b1};
    vectors[50] = {1'b0, 1'b1, 1'b1};
    vectors[51] = {1'b0, 1'b0, 1'bx};
    vectors[52] = {1'b1, 1'b0, 1'b0};
    vectors[53] = {1'b0, 1'b0, 1'b0};
    vectors[54] = {1'b0, 1'b1, 1'b0};
    vectors[55] = {1'b0, 1'b0, 1'bx};
    vectors[56] = {1'b1, 1'b0, 1'b0};
    vectors[57] = {1'b1, 1'b1, 1'b0};
    vectors[58] = {1'b0, 1'b1, 1'bx};
    vectors[59] = {1'b1, 1'b1, 1'b1};
    vectors[60] = {1'b0, 1'b1, 1'b1};
    vectors[61] = {1'b0, 1'b0, 1'b1};
    vectors[62] = {1'b0, 1'b1, 1'bx};
    vectors[63] = {1'b1, 1'b1, 1'b1};
    vectors[64] = {1'b1, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {CK, D} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Q_LOCATION] !== Q && ivector[OUTPUT_Q_LOCATION] !== 1'bx)
        $display("testbench ERROR : DFFX2:Q output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Q_LOCATION], Q);
    end

  end

endmodule



module DLYX0P2_test_Y;

  DLYX0P2 instance0(.A(A), .Y(Y));

  DLYX0P2_stim_Y instance1(.A(A), .Y(Y));

endmodule

module DLYX0P2_stim_Y(A, Y);

  output A;
  reg A;
  input Y;

  parameter NUM_INPUT_BITS = 1;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 1;

  parameter NUM_VECTORS = 4;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0};
    vectors[1] = {1'b1, 1'b1};
    vectors[2] = {1'b1, 1'b1};
    vectors[3] = {1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : DLYX0P2:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module DLYX1_test_Y;

  DLYX1 instance0(.A(A), .Y(Y));

  DLYX1_stim_Y instance1(.A(A), .Y(Y));

endmodule

module DLYX1_stim_Y(A, Y);

  output A;
  reg A;
  input Y;

  parameter NUM_INPUT_BITS = 1;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 1;

  parameter NUM_VECTORS = 4;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0};
    vectors[1] = {1'b1, 1'b1};
    vectors[2] = {1'b1, 1'b1};
    vectors[3] = {1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : DLYX1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule















module INVX1_test_Y;

  INVX1 instance0(.A(A), .Y(Y));

  INVX1_stim_Y instance1(.A(A), .Y(Y));

endmodule

module INVX1_stim_Y(A, Y);

  output A;
  reg A;
  input Y;

  parameter NUM_INPUT_BITS = 1;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 1;

  parameter NUM_VECTORS = 4;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : INVX1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module INVX16_test_Y;

  INVX16 instance0(.A(A), .Y(Y));

  INVX16_stim_Y instance1(.A(A), .Y(Y));

endmodule

module INVX16_stim_Y(A, Y);

  output A;
  reg A;
  input Y;

  parameter NUM_INPUT_BITS = 1;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 1;

  parameter NUM_VECTORS = 4;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : INVX16:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module INVX2_test_Y;

  INVX2 instance0(.A(A), .Y(Y));

  INVX2_stim_Y instance1(.A(A), .Y(Y));

endmodule

module INVX2_stim_Y(A, Y);

  output A;
  reg A;
  input Y;

  parameter NUM_INPUT_BITS = 1;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 1;

  parameter NUM_VECTORS = 4;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : INVX2:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module INVX4_test_Y;

  INVX4 instance0(.A(A), .Y(Y));

  INVX4_stim_Y instance1(.A(A), .Y(Y));

endmodule

module INVX4_stim_Y(A, Y);

  output A;
  reg A;
  input Y;

  parameter NUM_INPUT_BITS = 1;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 1;

  parameter NUM_VECTORS = 4;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : INVX4:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module INVX8_test_Y;

  INVX8 instance0(.A(A), .Y(Y));

  INVX8_stim_Y instance1(.A(A), .Y(Y));

endmodule

module INVX8_stim_Y(A, Y);

  output A;
  reg A;
  input Y;

  parameter NUM_INPUT_BITS = 1;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 1;

  parameter NUM_VECTORS = 4;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : INVX8:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module MAJ3X1_test_Y;

  MAJ3X1 instance0(.A(A), .B(B), .C(C), .Y(Y));

  MAJ3X1_stim_Y instance1(.A(A), .B(B), .C(C), .Y(Y));

endmodule

module MAJ3X1_stim_Y(A, B, C, Y);

  output A;
  reg A;
  output B;
  reg B;
  output C;
  reg C;
  input Y;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 3;

  parameter NUM_VECTORS = 60;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[2] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[3] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[9] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[10] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[11] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[12] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[13] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[14] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[15] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[16] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[17] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[18] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[19] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[20] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[21] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[22] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[23] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[24] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[25] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[26] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[27] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[28] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[29] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[30] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[31] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[32] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[33] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[34] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[35] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[36] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[37] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[38] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[39] = {1'b1, 1'b1, 1'b1, 1'b1};
    vectors[40] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[41] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[42] = {1'b1, 1'b1, 1'b1, 1'b1};
    vectors[43] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[44] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[45] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[46] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[47] = {1'b1, 1'b1, 1'b1, 1'b1};
    vectors[48] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[49] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[50] = {1'b1, 1'b1, 1'b1, 1'b1};
    vectors[51] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[52] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[53] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[54] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[55] = {1'b1, 1'b1, 1'b1, 1'b1};
    vectors[56] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[57] = {1'b0, 1'b0, 1'b0, 1'b0};
    vectors[58] = {1'b1, 1'b1, 1'b1, 1'b1};
    vectors[59] = {1'b1, 1'b1, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B, C} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : MAJ3X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module MUXN2X1_test_Y;

  MUXN2X1 instance0(.A(A), .B(B), .S0(S0), .Y(Y));

  MUXN2X1_stim_Y instance1(.A(A), .B(B), .S0(S0), .Y(Y));

endmodule

module MUXN2X1_stim_Y(A, B, S0, Y);

  output A;
  reg A;
  output B;
  reg B;
  output S0;
  reg S0;
  input Y;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 3;

  parameter NUM_VECTORS = 60;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[10] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[11] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[13] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[14] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[15] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[16] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[17] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[18] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[19] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[21] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[22] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[23] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[24] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[25] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[26] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[27] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[28] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[29] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[30] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[31] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[32] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[33] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[34] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[35] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[36] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[37] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[38] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[39] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[40] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[41] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[42] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[43] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[44] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[45] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[46] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[47] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[48] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[49] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[50] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[51] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[52] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[53] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[54] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[55] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[56] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[57] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[58] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[59] = {1'b1, 1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B, S0} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : MUXN2X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NAND2X1_test_Y;

  NAND2X1 instance0(.A(A), .B(B), .Y(Y));

  NAND2X1_stim_Y instance1(.A(A), .B(B), .Y(Y));

endmodule

module NAND2X1_stim_Y(A, B, Y);

  output A;
  reg A;
  output B;
  reg B;
  input Y;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 2;

  parameter NUM_VECTORS = 24;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b1, 1'b1};
    vectors[9] = {1'b1, 1'b1, 1'b0};
    vectors[10] = {1'b1, 1'b1, 1'b0};
    vectors[11] = {1'b0, 1'b1, 1'b1};
    vectors[12] = {1'b1, 1'b0, 1'b1};
    vectors[13] = {1'b1, 1'b1, 1'b0};
    vectors[14] = {1'b1, 1'b1, 1'b0};
    vectors[15] = {1'b1, 1'b0, 1'b1};
    vectors[16] = {1'b0, 1'b0, 1'b1};
    vectors[17] = {1'b1, 1'b0, 1'b1};
    vectors[18] = {1'b1, 1'b0, 1'b1};
    vectors[19] = {1'b0, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b1};
    vectors[21] = {1'b0, 1'b1, 1'b1};
    vectors[22] = {1'b0, 1'b1, 1'b1};
    vectors[23] = {1'b0, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NAND2X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NAND2X2_test_Y;

  NAND2X2 instance0(.A(A), .B(B), .Y(Y));

  NAND2X2_stim_Y instance1(.A(A), .B(B), .Y(Y));

endmodule

module NAND2X2_stim_Y(A, B, Y);

  output A;
  reg A;
  output B;
  reg B;
  input Y;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 2;

  parameter NUM_VECTORS = 24;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b1, 1'b1};
    vectors[9] = {1'b1, 1'b1, 1'b0};
    vectors[10] = {1'b1, 1'b1, 1'b0};
    vectors[11] = {1'b0, 1'b1, 1'b1};
    vectors[12] = {1'b1, 1'b0, 1'b1};
    vectors[13] = {1'b1, 1'b1, 1'b0};
    vectors[14] = {1'b1, 1'b1, 1'b0};
    vectors[15] = {1'b1, 1'b0, 1'b1};
    vectors[16] = {1'b0, 1'b0, 1'b1};
    vectors[17] = {1'b1, 1'b0, 1'b1};
    vectors[18] = {1'b1, 1'b0, 1'b1};
    vectors[19] = {1'b0, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b1};
    vectors[21] = {1'b0, 1'b1, 1'b1};
    vectors[22] = {1'b0, 1'b1, 1'b1};
    vectors[23] = {1'b0, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NAND2X2:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NAND3X1_test_Y;

  NAND3X1 instance0(.A(A), .B(B), .C(C), .Y(Y));

  NAND3X1_stim_Y instance1(.A(A), .B(B), .C(C), .Y(Y));

endmodule

module NAND3X1_stim_Y(A, B, C, Y);

  output A;
  reg A;
  output B;
  reg B;
  output C;
  reg C;
  input Y;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 3;

  parameter NUM_VECTORS = 36;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[10] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[11] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[13] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[14] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[15] = {1'b0, 1'b1, 1'b1, 1'b1};
    vectors[16] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[17] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[18] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[19] = {1'b1, 1'b0, 1'b1, 1'b1};
    vectors[20] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[21] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[22] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[23] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[24] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[25] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[26] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[27] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[28] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[29] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[30] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[31] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[32] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[33] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[34] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[35] = {1'b0, 1'b0, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B, C} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NAND3X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NAND4X1_test_Y;

  NAND4X1 instance0(.A(A), .B(B), .C(C), .D(D), .Y(Y));

  NAND4X1_stim_Y instance1(.A(A), .B(B), .C(C), .D(D), .Y(Y));

endmodule

module NAND4X1_stim_Y(A, B, C, D, Y);

  output A;
  reg A;
  output B;
  reg B;
  output C;
  reg C;
  output D;
  reg D;
  input Y;

  parameter NUM_INPUT_BITS = 4;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 4;

  parameter NUM_VECTORS = 48;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[10] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[11] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[13] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[14] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[15] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[16] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b1};
    vectors[17] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[18] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[19] = {1'b0, 1'b1, 1'b1, 1'b1, 1'b1};
    vectors[20] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b1};
    vectors[21] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[22] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[23] = {1'b1, 1'b0, 1'b1, 1'b1, 1'b1};
    vectors[24] = {1'b1, 1'b1, 1'b0, 1'b1, 1'b1};
    vectors[25] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[26] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[27] = {1'b1, 1'b1, 1'b0, 1'b1, 1'b1};
    vectors[28] = {1'b1, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[29] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[30] = {1'b1, 1'b1, 1'b1, 1'b1, 1'b0};
    vectors[31] = {1'b1, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[32] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[33] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[34] = {1'b1, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[35] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[36] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[37] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[38] = {1'b0, 1'b1, 1'b0, 1'b0, 1'b1};
    vectors[39] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[40] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[41] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[42] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[43] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[44] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};
    vectors[45] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[46] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[47] = {1'b0, 1'b0, 1'b0, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B, C, D} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NAND4X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NMAJ3X1_test_Y;

  NMAJ3X1 instance0(.A(A), .B(B), .C(C), .Y(Y));

  NMAJ3X1_stim_Y instance1(.A(A), .B(B), .C(C), .Y(Y));

endmodule

module NMAJ3X1_stim_Y(A, B, C, Y);

  output A;
  reg A;
  output B;
  reg B;
  output C;
  reg C;
  input Y;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 3;

  parameter NUM_VECTORS = 60;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[10] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[11] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[13] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[14] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[15] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[16] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[17] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[18] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[19] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[21] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[22] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[23] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[24] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[25] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[26] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[27] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[28] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[29] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[30] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[31] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[32] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[33] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[34] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[35] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[36] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[37] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[38] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[39] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[40] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[41] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[42] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[43] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[44] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[45] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[46] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[47] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[48] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[49] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[50] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[51] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[52] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[53] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[54] = {1'b1, 1'b1, 1'b0, 1'b0};
    vectors[55] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[56] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[57] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[58] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[59] = {1'b1, 1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B, C} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NMAJ3X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NOR2X1_test_Y;

  NOR2X1 instance0(.A(A), .B(B), .Y(Y));

  NOR2X1_stim_Y instance1(.A(A), .B(B), .Y(Y));

endmodule

module NOR2X1_stim_Y(A, B, Y);

  output A;
  reg A;
  output B;
  reg B;
  input Y;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 2;

  parameter NUM_VECTORS = 24;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1, 1'b0};
    vectors[1] = {1'b1, 1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b1, 1'b0};
    vectors[4] = {1'b1, 1'b0, 1'b0};
    vectors[5] = {1'b1, 1'b1, 1'b0};
    vectors[6] = {1'b1, 1'b1, 1'b0};
    vectors[7] = {1'b1, 1'b0, 1'b0};
    vectors[8] = {1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b1, 1'b0, 1'b0};
    vectors[10] = {1'b1, 1'b0, 1'b0};
    vectors[11] = {1'b0, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b1};
    vectors[13] = {1'b0, 1'b1, 1'b0};
    vectors[14] = {1'b0, 1'b1, 1'b0};
    vectors[15] = {1'b0, 1'b0, 1'b1};
    vectors[16] = {1'b0, 1'b1, 1'b0};
    vectors[17] = {1'b1, 1'b1, 1'b0};
    vectors[18] = {1'b1, 1'b1, 1'b0};
    vectors[19] = {1'b0, 1'b1, 1'b0};
    vectors[20] = {1'b1, 1'b0, 1'b0};
    vectors[21] = {1'b1, 1'b1, 1'b0};
    vectors[22] = {1'b1, 1'b1, 1'b0};
    vectors[23] = {1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NOR2X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NOR2X2_test_Y;

  NOR2X2 instance0(.A(A), .B(B), .Y(Y));

  NOR2X2_stim_Y instance1(.A(A), .B(B), .Y(Y));

endmodule

module NOR2X2_stim_Y(A, B, Y);

  output A;
  reg A;
  output B;
  reg B;
  input Y;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 2;

  parameter NUM_VECTORS = 24;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1, 1'b0};
    vectors[1] = {1'b1, 1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b1, 1'b0};
    vectors[4] = {1'b1, 1'b0, 1'b0};
    vectors[5] = {1'b1, 1'b1, 1'b0};
    vectors[6] = {1'b1, 1'b1, 1'b0};
    vectors[7] = {1'b1, 1'b0, 1'b0};
    vectors[8] = {1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b1, 1'b0, 1'b0};
    vectors[10] = {1'b1, 1'b0, 1'b0};
    vectors[11] = {1'b0, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b1};
    vectors[13] = {1'b0, 1'b1, 1'b0};
    vectors[14] = {1'b0, 1'b1, 1'b0};
    vectors[15] = {1'b0, 1'b0, 1'b1};
    vectors[16] = {1'b0, 1'b1, 1'b0};
    vectors[17] = {1'b1, 1'b1, 1'b0};
    vectors[18] = {1'b1, 1'b1, 1'b0};
    vectors[19] = {1'b0, 1'b1, 1'b0};
    vectors[20] = {1'b1, 1'b0, 1'b0};
    vectors[21] = {1'b1, 1'b1, 1'b0};
    vectors[22] = {1'b1, 1'b1, 1'b0};
    vectors[23] = {1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NOR2X2:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module NOR3X1_test_Y;

  NOR3X1 instance0(.A(A), .B(B), .C(C), .Y(Y));

  NOR3X1_stim_Y instance1(.A(A), .B(B), .C(C), .Y(Y));

endmodule

module NOR3X1_stim_Y(A, B, C, Y);

  output A;
  reg A;
  output B;
  reg B;
  output C;
  reg C;
  input Y;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 3;

  parameter NUM_VECTORS = 36;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[1] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[2] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[3] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[4] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[5] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[6] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[7] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[8] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[9] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[10] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[11] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[12] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[13] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[14] = {1'b1, 1'b0, 1'b0, 1'b0};
    vectors[15] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[16] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[17] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[18] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[19] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[20] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[21] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[22] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[23] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[24] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[25] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[26] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[27] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[28] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[29] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[30] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[31] = {1'b0, 1'b0, 1'b1, 1'b0};
    vectors[32] = {1'b0, 1'b1, 1'b0, 1'b0};
    vectors[33] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[34] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[35] = {1'b0, 1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B, C} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : NOR3X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module OAI21X1_test_Y;

  OAI21X1 instance0(.A0(A0), .A1(A1), .B0(B0), .Y(Y));

  OAI21X1_stim_Y instance1(.A0(A0), .A1(A1), .B0(B0), .Y(Y));

endmodule

module OAI21X1_stim_Y(A0, A1, B0, Y);

  output A0;
  reg A0;
  output A1;
  reg A1;
  output B0;
  reg B0;
  input Y;

  parameter NUM_INPUT_BITS = 3;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 3;

  parameter NUM_VECTORS = 52;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[2] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[9] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[10] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[11] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[13] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[14] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[15] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[16] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[17] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[18] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[19] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[20] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[21] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[22] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[23] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[24] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[25] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[26] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[27] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[28] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[29] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[30] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[31] = {1'b1, 1'b1, 1'b0, 1'b1};
    vectors[32] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[33] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[34] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[35] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[36] = {1'b1, 1'b0, 1'b0, 1'b1};
    vectors[37] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[38] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[39] = {1'b0, 1'b1, 1'b1, 1'b0};
    vectors[40] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[41] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[42] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[43] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[44] = {1'b0, 1'b1, 1'b0, 1'b1};
    vectors[45] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[46] = {1'b1, 1'b1, 1'b1, 1'b0};
    vectors[47] = {1'b1, 1'b0, 1'b1, 1'b0};
    vectors[48] = {1'b0, 1'b0, 1'b0, 1'b1};
    vectors[49] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[50] = {1'b0, 1'b0, 1'b1, 1'b1};
    vectors[51] = {1'b0, 1'b0, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A0, A1, B0} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : OAI21X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module OR2X2_test_Y;

  OR2X2 instance0(.A(A), .B(B), .Y(Y));

  OR2X2_stim_Y instance1(.A(A), .B(B), .Y(Y));

endmodule

module OR2X2_stim_Y(A, B, Y);

  output A;
  reg A;
  output B;
  reg B;
  input Y;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 2;

  parameter NUM_VECTORS = 24;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1, 1'b1};
    vectors[1] = {1'b1, 1'b1, 1'b1};
    vectors[2] = {1'b1, 1'b1, 1'b1};
    vectors[3] = {1'b0, 1'b1, 1'b1};
    vectors[4] = {1'b1, 1'b0, 1'b1};
    vectors[5] = {1'b1, 1'b1, 1'b1};
    vectors[6] = {1'b1, 1'b1, 1'b1};
    vectors[7] = {1'b1, 1'b0, 1'b1};
    vectors[8] = {1'b0, 1'b0, 1'b0};
    vectors[9] = {1'b1, 1'b0, 1'b1};
    vectors[10] = {1'b1, 1'b0, 1'b1};
    vectors[11] = {1'b0, 1'b0, 1'b0};
    vectors[12] = {1'b0, 1'b0, 1'b0};
    vectors[13] = {1'b0, 1'b1, 1'b1};
    vectors[14] = {1'b0, 1'b1, 1'b1};
    vectors[15] = {1'b0, 1'b0, 1'b0};
    vectors[16] = {1'b0, 1'b1, 1'b1};
    vectors[17] = {1'b1, 1'b1, 1'b1};
    vectors[18] = {1'b1, 1'b1, 1'b1};
    vectors[19] = {1'b0, 1'b1, 1'b1};
    vectors[20] = {1'b1, 1'b0, 1'b1};
    vectors[21] = {1'b1, 1'b1, 1'b1};
    vectors[22] = {1'b1, 1'b1, 1'b1};
    vectors[23] = {1'b1, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : OR2X2:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule



module TLATNCAX2_test_ECK;

  TLATNCAX2 instance0(.CK(CK), .E(E), .ECK(ECK));

  TLATNCAX2_stim_ECK instance1(.CK(CK), .E(E), .ECK(ECK));

endmodule

module TLATNCAX2_stim_ECK(CK, E, ECK);

  output CK;
  reg CK;
  output E;
  reg E;
  input ECK;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_ECK_LOCATION = 2;

  parameter NUM_VECTORS = 42;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b0};
    vectors[1] = {1'b1, 1'b0, 1'b0};
    vectors[2] = {1'b0, 1'b0, 1'b0};
    vectors[3] = {1'b1, 1'b0, 1'b0};
    vectors[4] = {1'b0, 1'b0, 1'b0};
    vectors[5] = {1'b0, 1'b0, 1'b0};
    vectors[6] = {1'b0, 1'b1, 1'b0};
    vectors[7] = {1'b0, 1'b1, 1'b0};
    vectors[8] = {1'b0, 1'b0, 1'b0};
    vectors[9] = {1'b0, 1'b1, 1'b0};
    vectors[10] = {1'b1, 1'b1, 1'b1};
    vectors[11] = {1'b1, 1'b0, 1'b1};
    vectors[12] = {1'b0, 1'b0, 1'b0};
    vectors[13] = {1'b1, 1'b0, 1'b0};
    vectors[14] = {1'b0, 1'b1, 1'b0};
    vectors[15] = {1'b1, 1'b1, 1'b1};
    vectors[16] = {1'b0, 1'b1, 1'b0};
    vectors[17] = {1'b1, 1'b1, 1'b1};
    vectors[18] = {1'b1, 1'b0, 1'b1};
    vectors[19] = {1'b0, 1'b0, 1'b0};
    vectors[20] = {1'b0, 1'b1, 1'b0};
    vectors[21] = {1'b1, 1'b1, 1'b1};
    vectors[22] = {1'b0, 1'b1, 1'b0};
    vectors[23] = {1'b0, 1'b0, 1'b0};
    vectors[24] = {1'b1, 1'b0, 1'b0};
    vectors[25] = {1'b0, 1'b0, 1'b0};
    vectors[26] = {1'b1, 1'b0, 1'b0};
    vectors[27] = {1'b0, 1'b0, 1'b0};
    vectors[28] = {1'b0, 1'b0, 1'b0};
    vectors[29] = {1'b1, 1'b0, 1'b0};
    vectors[30] = {1'b1, 1'b1, 1'b0};
    vectors[31] = {1'b0, 1'b1, 1'b0};
    vectors[32] = {1'b0, 1'b0, 1'b0};
    vectors[33] = {1'b0, 1'b1, 1'b0};
    vectors[34] = {1'b0, 1'b0, 1'b0};
    vectors[35] = {1'b1, 1'b0, 1'b0};
    vectors[36] = {1'b1, 1'b1, 1'b0};
    vectors[37] = {1'b0, 1'b1, 1'b0};
    vectors[38] = {1'b0, 1'b0, 1'b0};
    vectors[39] = {1'b0, 1'b1, 1'b0};
    vectors[40] = {1'b1, 1'b1, 1'b1};
    vectors[41] = {1'b1, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {CK, E} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_ECK_LOCATION] !== ECK && ivector[OUTPUT_ECK_LOCATION] !== 1'bx)
        $display("testbench ERROR : TLATNCAX2:ECK output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_ECK_LOCATION], ECK);
    end

  end

endmodule



module XNOR2X1_test_Y;

  XNOR2X1 instance0(.A(A), .B(B), .Y(Y));

  XNOR2X1_stim_Y instance1(.A(A), .B(B), .Y(Y));

endmodule

module XNOR2X1_stim_Y(A, B, Y);

  output A;
  reg A;
  output B;
  reg B;
  input Y;

  parameter NUM_INPUT_BITS = 2;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_Y_LOCATION = 2;

  parameter NUM_VECTORS = 16;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b1, 1'b0};
    vectors[1] = {1'b1, 1'b1, 1'b1};
    vectors[2] = {1'b0, 1'b0, 1'b1};
    vectors[3] = {1'b1, 1'b0, 1'b0};
    vectors[4] = {1'b1, 1'b0, 1'b0};
    vectors[5] = {1'b0, 1'b0, 1'b1};
    vectors[6] = {1'b1, 1'b1, 1'b1};
    vectors[7] = {1'b0, 1'b1, 1'b0};
    vectors[8] = {1'b1, 1'b0, 1'b0};
    vectors[9] = {1'b1, 1'b1, 1'b1};
    vectors[10] = {1'b0, 1'b0, 1'b1};
    vectors[11] = {1'b0, 1'b1, 1'b0};
    vectors[12] = {1'b0, 1'b1, 1'b0};
    vectors[13] = {1'b0, 1'b0, 1'b1};
    vectors[14] = {1'b1, 1'b1, 1'b1};
    vectors[15] = {1'b1, 1'b0, 1'b0};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {A, B} = ivector[0:NUM_INPUT_BITS-1];

      #20;  
      if(ivector[OUTPUT_Y_LOCATION] !== Y && ivector[OUTPUT_Y_LOCATION] !== 1'bx)
        $display("testbench ERROR : XNOR2X1:Y output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_Y_LOCATION], Y);
    end

  end

endmodule
