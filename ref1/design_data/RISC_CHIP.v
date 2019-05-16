
module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   carry_15_, carry_14_, carry_13_, carry_12_, carry_11_, carry_10_,
         carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_, carry_3_,
         carry_2_, carry_1_;

  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry_15_), .S(SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry_14_), .CO(carry_15_), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry_13_), .CO(carry_14_), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry_12_), .CO(carry_13_), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry_11_), .CO(carry_12_), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry_10_), .CO(carry_11_), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry_1_), .CO(carry_2_), .S(SUM[1])
         );
  an02d0 U1 ( .A1(A[0]), .A2(B[0]), .Z(carry_1_) );
  xr02d1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   carry_15_, carry_14_, carry_13_, carry_12_, carry_11_, carry_10_,
         carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_, carry_3_,
         carry_2_, carry_1_;

  ad01d0 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry_15_), .S(SUM[15]) );
  ad01d0 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry_14_), .CO(carry_15_), .S(
        SUM[14]) );
  ad01d0 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry_13_), .CO(carry_14_), .S(
        SUM[13]) );
  ad01d0 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry_12_), .CO(carry_13_), .S(
        SUM[12]) );
  ad01d0 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry_11_), .CO(carry_12_), .S(
        SUM[11]) );
  ad01d0 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry_10_), .CO(carry_11_), .S(
        SUM[10]) );
  ad01d0 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry_9_), .CO(carry_10_), .S(SUM[9])
         );
  ad01d0 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry_8_), .CO(carry_9_), .S(SUM[8])
         );
  ad01d0 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry_7_), .CO(carry_8_), .S(SUM[7])
         );
  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry_6_), .CO(carry_7_), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry_5_), .CO(carry_6_), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry_4_), .CO(carry_5_), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry_3_), .CO(carry_4_), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry_2_), .CO(carry_3_), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry_1_), .CO(carry_2_), .S(SUM[1])
         );
  or02d0 U1 ( .A1(B[0]), .A2(A[0]), .Z(carry_1_) );
  xn02d1 U2 ( .A1(A[0]), .A2(B[0]), .ZN(SUM[0]) );
endmodule


module ALU_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   carry_15_, carry_14_, carry_13_, carry_12_, carry_11_, carry_10_,
         carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_, carry_3_,
         carry_2_;

  ah01d0 U1_1_14 ( .A(A[14]), .B(carry_14_), .CO(carry_15_), .S(SUM[14]) );
  ah01d0 U1_1_13 ( .A(A[13]), .B(carry_13_), .CO(carry_14_), .S(SUM[13]) );
  ah01d0 U1_1_12 ( .A(A[12]), .B(carry_12_), .CO(carry_13_), .S(SUM[12]) );
  ah01d0 U1_1_11 ( .A(A[11]), .B(carry_11_), .CO(carry_12_), .S(SUM[11]) );
  ah01d0 U1_1_10 ( .A(A[10]), .B(carry_10_), .CO(carry_11_), .S(SUM[10]) );
  ah01d0 U1_1_9 ( .A(A[9]), .B(carry_9_), .CO(carry_10_), .S(SUM[9]) );
  ah01d0 U1_1_8 ( .A(A[8]), .B(carry_8_), .CO(carry_9_), .S(SUM[8]) );
  ah01d0 U1_1_7 ( .A(A[7]), .B(carry_7_), .CO(carry_8_), .S(SUM[7]) );
  ah01d0 U1_1_6 ( .A(A[6]), .B(carry_6_), .CO(carry_7_), .S(SUM[6]) );
  ah01d0 U1_1_5 ( .A(A[5]), .B(carry_5_), .CO(carry_6_), .S(SUM[5]) );
  ah01d0 U1_1_4 ( .A(A[4]), .B(carry_4_), .CO(carry_5_), .S(SUM[4]) );
  ah01d0 U1_1_3 ( .A(A[3]), .B(carry_3_), .CO(carry_4_), .S(SUM[3]) );
  ah01d0 U1_1_2 ( .A(A[2]), .B(carry_2_), .CO(carry_3_), .S(SUM[2]) );
  ah01d0 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry_2_), .S(SUM[1]) );
  xr02d1 U1 ( .A1(carry_15_), .A2(A[15]), .Z(SUM[15]) );
  inv0d0 U2 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module ALU_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   carry_15_, carry_14_, carry_13_, carry_12_, carry_11_, carry_10_,
         carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_, carry_3_,
         carry_2_, carry_1_, B_not_15_, B_not_14_, B_not_13_, B_not_12_,
         B_not_11_, B_not_10_, B_not_9_, B_not_8_, B_not_7_, B_not_6_,
         B_not_5_, B_not_4_, B_not_3_, B_not_2_, B_not_1_, B_not_0_;

  ad01d0 U2_15 ( .A(A[15]), .B(B_not_15_), .CI(carry_15_), .S(DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(B_not_14_), .CI(carry_14_), .CO(carry_15_), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(B_not_13_), .CI(carry_13_), .CO(carry_14_), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(B_not_12_), .CI(carry_12_), .CO(carry_13_), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(B_not_11_), .CI(carry_11_), .CO(carry_12_), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(B_not_10_), .CI(carry_10_), .CO(carry_11_), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(B_not_9_), .CI(carry_9_), .CO(carry_10_), .S(
        DIFF[9]) );
  ad01d0 U2_8 ( .A(A[8]), .B(B_not_8_), .CI(carry_8_), .CO(carry_9_), .S(
        DIFF[8]) );
  ad01d0 U2_7 ( .A(A[7]), .B(B_not_7_), .CI(carry_7_), .CO(carry_8_), .S(
        DIFF[7]) );
  ad01d0 U2_6 ( .A(A[6]), .B(B_not_6_), .CI(carry_6_), .CO(carry_7_), .S(
        DIFF[6]) );
  ad01d0 U2_5 ( .A(A[5]), .B(B_not_5_), .CI(carry_5_), .CO(carry_6_), .S(
        DIFF[5]) );
  ad01d0 U2_4 ( .A(A[4]), .B(B_not_4_), .CI(carry_4_), .CO(carry_5_), .S(
        DIFF[4]) );
  ad01d0 U2_3 ( .A(A[3]), .B(B_not_3_), .CI(carry_3_), .CO(carry_4_), .S(
        DIFF[3]) );
  ad01d0 U2_2 ( .A(A[2]), .B(B_not_2_), .CI(carry_2_), .CO(carry_3_), .S(
        DIFF[2]) );
  ad01d0 U2_1 ( .A(A[1]), .B(B_not_1_), .CI(carry_1_), .CO(carry_2_), .S(
        DIFF[1]) );
  or02d0 U1 ( .A1(B_not_0_), .A2(A[0]), .Z(carry_1_) );
  xn02d1 U2 ( .A1(A[0]), .A2(B_not_0_), .ZN(DIFF[0]) );
  inv0d0 U3 ( .I(B[9]), .ZN(B_not_9_) );
  inv0d0 U4 ( .I(B[8]), .ZN(B_not_8_) );
  inv0d0 U5 ( .I(B[7]), .ZN(B_not_7_) );
  inv0d0 U6 ( .I(B[6]), .ZN(B_not_6_) );
  inv0d0 U7 ( .I(B[5]), .ZN(B_not_5_) );
  inv0d0 U8 ( .I(B[4]), .ZN(B_not_4_) );
  inv0d0 U9 ( .I(B[3]), .ZN(B_not_3_) );
  inv0d0 U10 ( .I(B[2]), .ZN(B_not_2_) );
  inv0d0 U11 ( .I(B[1]), .ZN(B_not_1_) );
  inv0d0 U12 ( .I(B[15]), .ZN(B_not_15_) );
  inv0d0 U13 ( .I(B[14]), .ZN(B_not_14_) );
  inv0d0 U14 ( .I(B[13]), .ZN(B_not_13_) );
  inv0d0 U15 ( .I(B[12]), .ZN(B_not_12_) );
  inv0d0 U16 ( .I(B[11]), .ZN(B_not_11_) );
  inv0d0 U17 ( .I(B[10]), .ZN(B_not_10_) );
  inv0d0 U18 ( .I(B[0]), .ZN(B_not_0_) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   carry_15_, carry_14_, carry_13_, carry_12_, carry_11_, carry_10_,
         carry_9_, carry_8_, carry_7_, carry_6_, carry_5_, carry_4_, carry_3_,
         carry_2_, carry_1_, B_not_15_, B_not_14_, B_not_13_, B_not_12_,
         B_not_11_, B_not_10_, B_not_9_, B_not_8_, B_not_7_, B_not_6_,
         B_not_5_, B_not_4_, B_not_3_, B_not_2_, B_not_1_, B_not_0_;

  ad01d0 U2_15 ( .A(A[15]), .B(B_not_15_), .CI(carry_15_), .S(DIFF[15]) );
  ad01d0 U2_14 ( .A(A[14]), .B(B_not_14_), .CI(carry_14_), .CO(carry_15_), .S(
        DIFF[14]) );
  ad01d0 U2_13 ( .A(A[13]), .B(B_not_13_), .CI(carry_13_), .CO(carry_14_), .S(
        DIFF[13]) );
  ad01d0 U2_12 ( .A(A[12]), .B(B_not_12_), .CI(carry_12_), .CO(carry_13_), .S(
        DIFF[12]) );
  ad01d0 U2_11 ( .A(A[11]), .B(B_not_11_), .CI(carry_11_), .CO(carry_12_), .S(
        DIFF[11]) );
  ad01d0 U2_10 ( .A(A[10]), .B(B_not_10_), .CI(carry_10_), .CO(carry_11_), .S(
        DIFF[10]) );
  ad01d0 U2_9 ( .A(A[9]), .B(B_not_9_), .CI(carry_9_), .CO(carry_10_), .S(
        DIFF[9]) );
  ad01d0 U2_8 ( .A(A[8]), .B(B_not_8_), .CI(carry_8_), .CO(carry_9_), .S(
        DIFF[8]) );
  ad01d0 U2_7 ( .A(A[7]), .B(B_not_7_), .CI(carry_7_), .CO(carry_8_), .S(
        DIFF[7]) );
  ad01d0 U2_6 ( .A(A[6]), .B(B_not_6_), .CI(carry_6_), .CO(carry_7_), .S(
        DIFF[6]) );
  ad01d0 U2_5 ( .A(A[5]), .B(B_not_5_), .CI(carry_5_), .CO(carry_6_), .S(
        DIFF[5]) );
  ad01d0 U2_4 ( .A(A[4]), .B(B_not_4_), .CI(carry_4_), .CO(carry_5_), .S(
        DIFF[4]) );
  ad01d0 U2_3 ( .A(A[3]), .B(B_not_3_), .CI(carry_3_), .CO(carry_4_), .S(
        DIFF[3]) );
  ad01d0 U2_2 ( .A(A[2]), .B(B_not_2_), .CI(carry_2_), .CO(carry_3_), .S(
        DIFF[2]) );
  ad01d0 U2_1 ( .A(A[1]), .B(B_not_1_), .CI(carry_1_), .CO(carry_2_), .S(
        DIFF[1]) );
  an02d0 U1 ( .A1(A[0]), .A2(B_not_0_), .Z(carry_1_) );
  xr02d1 U2 ( .A1(B_not_0_), .A2(A[0]), .Z(DIFF[0]) );
  inv0d0 U3 ( .I(B[9]), .ZN(B_not_9_) );
  inv0d0 U4 ( .I(B[8]), .ZN(B_not_8_) );
  inv0d0 U5 ( .I(B[7]), .ZN(B_not_7_) );
  inv0d0 U6 ( .I(B[6]), .ZN(B_not_6_) );
  inv0d0 U7 ( .I(B[5]), .ZN(B_not_5_) );
  inv0d0 U8 ( .I(B[4]), .ZN(B_not_4_) );
  inv0d0 U9 ( .I(B[3]), .ZN(B_not_3_) );
  inv0d0 U10 ( .I(B[2]), .ZN(B_not_2_) );
  inv0d0 U11 ( .I(B[1]), .ZN(B_not_1_) );
  inv0d0 U12 ( .I(B[15]), .ZN(B_not_15_) );
  inv0d0 U13 ( .I(B[14]), .ZN(B_not_14_) );
  inv0d0 U14 ( .I(B[13]), .ZN(B_not_13_) );
  inv0d0 U15 ( .I(B[12]), .ZN(B_not_12_) );
  inv0d0 U16 ( .I(B[11]), .ZN(B_not_11_) );
  inv0d0 U17 ( .I(B[10]), .ZN(B_not_10_) );
  inv0d0 U18 ( .I(B[0]), .ZN(B_not_0_) );
endmodule


module ALU_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  aor21d1 U1 ( .B1(A[9]), .B2(n1), .A(n2), .Z(SUM[9]) );
  aor21d1 U2 ( .B1(A[8]), .B2(n3), .A(n4), .Z(SUM[8]) );
  aor21d1 U3 ( .B1(A[7]), .B2(n5), .A(n6), .Z(SUM[7]) );
  aor21d1 U4 ( .B1(A[6]), .B2(n7), .A(n8), .Z(SUM[6]) );
  aor21d1 U5 ( .B1(A[5]), .B2(n9), .A(n10), .Z(SUM[5]) );
  aor21d1 U6 ( .B1(A[4]), .B2(n11), .A(n12), .Z(SUM[4]) );
  aor21d1 U7 ( .B1(A[3]), .B2(n13), .A(n14), .Z(SUM[3]) );
  aor21d1 U8 ( .B1(A[2]), .B2(n15), .A(n16), .Z(SUM[2]) );
  aor21d1 U9 ( .B1(A[1]), .B2(A[0]), .A(n17), .Z(SUM[1]) );
  xr02d1 U10 ( .A1(A[15]), .A2(n18), .Z(SUM[15]) );
  an12d1 U11 ( .A2(n19), .A1(A[14]), .Z(n18) );
  xr02d1 U12 ( .A1(A[14]), .A2(n19), .Z(SUM[14]) );
  aor21d1 U13 ( .B1(A[13]), .B2(n20), .A(n19), .Z(SUM[13]) );
  nr02d0 U14 ( .A1(n20), .A2(A[13]), .ZN(n19) );
  inv0d0 U15 ( .I(n21), .ZN(n20) );
  aor21d1 U16 ( .B1(A[12]), .B2(n22), .A(n21), .Z(SUM[12]) );
  nr02d0 U17 ( .A1(n22), .A2(A[12]), .ZN(n21) );
  inv0d0 U18 ( .I(n23), .ZN(n22) );
  aor21d1 U19 ( .B1(A[11]), .B2(n24), .A(n23), .Z(SUM[11]) );
  nr02d0 U20 ( .A1(n24), .A2(A[11]), .ZN(n23) );
  inv0d0 U21 ( .I(n25), .ZN(n24) );
  aor21d1 U22 ( .B1(A[10]), .B2(n26), .A(n25), .Z(SUM[10]) );
  nr02d0 U23 ( .A1(n26), .A2(A[10]), .ZN(n25) );
  inv0d0 U24 ( .I(n2), .ZN(n26) );
  nr02d0 U25 ( .A1(n1), .A2(A[9]), .ZN(n2) );
  inv0d0 U26 ( .I(n4), .ZN(n1) );
  nr02d0 U27 ( .A1(n3), .A2(A[8]), .ZN(n4) );
  inv0d0 U28 ( .I(n6), .ZN(n3) );
  nr02d0 U29 ( .A1(n5), .A2(A[7]), .ZN(n6) );
  inv0d0 U30 ( .I(n8), .ZN(n5) );
  nr02d0 U31 ( .A1(n7), .A2(A[6]), .ZN(n8) );
  inv0d0 U32 ( .I(n10), .ZN(n7) );
  nr02d0 U33 ( .A1(n9), .A2(A[5]), .ZN(n10) );
  inv0d0 U34 ( .I(n12), .ZN(n9) );
  nr02d0 U35 ( .A1(n11), .A2(A[4]), .ZN(n12) );
  inv0d0 U36 ( .I(n14), .ZN(n11) );
  nr02d0 U37 ( .A1(n13), .A2(A[3]), .ZN(n14) );
  inv0d0 U38 ( .I(n16), .ZN(n13) );
  nr02d0 U39 ( .A1(n15), .A2(A[2]), .ZN(n16) );
  inv0d0 U40 ( .I(n17), .ZN(n15) );
  nr02d0 U41 ( .A1(A[1]), .A2(A[0]), .ZN(n17) );
  inv0d0 U42 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module PRGRM_CNT_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   carry_7_, carry_6_, carry_5_, carry_4_, carry_3_, carry_2_;

  ah01d0 U1_1_6 ( .A(A[6]), .B(carry_6_), .CO(carry_7_), .S(SUM[6]) );
  ah01d0 U1_1_5 ( .A(A[5]), .B(carry_5_), .CO(carry_6_), .S(SUM[5]) );
  ah01d0 U1_1_4 ( .A(A[4]), .B(carry_4_), .CO(carry_5_), .S(SUM[4]) );
  ah01d0 U1_1_3 ( .A(A[3]), .B(carry_3_), .CO(carry_4_), .S(SUM[3]) );
  ah01d0 U1_1_2 ( .A(A[2]), .B(carry_2_), .CO(carry_3_), .S(SUM[2]) );
  ah01d0 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry_2_), .S(SUM[1]) );
  xr02d1 U1 ( .A1(carry_7_), .A2(A[7]), .Z(SUM[7]) );
  inv0d0 U2 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module STACK_MEM_2 ( clk, PushEnbl, PopEnbl, Stack_Full, TOS, PushDataIn, 
        PopDataOut );
  input [0:2] TOS;
  input [3:0] PushDataIn;
  output [3:0] PopDataOut;
  input clk, PushEnbl, PopEnbl, Stack_Full;
  wire   N10, N11, Stack_Mem_0__3_, Stack_Mem_0__2_, Stack_Mem_0__1_,
         Stack_Mem_0__0_, Stack_Mem_1__3_, Stack_Mem_1__2_, Stack_Mem_1__1_,
         Stack_Mem_1__0_, Stack_Mem_2__3_, Stack_Mem_2__2_, Stack_Mem_2__1_,
         Stack_Mem_2__0_, Stack_Mem_3__3_, Stack_Mem_3__2_, Stack_Mem_3__1_,
         Stack_Mem_3__0_, Stack_Mem_4__3_, Stack_Mem_4__2_, Stack_Mem_4__1_,
         Stack_Mem_4__0_, Stack_Mem_5__3_, Stack_Mem_5__2_, Stack_Mem_5__1_,
         Stack_Mem_5__0_, Stack_Mem_6__3_, Stack_Mem_6__2_, Stack_Mem_6__1_,
         Stack_Mem_6__0_, Stack_Mem_7__3_, Stack_Mem_7__2_, Stack_Mem_7__1_,
         Stack_Mem_7__0_, N68, N69, N70, N71, n2, n4, n7, n9, n11, n13, n15,
         n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37, n39, n41, n43,
         n45, n70, n72, n74, n76, n78, n80, n82, n84, n86, n88, n90, n92, n94,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136;

  aoi2222d1 U67 ( .A1(Stack_Mem_7__0_), .A2(n133), .B1(Stack_Mem_6__0_), .B2(
        n132), .C1(Stack_Mem_5__0_), .C2(n131), .D1(Stack_Mem_4__0_), .D2(n130), .ZN(n134) );
  aoi2222d1 U68 ( .A1(Stack_Mem_3__0_), .A2(n129), .B1(Stack_Mem_2__0_), .B2(
        n128), .C1(Stack_Mem_1__0_), .C2(n127), .D1(Stack_Mem_0__0_), .D2(n126), .ZN(n135) );
  aoi2222d1 U69 ( .A1(Stack_Mem_7__1_), .A2(n133), .B1(Stack_Mem_6__1_), .B2(
        n132), .C1(Stack_Mem_5__1_), .C2(n131), .D1(Stack_Mem_4__1_), .D2(n130), .ZN(n124) );
  aoi2222d1 U70 ( .A1(Stack_Mem_3__1_), .A2(n129), .B1(Stack_Mem_2__1_), .B2(
        n128), .C1(Stack_Mem_1__1_), .C2(n127), .D1(Stack_Mem_0__1_), .D2(n126), .ZN(n125) );
  aoi2222d1 U71 ( .A1(Stack_Mem_7__2_), .A2(n133), .B1(Stack_Mem_6__2_), .B2(
        n132), .C1(Stack_Mem_5__2_), .C2(n131), .D1(Stack_Mem_4__2_), .D2(n130), .ZN(n122) );
  aoi2222d1 U72 ( .A1(Stack_Mem_3__2_), .A2(n129), .B1(Stack_Mem_2__2_), .B2(
        n128), .C1(Stack_Mem_1__2_), .C2(n127), .D1(Stack_Mem_0__2_), .D2(n126), .ZN(n123) );
  aoi2222d1 U73 ( .A1(Stack_Mem_7__3_), .A2(n133), .B1(Stack_Mem_6__3_), .B2(
        n132), .C1(Stack_Mem_5__3_), .C2(n131), .D1(Stack_Mem_4__3_), .D2(n130), .ZN(n120) );
  nr03d0 U74 ( .A1(n119), .A2(n118), .A3(n117), .ZN(n130) );
  nr03d0 U75 ( .A1(n116), .A2(n118), .A3(n117), .ZN(n131) );
  nr03d0 U76 ( .A1(n115), .A2(n118), .A3(n119), .ZN(n132) );
  nr03d0 U77 ( .A1(n115), .A2(n118), .A3(n116), .ZN(n133) );
  aoi2222d1 U78 ( .A1(Stack_Mem_3__3_), .A2(n129), .B1(Stack_Mem_2__3_), .B2(
        n128), .C1(Stack_Mem_1__3_), .C2(n127), .D1(Stack_Mem_0__3_), .D2(n126), .ZN(n121) );
  nr03d0 U79 ( .A1(n117), .A2(n119), .A3(n114), .ZN(n126) );
  nr03d0 U80 ( .A1(n117), .A2(n116), .A3(n114), .ZN(n127) );
  nr03d0 U81 ( .A1(n119), .A2(n115), .A3(n114), .ZN(n128) );
  nr03d0 U82 ( .A1(n116), .A2(n115), .A3(n114), .ZN(n129) );
  aoim22d1 U83 ( .A1(N11), .A2(n113), .B1(n111), .B2(n113), .Z(n118) );
  aoim22d1 U84 ( .A1(N10), .A2(n113), .B1(n109), .B2(n113), .Z(n115) );
  aoim22d1 U85 ( .A1(n107), .A2(n113), .B1(n107), .B2(n113), .Z(n116) );
  sdnrq1 PopDataOut_reg_3_ ( .D(n96), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[3]) );
  sdnrq1 PopDataOut_reg_2_ ( .D(n94), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[2]) );
  sdnrq1 PopDataOut_reg_1_ ( .D(n92), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[1]) );
  sdnrq1 PopDataOut_reg_0_ ( .D(n90), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[0]) );
  sdnrq1 Stack_Mem_reg_7__3_ ( .D(n88), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__3_) );
  sdnrq1 Stack_Mem_reg_7__2_ ( .D(n86), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__2_) );
  sdnrq1 Stack_Mem_reg_7__1_ ( .D(n84), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__1_) );
  sdnrq1 Stack_Mem_reg_7__0_ ( .D(n82), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__0_) );
  sdnrq1 Stack_Mem_reg_6__3_ ( .D(n80), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__3_) );
  sdnrq1 Stack_Mem_reg_6__2_ ( .D(n78), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__2_) );
  sdnrq1 Stack_Mem_reg_6__1_ ( .D(n76), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__1_) );
  sdnrq1 Stack_Mem_reg_6__0_ ( .D(n74), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__0_) );
  sdnrq1 Stack_Mem_reg_5__3_ ( .D(n72), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__3_) );
  sdnrq1 Stack_Mem_reg_5__2_ ( .D(n70), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__2_) );
  sdnrq1 Stack_Mem_reg_5__1_ ( .D(n45), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__1_) );
  sdnrq1 Stack_Mem_reg_5__0_ ( .D(n43), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__0_) );
  sdnrq1 Stack_Mem_reg_4__3_ ( .D(n41), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__3_) );
  sdnrq1 Stack_Mem_reg_4__2_ ( .D(n39), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__2_) );
  sdnrq1 Stack_Mem_reg_4__1_ ( .D(n37), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__1_) );
  sdnrq1 Stack_Mem_reg_4__0_ ( .D(n35), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__0_) );
  sdnrq1 Stack_Mem_reg_3__3_ ( .D(n33), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__3_) );
  sdnrq1 Stack_Mem_reg_3__2_ ( .D(n31), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__2_) );
  sdnrq1 Stack_Mem_reg_3__1_ ( .D(n29), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__1_) );
  sdnrq1 Stack_Mem_reg_3__0_ ( .D(n27), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__0_) );
  sdnrq1 Stack_Mem_reg_2__3_ ( .D(n25), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__3_) );
  sdnrq1 Stack_Mem_reg_2__2_ ( .D(n23), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__2_) );
  sdnrq1 Stack_Mem_reg_2__1_ ( .D(n21), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__1_) );
  sdnrq1 Stack_Mem_reg_2__0_ ( .D(n19), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__0_) );
  sdnrq1 Stack_Mem_reg_1__3_ ( .D(n17), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__3_) );
  sdnrq1 Stack_Mem_reg_1__2_ ( .D(n15), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__2_) );
  sdnrq1 Stack_Mem_reg_1__1_ ( .D(n13), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__1_) );
  sdnrq1 Stack_Mem_reg_1__0_ ( .D(n11), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__0_) );
  sdnrq1 Stack_Mem_reg_0__3_ ( .D(n9), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__3_) );
  sdnrq1 Stack_Mem_reg_0__2_ ( .D(n7), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__2_) );
  sdnrq1 Stack_Mem_reg_0__1_ ( .D(n4), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__1_) );
  sdnrq1 Stack_Mem_reg_0__0_ ( .D(n2), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__0_) );
  mx02d0 U4 ( .I0(PushDataIn[0]), .I1(Stack_Mem_0__0_), .S(n104), .Z(n2) );
  mx02d0 U6 ( .I0(PushDataIn[1]), .I1(Stack_Mem_0__1_), .S(n104), .Z(n4) );
  mx02d0 U8 ( .I0(PushDataIn[2]), .I1(Stack_Mem_0__2_), .S(n104), .Z(n7) );
  mx02d0 U10 ( .I0(PushDataIn[3]), .I1(Stack_Mem_0__3_), .S(n104), .Z(n9) );
  mx02d0 U12 ( .I0(PushDataIn[0]), .I1(Stack_Mem_1__0_), .S(n103), .Z(n11) );
  mx02d0 U14 ( .I0(PushDataIn[1]), .I1(Stack_Mem_1__1_), .S(n103), .Z(n13) );
  mx02d0 U16 ( .I0(PushDataIn[2]), .I1(Stack_Mem_1__2_), .S(n103), .Z(n15) );
  mx02d0 U18 ( .I0(PushDataIn[3]), .I1(Stack_Mem_1__3_), .S(n103), .Z(n17) );
  mx02d0 U20 ( .I0(PushDataIn[0]), .I1(Stack_Mem_2__0_), .S(n102), .Z(n19) );
  mx02d0 U22 ( .I0(PushDataIn[1]), .I1(Stack_Mem_2__1_), .S(n102), .Z(n21) );
  mx02d0 U24 ( .I0(PushDataIn[2]), .I1(Stack_Mem_2__2_), .S(n102), .Z(n23) );
  mx02d0 U26 ( .I0(PushDataIn[3]), .I1(Stack_Mem_2__3_), .S(n102), .Z(n25) );
  mx02d0 U28 ( .I0(PushDataIn[0]), .I1(Stack_Mem_3__0_), .S(n101), .Z(n27) );
  mx02d0 U30 ( .I0(PushDataIn[1]), .I1(Stack_Mem_3__1_), .S(n101), .Z(n29) );
  mx02d0 U32 ( .I0(PushDataIn[2]), .I1(Stack_Mem_3__2_), .S(n101), .Z(n31) );
  mx02d0 U34 ( .I0(PushDataIn[3]), .I1(Stack_Mem_3__3_), .S(n101), .Z(n33) );
  mx02d0 U36 ( .I0(PushDataIn[0]), .I1(Stack_Mem_4__0_), .S(n100), .Z(n35) );
  mx02d0 U38 ( .I0(PushDataIn[1]), .I1(Stack_Mem_4__1_), .S(n100), .Z(n37) );
  mx02d0 U40 ( .I0(PushDataIn[2]), .I1(Stack_Mem_4__2_), .S(n100), .Z(n39) );
  mx02d0 U42 ( .I0(PushDataIn[3]), .I1(Stack_Mem_4__3_), .S(n100), .Z(n41) );
  mx02d0 U44 ( .I0(PushDataIn[0]), .I1(Stack_Mem_5__0_), .S(n99), .Z(n43) );
  mx02d0 U46 ( .I0(PushDataIn[1]), .I1(Stack_Mem_5__1_), .S(n99), .Z(n45) );
  mx02d0 U48 ( .I0(PushDataIn[2]), .I1(Stack_Mem_5__2_), .S(n99), .Z(n70) );
  mx02d0 U50 ( .I0(PushDataIn[3]), .I1(Stack_Mem_5__3_), .S(n99), .Z(n72) );
  mx02d0 U52 ( .I0(PushDataIn[0]), .I1(Stack_Mem_6__0_), .S(n98), .Z(n74) );
  mx02d0 U54 ( .I0(PushDataIn[1]), .I1(Stack_Mem_6__1_), .S(n98), .Z(n76) );
  mx02d0 U56 ( .I0(PushDataIn[2]), .I1(Stack_Mem_6__2_), .S(n98), .Z(n78) );
  mx02d0 U58 ( .I0(PushDataIn[3]), .I1(Stack_Mem_6__3_), .S(n98), .Z(n80) );
  mx02d0 U60 ( .I0(PushDataIn[0]), .I1(Stack_Mem_7__0_), .S(n97), .Z(n82) );
  mx02d0 U62 ( .I0(PushDataIn[1]), .I1(Stack_Mem_7__1_), .S(n97), .Z(n84) );
  mx02d0 U64 ( .I0(PushDataIn[2]), .I1(Stack_Mem_7__2_), .S(n97), .Z(n86) );
  mx02d0 U66 ( .I0(PushDataIn[3]), .I1(Stack_Mem_7__3_), .S(n97), .Z(n88) );
  mx02d0 U87 ( .I0(N71), .I1(PopDataOut[0]), .S(n136), .Z(n90) );
  mx02d0 U89 ( .I0(N70), .I1(PopDataOut[1]), .S(n136), .Z(n92) );
  mx02d0 U91 ( .I0(N69), .I1(PopDataOut[2]), .S(n136), .Z(n94) );
  mx02d0 U93 ( .I0(N68), .I1(PopDataOut[3]), .S(n136), .Z(n96) );
  inv0d1 U94 ( .I(n105), .ZN(n107) );
  inv0d1 U95 ( .I(n106), .ZN(n105) );
  inv0d1 U96 ( .I(TOS[2]), .ZN(n106) );
  inv0d1 U97 ( .I(n109), .ZN(n108) );
  inv0d1 U98 ( .I(n118), .ZN(n114) );
  inv0d1 U99 ( .I(n115), .ZN(n117) );
  inv0d1 U100 ( .I(TOS[1]), .ZN(n109) );
  inv0d1 U101 ( .I(n111), .ZN(n110) );
  inv0d1 U102 ( .I(n116), .ZN(n119) );
  nd04d0 U103 ( .A1(PushEnbl), .A2(n105), .A3(n108), .A4(n110), .ZN(n97) );
  nd04d0 U104 ( .A1(PushEnbl), .A2(n108), .A3(n110), .A4(n107), .ZN(n98) );
  nd04d0 U105 ( .A1(PushEnbl), .A2(n105), .A3(n110), .A4(n109), .ZN(n99) );
  nd04d0 U106 ( .A1(PushEnbl), .A2(n110), .A3(n109), .A4(n107), .ZN(n100) );
  nd04d0 U107 ( .A1(PushEnbl), .A2(n105), .A3(n108), .A4(n111), .ZN(n101) );
  nd04d0 U108 ( .A1(PushEnbl), .A2(n108), .A3(n111), .A4(n107), .ZN(n102) );
  nd04d0 U109 ( .A1(PushEnbl), .A2(n105), .A3(n111), .A4(n109), .ZN(n103) );
  nd04d0 U110 ( .A1(PushEnbl), .A2(n111), .A3(n109), .A4(n107), .ZN(n104) );
  inv0d1 U111 ( .I(TOS[0]), .ZN(n111) );
  inv0d1 U112 ( .I(PopEnbl), .ZN(n136) );
  nd02d1 U113 ( .A1(n135), .A2(n134), .ZN(N71) );
  nd02d1 U114 ( .A1(n125), .A2(n124), .ZN(N70) );
  nd02d1 U115 ( .A1(n123), .A2(n122), .ZN(N69) );
  nd02d1 U116 ( .A1(n121), .A2(n120), .ZN(N68) );
  inv0d1 U117 ( .I(Stack_Full), .ZN(n113) );
  xr02d1 U118 ( .A1(n108), .A2(n107), .Z(N10) );
  nr02d0 U119 ( .A1(n105), .A2(n108), .ZN(n112) );
  xr02d1 U120 ( .A1(n110), .A2(n112), .Z(N11) );
endmodule


module STACK_MEM_1 ( clk, PushEnbl, PopEnbl, Stack_Full, TOS, PushDataIn, 
        PopDataOut );
  input [0:2] TOS;
  input [3:0] PushDataIn;
  output [3:0] PopDataOut;
  input clk, PushEnbl, PopEnbl, Stack_Full;
  wire   N10, N11, Stack_Mem_0__3_, Stack_Mem_0__2_, Stack_Mem_0__1_,
         Stack_Mem_0__0_, Stack_Mem_1__3_, Stack_Mem_1__2_, Stack_Mem_1__1_,
         Stack_Mem_1__0_, Stack_Mem_2__3_, Stack_Mem_2__2_, Stack_Mem_2__1_,
         Stack_Mem_2__0_, Stack_Mem_3__3_, Stack_Mem_3__2_, Stack_Mem_3__1_,
         Stack_Mem_3__0_, Stack_Mem_4__3_, Stack_Mem_4__2_, Stack_Mem_4__1_,
         Stack_Mem_4__0_, Stack_Mem_5__3_, Stack_Mem_5__2_, Stack_Mem_5__1_,
         Stack_Mem_5__0_, Stack_Mem_6__3_, Stack_Mem_6__2_, Stack_Mem_6__1_,
         Stack_Mem_6__0_, Stack_Mem_7__3_, Stack_Mem_7__2_, Stack_Mem_7__1_,
         Stack_Mem_7__0_, N68, N69, N70, N71, n2, n4, n7, n9, n11, n13, n15,
         n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37, n39, n41, n43,
         n45, n70, n72, n74, n76, n78, n80, n82, n84, n86, n88, n90, n92, n94,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136;

  aoi2222d1 U67 ( .A1(Stack_Mem_7__0_), .A2(n133), .B1(Stack_Mem_6__0_), .B2(
        n132), .C1(Stack_Mem_5__0_), .C2(n131), .D1(Stack_Mem_4__0_), .D2(n130), .ZN(n134) );
  aoi2222d1 U68 ( .A1(Stack_Mem_3__0_), .A2(n129), .B1(Stack_Mem_2__0_), .B2(
        n128), .C1(Stack_Mem_1__0_), .C2(n127), .D1(Stack_Mem_0__0_), .D2(n126), .ZN(n135) );
  aoi2222d1 U69 ( .A1(Stack_Mem_7__1_), .A2(n133), .B1(Stack_Mem_6__1_), .B2(
        n132), .C1(Stack_Mem_5__1_), .C2(n131), .D1(Stack_Mem_4__1_), .D2(n130), .ZN(n124) );
  aoi2222d1 U70 ( .A1(Stack_Mem_3__1_), .A2(n129), .B1(Stack_Mem_2__1_), .B2(
        n128), .C1(Stack_Mem_1__1_), .C2(n127), .D1(Stack_Mem_0__1_), .D2(n126), .ZN(n125) );
  aoi2222d1 U71 ( .A1(Stack_Mem_7__2_), .A2(n133), .B1(Stack_Mem_6__2_), .B2(
        n132), .C1(Stack_Mem_5__2_), .C2(n131), .D1(Stack_Mem_4__2_), .D2(n130), .ZN(n122) );
  aoi2222d1 U72 ( .A1(Stack_Mem_3__2_), .A2(n129), .B1(Stack_Mem_2__2_), .B2(
        n128), .C1(Stack_Mem_1__2_), .C2(n127), .D1(Stack_Mem_0__2_), .D2(n126), .ZN(n123) );
  aoi2222d1 U73 ( .A1(Stack_Mem_7__3_), .A2(n133), .B1(Stack_Mem_6__3_), .B2(
        n132), .C1(Stack_Mem_5__3_), .C2(n131), .D1(Stack_Mem_4__3_), .D2(n130), .ZN(n120) );
  nr03d0 U74 ( .A1(n119), .A2(n118), .A3(n117), .ZN(n130) );
  nr03d0 U75 ( .A1(n116), .A2(n118), .A3(n117), .ZN(n131) );
  nr03d0 U76 ( .A1(n115), .A2(n118), .A3(n119), .ZN(n132) );
  nr03d0 U77 ( .A1(n115), .A2(n118), .A3(n116), .ZN(n133) );
  aoi2222d1 U78 ( .A1(Stack_Mem_3__3_), .A2(n129), .B1(Stack_Mem_2__3_), .B2(
        n128), .C1(Stack_Mem_1__3_), .C2(n127), .D1(Stack_Mem_0__3_), .D2(n126), .ZN(n121) );
  nr03d0 U79 ( .A1(n117), .A2(n119), .A3(n114), .ZN(n126) );
  nr03d0 U80 ( .A1(n117), .A2(n116), .A3(n114), .ZN(n127) );
  nr03d0 U81 ( .A1(n119), .A2(n115), .A3(n114), .ZN(n128) );
  nr03d0 U82 ( .A1(n116), .A2(n115), .A3(n114), .ZN(n129) );
  aoim22d1 U83 ( .A1(N11), .A2(n113), .B1(n111), .B2(n113), .Z(n118) );
  aoim22d1 U84 ( .A1(N10), .A2(n113), .B1(n109), .B2(n113), .Z(n115) );
  aoim22d1 U85 ( .A1(n107), .A2(n113), .B1(n107), .B2(n113), .Z(n116) );
  sdnrq1 PopDataOut_reg_3_ ( .D(n96), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[3]) );
  sdnrq1 PopDataOut_reg_2_ ( .D(n94), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[2]) );
  sdnrq1 PopDataOut_reg_1_ ( .D(n92), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[1]) );
  sdnrq1 PopDataOut_reg_0_ ( .D(n90), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[0]) );
  sdnrq1 Stack_Mem_reg_7__3_ ( .D(n88), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__3_) );
  sdnrq1 Stack_Mem_reg_7__2_ ( .D(n86), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__2_) );
  sdnrq1 Stack_Mem_reg_7__1_ ( .D(n84), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__1_) );
  sdnrq1 Stack_Mem_reg_7__0_ ( .D(n82), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_7__0_) );
  sdnrq1 Stack_Mem_reg_6__3_ ( .D(n80), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__3_) );
  sdnrq1 Stack_Mem_reg_6__2_ ( .D(n78), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__2_) );
  sdnrq1 Stack_Mem_reg_6__1_ ( .D(n76), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__1_) );
  sdnrq1 Stack_Mem_reg_6__0_ ( .D(n74), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_6__0_) );
  sdnrq1 Stack_Mem_reg_5__3_ ( .D(n72), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__3_) );
  sdnrq1 Stack_Mem_reg_5__2_ ( .D(n70), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__2_) );
  sdnrq1 Stack_Mem_reg_5__1_ ( .D(n45), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__1_) );
  sdnrq1 Stack_Mem_reg_5__0_ ( .D(n43), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_5__0_) );
  sdnrq1 Stack_Mem_reg_4__3_ ( .D(n41), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__3_) );
  sdnrq1 Stack_Mem_reg_4__2_ ( .D(n39), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__2_) );
  sdnrq1 Stack_Mem_reg_4__1_ ( .D(n37), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__1_) );
  sdnrq1 Stack_Mem_reg_4__0_ ( .D(n35), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_4__0_) );
  sdnrq1 Stack_Mem_reg_3__3_ ( .D(n33), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__3_) );
  sdnrq1 Stack_Mem_reg_3__2_ ( .D(n31), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__2_) );
  sdnrq1 Stack_Mem_reg_3__1_ ( .D(n29), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__1_) );
  sdnrq1 Stack_Mem_reg_3__0_ ( .D(n27), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_3__0_) );
  sdnrq1 Stack_Mem_reg_2__3_ ( .D(n25), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__3_) );
  sdnrq1 Stack_Mem_reg_2__2_ ( .D(n23), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__2_) );
  sdnrq1 Stack_Mem_reg_2__1_ ( .D(n21), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__1_) );
  sdnrq1 Stack_Mem_reg_2__0_ ( .D(n19), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_2__0_) );
  sdnrq1 Stack_Mem_reg_1__3_ ( .D(n17), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__3_) );
  sdnrq1 Stack_Mem_reg_1__2_ ( .D(n15), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__2_) );
  sdnrq1 Stack_Mem_reg_1__1_ ( .D(n13), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__1_) );
  sdnrq1 Stack_Mem_reg_1__0_ ( .D(n11), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_1__0_) );
  sdnrq1 Stack_Mem_reg_0__3_ ( .D(n9), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__3_) );
  sdnrq1 Stack_Mem_reg_0__2_ ( .D(n7), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__2_) );
  sdnrq1 Stack_Mem_reg_0__1_ ( .D(n4), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__1_) );
  sdnrq1 Stack_Mem_reg_0__0_ ( .D(n2), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem_0__0_) );
  mx02d0 U4 ( .I0(PushDataIn[0]), .I1(Stack_Mem_0__0_), .S(n104), .Z(n2) );
  mx02d0 U6 ( .I0(PushDataIn[1]), .I1(Stack_Mem_0__1_), .S(n104), .Z(n4) );
  mx02d0 U8 ( .I0(PushDataIn[2]), .I1(Stack_Mem_0__2_), .S(n104), .Z(n7) );
  mx02d0 U10 ( .I0(PushDataIn[3]), .I1(Stack_Mem_0__3_), .S(n104), .Z(n9) );
  mx02d0 U12 ( .I0(PushDataIn[0]), .I1(Stack_Mem_1__0_), .S(n103), .Z(n11) );
  mx02d0 U14 ( .I0(PushDataIn[1]), .I1(Stack_Mem_1__1_), .S(n103), .Z(n13) );
  mx02d0 U16 ( .I0(PushDataIn[2]), .I1(Stack_Mem_1__2_), .S(n103), .Z(n15) );
  mx02d0 U18 ( .I0(PushDataIn[3]), .I1(Stack_Mem_1__3_), .S(n103), .Z(n17) );
  mx02d0 U20 ( .I0(PushDataIn[0]), .I1(Stack_Mem_2__0_), .S(n102), .Z(n19) );
  mx02d0 U22 ( .I0(PushDataIn[1]), .I1(Stack_Mem_2__1_), .S(n102), .Z(n21) );
  mx02d0 U24 ( .I0(PushDataIn[2]), .I1(Stack_Mem_2__2_), .S(n102), .Z(n23) );
  mx02d0 U26 ( .I0(PushDataIn[3]), .I1(Stack_Mem_2__3_), .S(n102), .Z(n25) );
  mx02d0 U28 ( .I0(PushDataIn[0]), .I1(Stack_Mem_3__0_), .S(n101), .Z(n27) );
  mx02d0 U30 ( .I0(PushDataIn[1]), .I1(Stack_Mem_3__1_), .S(n101), .Z(n29) );
  mx02d0 U32 ( .I0(PushDataIn[2]), .I1(Stack_Mem_3__2_), .S(n101), .Z(n31) );
  mx02d0 U34 ( .I0(PushDataIn[3]), .I1(Stack_Mem_3__3_), .S(n101), .Z(n33) );
  mx02d0 U36 ( .I0(PushDataIn[0]), .I1(Stack_Mem_4__0_), .S(n100), .Z(n35) );
  mx02d0 U38 ( .I0(PushDataIn[1]), .I1(Stack_Mem_4__1_), .S(n100), .Z(n37) );
  mx02d0 U40 ( .I0(PushDataIn[2]), .I1(Stack_Mem_4__2_), .S(n100), .Z(n39) );
  mx02d0 U42 ( .I0(PushDataIn[3]), .I1(Stack_Mem_4__3_), .S(n100), .Z(n41) );
  mx02d0 U44 ( .I0(PushDataIn[0]), .I1(Stack_Mem_5__0_), .S(n99), .Z(n43) );
  mx02d0 U46 ( .I0(PushDataIn[1]), .I1(Stack_Mem_5__1_), .S(n99), .Z(n45) );
  mx02d0 U48 ( .I0(PushDataIn[2]), .I1(Stack_Mem_5__2_), .S(n99), .Z(n70) );
  mx02d0 U50 ( .I0(PushDataIn[3]), .I1(Stack_Mem_5__3_), .S(n99), .Z(n72) );
  mx02d0 U52 ( .I0(PushDataIn[0]), .I1(Stack_Mem_6__0_), .S(n98), .Z(n74) );
  mx02d0 U54 ( .I0(PushDataIn[1]), .I1(Stack_Mem_6__1_), .S(n98), .Z(n76) );
  mx02d0 U56 ( .I0(PushDataIn[2]), .I1(Stack_Mem_6__2_), .S(n98), .Z(n78) );
  mx02d0 U58 ( .I0(PushDataIn[3]), .I1(Stack_Mem_6__3_), .S(n98), .Z(n80) );
  mx02d0 U60 ( .I0(PushDataIn[0]), .I1(Stack_Mem_7__0_), .S(n97), .Z(n82) );
  mx02d0 U62 ( .I0(PushDataIn[1]), .I1(Stack_Mem_7__1_), .S(n97), .Z(n84) );
  mx02d0 U64 ( .I0(PushDataIn[2]), .I1(Stack_Mem_7__2_), .S(n97), .Z(n86) );
  mx02d0 U66 ( .I0(PushDataIn[3]), .I1(Stack_Mem_7__3_), .S(n97), .Z(n88) );
  mx02d0 U87 ( .I0(N71), .I1(PopDataOut[0]), .S(n136), .Z(n90) );
  mx02d0 U89 ( .I0(N70), .I1(PopDataOut[1]), .S(n136), .Z(n92) );
  mx02d0 U91 ( .I0(N69), .I1(PopDataOut[2]), .S(n136), .Z(n94) );
  mx02d0 U93 ( .I0(N68), .I1(PopDataOut[3]), .S(n136), .Z(n96) );
  inv0d1 U94 ( .I(n105), .ZN(n107) );
  inv0d1 U95 ( .I(n106), .ZN(n105) );
  inv0d1 U96 ( .I(TOS[2]), .ZN(n106) );
  inv0d1 U97 ( .I(n109), .ZN(n108) );
  inv0d1 U98 ( .I(n118), .ZN(n114) );
  inv0d1 U99 ( .I(n115), .ZN(n117) );
  inv0d1 U100 ( .I(TOS[1]), .ZN(n109) );
  inv0d1 U101 ( .I(n111), .ZN(n110) );
  inv0d1 U102 ( .I(n116), .ZN(n119) );
  nd04d0 U103 ( .A1(PushEnbl), .A2(n105), .A3(n108), .A4(n110), .ZN(n97) );
  nd04d0 U104 ( .A1(PushEnbl), .A2(n108), .A3(n110), .A4(n107), .ZN(n98) );
  nd04d0 U105 ( .A1(PushEnbl), .A2(n105), .A3(n110), .A4(n109), .ZN(n99) );
  nd04d0 U106 ( .A1(PushEnbl), .A2(n110), .A3(n109), .A4(n107), .ZN(n100) );
  nd04d0 U107 ( .A1(PushEnbl), .A2(n105), .A3(n108), .A4(n111), .ZN(n101) );
  nd04d0 U108 ( .A1(PushEnbl), .A2(n108), .A3(n111), .A4(n107), .ZN(n102) );
  nd04d0 U109 ( .A1(PushEnbl), .A2(n105), .A3(n111), .A4(n109), .ZN(n103) );
  nd04d0 U110 ( .A1(PushEnbl), .A2(n111), .A3(n109), .A4(n107), .ZN(n104) );
  inv0d1 U111 ( .I(TOS[0]), .ZN(n111) );
  inv0d1 U112 ( .I(PopEnbl), .ZN(n136) );
  nd02d1 U113 ( .A1(n135), .A2(n134), .ZN(N71) );
  nd02d1 U114 ( .A1(n125), .A2(n124), .ZN(N70) );
  nd02d1 U115 ( .A1(n123), .A2(n122), .ZN(N69) );
  nd02d1 U116 ( .A1(n121), .A2(n120), .ZN(N68) );
  inv0d1 U117 ( .I(Stack_Full), .ZN(n113) );
  xr02d1 U118 ( .A1(n108), .A2(n107), .Z(N10) );
  nr02d0 U119 ( .A1(n105), .A2(n108), .ZN(n112) );
  xr02d1 U120 ( .A1(n110), .A2(n112), .Z(N11) );
endmodule


module STACK_MEM_0 ( clk, PushEnbl, PopEnbl, Stack_Full, TOS, PushDataIn, 
        PopDataOut );
  input [0:2] TOS;
  input [3:0] PushDataIn;
  output [3:0] PopDataOut;
  input clk, PushEnbl, PopEnbl, Stack_Full;
  wire   N10, N11, N68, N69, N70, N71, n5, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n2, n4, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25, n27,
         n29, n31, n33, n35, n37, n39, n41, n43, n45, n70, n72, n74, n76, n78,
         n80, n82, n84, n86, n88, n90, n92, n94, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112;
  wire   [31:0] Stack_Mem;

  aoi2222d1 U67 ( .A1(Stack_Mem[0]), .A2(n49), .B1(Stack_Mem[4]), .B2(n50), 
        .C1(Stack_Mem[8]), .C2(n51), .D1(Stack_Mem[12]), .D2(n52), .ZN(n48) );
  aoi2222d1 U68 ( .A1(Stack_Mem[16]), .A2(n53), .B1(Stack_Mem[20]), .B2(n54), 
        .C1(Stack_Mem[24]), .C2(n55), .D1(Stack_Mem[28]), .D2(n56), .ZN(n47)
         );
  aoi2222d1 U69 ( .A1(Stack_Mem[1]), .A2(n49), .B1(Stack_Mem[5]), .B2(n50), 
        .C1(Stack_Mem[9]), .C2(n51), .D1(Stack_Mem[13]), .D2(n52), .ZN(n58) );
  aoi2222d1 U70 ( .A1(Stack_Mem[17]), .A2(n53), .B1(Stack_Mem[21]), .B2(n54), 
        .C1(Stack_Mem[25]), .C2(n55), .D1(Stack_Mem[29]), .D2(n56), .ZN(n57)
         );
  aoi2222d1 U71 ( .A1(Stack_Mem[2]), .A2(n49), .B1(Stack_Mem[6]), .B2(n50), 
        .C1(Stack_Mem[10]), .C2(n51), .D1(Stack_Mem[14]), .D2(n52), .ZN(n60)
         );
  aoi2222d1 U72 ( .A1(Stack_Mem[18]), .A2(n53), .B1(Stack_Mem[22]), .B2(n54), 
        .C1(Stack_Mem[26]), .C2(n55), .D1(Stack_Mem[30]), .D2(n56), .ZN(n59)
         );
  aoi2222d1 U73 ( .A1(Stack_Mem[3]), .A2(n49), .B1(Stack_Mem[7]), .B2(n50), 
        .C1(Stack_Mem[11]), .C2(n51), .D1(Stack_Mem[15]), .D2(n52), .ZN(n62)
         );
  nr03d0 U74 ( .A1(n63), .A2(n64), .A3(n65), .ZN(n52) );
  nr03d0 U75 ( .A1(n66), .A2(n64), .A3(n65), .ZN(n51) );
  nr03d0 U76 ( .A1(n67), .A2(n64), .A3(n63), .ZN(n50) );
  nr03d0 U77 ( .A1(n67), .A2(n64), .A3(n66), .ZN(n49) );
  aoi2222d1 U78 ( .A1(Stack_Mem[19]), .A2(n53), .B1(Stack_Mem[23]), .B2(n54), 
        .C1(Stack_Mem[27]), .C2(n55), .D1(Stack_Mem[31]), .D2(n56), .ZN(n61)
         );
  nr03d0 U79 ( .A1(n65), .A2(n63), .A3(n68), .ZN(n56) );
  nr03d0 U80 ( .A1(n65), .A2(n66), .A3(n68), .ZN(n55) );
  nr03d0 U81 ( .A1(n63), .A2(n67), .A3(n68), .ZN(n54) );
  nr03d0 U82 ( .A1(n66), .A2(n67), .A3(n68), .ZN(n53) );
  aoim22d1 U83 ( .A1(N11), .A2(n69), .B1(n111), .B2(n69), .Z(n64) );
  aoim22d1 U84 ( .A1(N10), .A2(n69), .B1(n109), .B2(n69), .Z(n67) );
  aoim22d1 U85 ( .A1(n107), .A2(n69), .B1(n107), .B2(n69), .Z(n66) );
  sdnrq1 PopDataOut_reg_3_ ( .D(n96), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[3]) );
  sdnrq1 PopDataOut_reg_2_ ( .D(n94), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[2]) );
  sdnrq1 PopDataOut_reg_1_ ( .D(n92), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[1]) );
  sdnrq1 PopDataOut_reg_0_ ( .D(n90), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        PopDataOut[0]) );
  sdnrq1 Stack_Mem_reg_7__3_ ( .D(n88), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[3]) );
  sdnrq1 Stack_Mem_reg_7__2_ ( .D(n86), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[2]) );
  sdnrq1 Stack_Mem_reg_7__1_ ( .D(n84), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[1]) );
  sdnrq1 Stack_Mem_reg_7__0_ ( .D(n82), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[0]) );
  sdnrq1 Stack_Mem_reg_6__3_ ( .D(n80), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[7]) );
  sdnrq1 Stack_Mem_reg_6__2_ ( .D(n78), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[6]) );
  sdnrq1 Stack_Mem_reg_6__1_ ( .D(n76), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[5]) );
  sdnrq1 Stack_Mem_reg_6__0_ ( .D(n74), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[4]) );
  sdnrq1 Stack_Mem_reg_5__3_ ( .D(n72), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[11]) );
  sdnrq1 Stack_Mem_reg_5__2_ ( .D(n70), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[10]) );
  sdnrq1 Stack_Mem_reg_5__1_ ( .D(n45), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[9]) );
  sdnrq1 Stack_Mem_reg_5__0_ ( .D(n43), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[8]) );
  sdnrq1 Stack_Mem_reg_4__3_ ( .D(n41), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[15]) );
  sdnrq1 Stack_Mem_reg_4__2_ ( .D(n39), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[14]) );
  sdnrq1 Stack_Mem_reg_4__1_ ( .D(n37), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[13]) );
  sdnrq1 Stack_Mem_reg_4__0_ ( .D(n35), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[12]) );
  sdnrq1 Stack_Mem_reg_3__3_ ( .D(n33), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[19]) );
  sdnrq1 Stack_Mem_reg_3__2_ ( .D(n31), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[18]) );
  sdnrq1 Stack_Mem_reg_3__1_ ( .D(n29), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[17]) );
  sdnrq1 Stack_Mem_reg_3__0_ ( .D(n27), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[16]) );
  sdnrq1 Stack_Mem_reg_2__3_ ( .D(n25), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[23]) );
  sdnrq1 Stack_Mem_reg_2__2_ ( .D(n23), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[22]) );
  sdnrq1 Stack_Mem_reg_2__1_ ( .D(n21), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[21]) );
  sdnrq1 Stack_Mem_reg_2__0_ ( .D(n19), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[20]) );
  sdnrq1 Stack_Mem_reg_1__3_ ( .D(n17), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[27]) );
  sdnrq1 Stack_Mem_reg_1__2_ ( .D(n15), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[26]) );
  sdnrq1 Stack_Mem_reg_1__1_ ( .D(n13), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[25]) );
  sdnrq1 Stack_Mem_reg_1__0_ ( .D(n11), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[24]) );
  sdnrq1 Stack_Mem_reg_0__3_ ( .D(n9), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[31]) );
  sdnrq1 Stack_Mem_reg_0__2_ ( .D(n7), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[30]) );
  sdnrq1 Stack_Mem_reg_0__1_ ( .D(n4), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[29]) );
  sdnrq1 Stack_Mem_reg_0__0_ ( .D(n2), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Stack_Mem[28]) );
  mx02d0 U4 ( .I0(PushDataIn[0]), .I1(Stack_Mem[28]), .S(n104), .Z(n2) );
  mx02d0 U6 ( .I0(PushDataIn[1]), .I1(Stack_Mem[29]), .S(n104), .Z(n4) );
  mx02d0 U8 ( .I0(PushDataIn[2]), .I1(Stack_Mem[30]), .S(n104), .Z(n7) );
  mx02d0 U10 ( .I0(PushDataIn[3]), .I1(Stack_Mem[31]), .S(n104), .Z(n9) );
  mx02d0 U12 ( .I0(PushDataIn[0]), .I1(Stack_Mem[24]), .S(n103), .Z(n11) );
  mx02d0 U14 ( .I0(PushDataIn[1]), .I1(Stack_Mem[25]), .S(n103), .Z(n13) );
  mx02d0 U16 ( .I0(PushDataIn[2]), .I1(Stack_Mem[26]), .S(n103), .Z(n15) );
  mx02d0 U18 ( .I0(PushDataIn[3]), .I1(Stack_Mem[27]), .S(n103), .Z(n17) );
  mx02d0 U20 ( .I0(PushDataIn[0]), .I1(Stack_Mem[20]), .S(n102), .Z(n19) );
  mx02d0 U22 ( .I0(PushDataIn[1]), .I1(Stack_Mem[21]), .S(n102), .Z(n21) );
  mx02d0 U24 ( .I0(PushDataIn[2]), .I1(Stack_Mem[22]), .S(n102), .Z(n23) );
  mx02d0 U26 ( .I0(PushDataIn[3]), .I1(Stack_Mem[23]), .S(n102), .Z(n25) );
  mx02d0 U28 ( .I0(PushDataIn[0]), .I1(Stack_Mem[16]), .S(n101), .Z(n27) );
  mx02d0 U30 ( .I0(PushDataIn[1]), .I1(Stack_Mem[17]), .S(n101), .Z(n29) );
  mx02d0 U32 ( .I0(PushDataIn[2]), .I1(Stack_Mem[18]), .S(n101), .Z(n31) );
  mx02d0 U34 ( .I0(PushDataIn[3]), .I1(Stack_Mem[19]), .S(n101), .Z(n33) );
  mx02d0 U36 ( .I0(PushDataIn[0]), .I1(Stack_Mem[12]), .S(n100), .Z(n35) );
  mx02d0 U38 ( .I0(PushDataIn[1]), .I1(Stack_Mem[13]), .S(n100), .Z(n37) );
  mx02d0 U40 ( .I0(PushDataIn[2]), .I1(Stack_Mem[14]), .S(n100), .Z(n39) );
  mx02d0 U42 ( .I0(PushDataIn[3]), .I1(Stack_Mem[15]), .S(n100), .Z(n41) );
  mx02d0 U44 ( .I0(PushDataIn[0]), .I1(Stack_Mem[8]), .S(n99), .Z(n43) );
  mx02d0 U46 ( .I0(PushDataIn[1]), .I1(Stack_Mem[9]), .S(n99), .Z(n45) );
  mx02d0 U48 ( .I0(PushDataIn[2]), .I1(Stack_Mem[10]), .S(n99), .Z(n70) );
  mx02d0 U50 ( .I0(PushDataIn[3]), .I1(Stack_Mem[11]), .S(n99), .Z(n72) );
  mx02d0 U52 ( .I0(PushDataIn[0]), .I1(Stack_Mem[4]), .S(n98), .Z(n74) );
  mx02d0 U54 ( .I0(PushDataIn[1]), .I1(Stack_Mem[5]), .S(n98), .Z(n76) );
  mx02d0 U56 ( .I0(PushDataIn[2]), .I1(Stack_Mem[6]), .S(n98), .Z(n78) );
  mx02d0 U58 ( .I0(PushDataIn[3]), .I1(Stack_Mem[7]), .S(n98), .Z(n80) );
  mx02d0 U60 ( .I0(PushDataIn[0]), .I1(Stack_Mem[0]), .S(n97), .Z(n82) );
  mx02d0 U62 ( .I0(PushDataIn[1]), .I1(Stack_Mem[1]), .S(n97), .Z(n84) );
  mx02d0 U64 ( .I0(PushDataIn[2]), .I1(Stack_Mem[2]), .S(n97), .Z(n86) );
  mx02d0 U66 ( .I0(PushDataIn[3]), .I1(Stack_Mem[3]), .S(n97), .Z(n88) );
  mx02d0 U87 ( .I0(N71), .I1(PopDataOut[0]), .S(n5), .Z(n90) );
  mx02d0 U89 ( .I0(N70), .I1(PopDataOut[1]), .S(n5), .Z(n92) );
  mx02d0 U91 ( .I0(N69), .I1(PopDataOut[2]), .S(n5), .Z(n94) );
  mx02d0 U93 ( .I0(N68), .I1(PopDataOut[3]), .S(n5), .Z(n96) );
  inv0d1 U94 ( .I(n105), .ZN(n107) );
  inv0d1 U95 ( .I(n106), .ZN(n105) );
  inv0d1 U96 ( .I(TOS[2]), .ZN(n106) );
  inv0d1 U97 ( .I(n109), .ZN(n108) );
  inv0d1 U98 ( .I(n64), .ZN(n68) );
  inv0d1 U99 ( .I(n67), .ZN(n65) );
  inv0d1 U100 ( .I(TOS[1]), .ZN(n109) );
  inv0d1 U101 ( .I(n111), .ZN(n110) );
  inv0d1 U102 ( .I(n66), .ZN(n63) );
  nd04d0 U103 ( .A1(PushEnbl), .A2(n105), .A3(n108), .A4(n110), .ZN(n97) );
  nd04d0 U104 ( .A1(PushEnbl), .A2(n108), .A3(n110), .A4(n107), .ZN(n98) );
  nd04d0 U105 ( .A1(PushEnbl), .A2(n105), .A3(n110), .A4(n109), .ZN(n99) );
  nd04d0 U106 ( .A1(PushEnbl), .A2(n110), .A3(n109), .A4(n107), .ZN(n100) );
  nd04d0 U107 ( .A1(PushEnbl), .A2(n105), .A3(n108), .A4(n111), .ZN(n101) );
  nd04d0 U108 ( .A1(PushEnbl), .A2(n108), .A3(n111), .A4(n107), .ZN(n102) );
  nd04d0 U109 ( .A1(PushEnbl), .A2(n105), .A3(n111), .A4(n109), .ZN(n103) );
  nd04d0 U110 ( .A1(PushEnbl), .A2(n111), .A3(n109), .A4(n107), .ZN(n104) );
  inv0d1 U111 ( .I(TOS[0]), .ZN(n111) );
  inv0d1 U112 ( .I(PopEnbl), .ZN(n5) );
  nd02d1 U113 ( .A1(n47), .A2(n48), .ZN(N71) );
  nd02d1 U114 ( .A1(n57), .A2(n58), .ZN(N70) );
  nd02d1 U115 ( .A1(n59), .A2(n60), .ZN(N69) );
  nd02d1 U116 ( .A1(n61), .A2(n62), .ZN(N68) );
  inv0d1 U117 ( .I(Stack_Full), .ZN(n69) );
  xr02d1 U118 ( .A1(n108), .A2(n107), .Z(N10) );
  nr02d0 U119 ( .A1(n105), .A2(n108), .ZN(n112) );
  xr02d1 U120 ( .A1(n110), .A2(n112), .Z(N11) );
endmodule


module STACK_FSM ( reset_n, clk, PushEnbl, PopEnbl, TOS, STACK_FULL );
  output [0:2] TOS;
  input reset_n, clk, PushEnbl, PopEnbl;
  output STACK_FULL;
  wire   n39, n40, N28, N29, N43, N44, N69, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n33,
         n34, n35, n36, n8, n10, n20, n28, n37, n38;
  wire   [1:0] Next_Stack;
  wire   [0:2] Next_TOS;
  wire   [1:0] Crnt_Stack;

  an02d1 U12 ( .A1(n26), .A2(n20), .Z(n11) );
  aor211d1 U23 ( .C1(n8), .C2(n11), .A(n12), .B(n13), .Z(Next_TOS[2]) );
  aor31d1 U24 ( .B1(n14), .B2(n15), .B3(n20), .A(n16), .Z(n13) );
  nr02d0 U25 ( .A1(n17), .A2(n18), .ZN(n16) );
  aoim22d1 U26 ( .A1(n8), .A2(n19), .B1(PopEnbl), .B2(n8), .Z(n17) );
  aor221d1 U27 ( .B1(n21), .B2(n22), .C1(N28), .C2(n11), .A(n12), .Z(
        Next_TOS[1]) );
  aor22d1 U28 ( .A1(TOS[1]), .A2(n23), .B1(N43), .B2(n19), .Z(n22) );
  aor221d1 U29 ( .B1(n21), .B2(n24), .C1(N29), .C2(n11), .A(n12), .Z(
        Next_TOS[0]) );
  aor22d1 U30 ( .A1(Crnt_Stack[1]), .A2(n14), .B1(n11), .B2(n25), .Z(n12) );
  aor22d1 U31 ( .A1(TOS[0]), .A2(n23), .B1(N44), .B2(n19), .Z(n24) );
  nr02d0 U32 ( .A1(n23), .A2(n27), .ZN(n19) );
  nr02d0 U33 ( .A1(n15), .A2(n29), .ZN(n26) );
  aor211d1 U34 ( .C1(Crnt_Stack[1]), .C2(n23), .A(n30), .B(n31), .Z(
        Next_Stack[1]) );
  aor31d1 U35 ( .B1(n15), .B2(n32), .B3(PopEnbl), .A(n33), .Z(n31) );
  nr03d0 U36 ( .A1(n15), .A2(n34), .A3(n28), .ZN(n33) );
  aor211d1 U37 ( .C1(PopEnbl), .C2(n15), .A(n30), .B(n35), .Z(Next_Stack[0])
         );
  aon211d1 U38 ( .C1(Crnt_Stack[0]), .C2(n25), .B(n28), .A(n36), .ZN(n35) );
  aor211d1 U39 ( .C1(n27), .C2(PopEnbl), .A(n20), .B(n15), .Z(n36) );
  nr03d0 U40 ( .A1(TOS[0]), .A2(TOS[1]), .A3(n8), .ZN(n27) );
  aor21d1 U41 ( .B1(Crnt_Stack[1]), .B2(Crnt_Stack[0]), .A(n29), .Z(n30) );
  nr03d0 U42 ( .A1(n32), .A2(Crnt_Stack[0]), .A3(n34), .ZN(N69) );
  nd03d0 U43 ( .A1(TOS[1]), .A2(TOS[0]), .A3(TOS[2]), .ZN(n34) );
  sdcrq1 TOS_int_reg_1_ ( .D(Next_TOS[1]), .SD(TOS[1]), .SC(1'b0), .CP(clk), 
        .CDN(reset_n), .Q(n39) );
  sdcrq1 TOS_int_reg_0_ ( .D(Next_TOS[0]), .SD(TOS[0]), .SC(1'b0), .CP(clk), 
        .CDN(reset_n), .Q(TOS[0]) );
  sdcrq1 STACK_FULL_reg ( .D(N69), .SD(STACK_FULL), .SC(1'b0), .CP(clk), .CDN(
        reset_n), .Q(STACK_FULL) );
  sdcrq1 Crnt_Stack_reg_1_ ( .D(Next_Stack[1]), .SD(1'b0), .SC(1'b0), .CP(clk), 
        .CDN(reset_n), .Q(Crnt_Stack[1]) );
  sdcrq1 Crnt_Stack_reg_0_ ( .D(Next_Stack[0]), .SD(1'b0), .SC(1'b0), .CP(clk), 
        .CDN(reset_n), .Q(Crnt_Stack[0]) );
  sdcrq1 TOS_int_reg_2_ ( .D(Next_TOS[2]), .SD(1'b0), .SC(1'b0), .CP(clk), 
        .CDN(reset_n), .Q(n40) );
  inv0d1 U9 ( .I(n18), .ZN(n21) );
  nd02d1 U10 ( .A1(n26), .A2(n28), .ZN(n18) );
  inv0d1 U11 ( .I(n14), .ZN(n29) );
  inv0d1 U13 ( .I(n28), .ZN(n20) );
  nd02d1 U14 ( .A1(n20), .A2(PopEnbl), .ZN(n14) );
  inv0d1 U15 ( .I(PushEnbl), .ZN(n28) );
  inv0d1 U16 ( .I(n8), .ZN(TOS[2]) );
  inv0d1 U17 ( .I(PopEnbl), .ZN(n23) );
  inv0d1 U18 ( .I(n34), .ZN(n25) );
  inv0d1 U19 ( .I(Crnt_Stack[0]), .ZN(n15) );
  inv0d1 U20 ( .I(Crnt_Stack[1]), .ZN(n32) );
  inv0d1 U21 ( .I(n40), .ZN(n8) );
  inv0d1 U22 ( .I(n10), .ZN(TOS[1]) );
  inv0d1 U44 ( .I(n39), .ZN(n10) );
  an02d1 U45 ( .A1(TOS[2]), .A2(TOS[1]), .Z(n37) );
  xn02d1 U46 ( .A1(TOS[1]), .A2(n8), .ZN(N28) );
  xr02d1 U47 ( .A1(TOS[0]), .A2(n37), .Z(N29) );
  xr02d1 U48 ( .A1(TOS[1]), .A2(n8), .Z(N43) );
  nr02d0 U49 ( .A1(TOS[2]), .A2(TOS[1]), .ZN(n38) );
  xr02d1 U50 ( .A1(TOS[0]), .A2(n38), .Z(N44) );
endmodule


module PRGRM_CNT ( reset_n, clk, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr, 
        Imm_Addr, Return_Addr, PC );
  input [7:0] Imm_Addr;
  input [7:0] Return_Addr;
  output [7:0] PC;
  input reset_n, clk, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N32, N34, N36, N38, N40, N42, N44,
         N46, n11, n12, n2, n4, n6, n8, n10, n14, n16, n18, n19, n20;

  aor222d1 U13 ( .A1(Return_Addr[7]), .A2(n11), .B1(Imm_Addr[7]), .B2(n12), 
        .C1(N13), .C2(n20), .Z(N46) );
  aor222d1 U14 ( .A1(Return_Addr[6]), .A2(n11), .B1(Imm_Addr[6]), .B2(n12), 
        .C1(N12), .C2(n20), .Z(N44) );
  aor222d1 U15 ( .A1(Return_Addr[5]), .A2(n11), .B1(Imm_Addr[5]), .B2(n12), 
        .C1(N11), .C2(n20), .Z(N42) );
  aor222d1 U16 ( .A1(Return_Addr[4]), .A2(n11), .B1(Imm_Addr[4]), .B2(n12), 
        .C1(N10), .C2(n20), .Z(N40) );
  aor222d1 U17 ( .A1(Return_Addr[3]), .A2(n11), .B1(Imm_Addr[3]), .B2(n12), 
        .C1(N9), .C2(n20), .Z(N38) );
  aor222d1 U18 ( .A1(Return_Addr[2]), .A2(n11), .B1(Imm_Addr[2]), .B2(n12), 
        .C1(N8), .C2(n20), .Z(N36) );
  aor222d1 U19 ( .A1(Return_Addr[1]), .A2(n11), .B1(Imm_Addr[1]), .B2(n12), 
        .C1(N7), .C2(n20), .Z(N34) );
  aor222d1 U20 ( .A1(Return_Addr[0]), .A2(n11), .B1(Imm_Addr[0]), .B2(n12), 
        .C1(N6), .C2(n20), .Z(N32) );
  nr02d0 U21 ( .A1(n20), .A2(Ld_Rtn_Addr), .ZN(n12) );
  an12d1 U22 ( .A2(Ld_Rtn_Addr), .A1(n20), .Z(n11) );
  PRGRM_CNT_DW01_inc_0 add_37 ( .A(PC), .SUM({N13, N12, N11, N10, N9, N8, N7, 
        N6}) );
  sdcrq1 PCint_reg_7_ ( .D(n18), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[7]) );
  sdcrq1 PCint_reg_6_ ( .D(n16), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[6]) );
  sdcrq1 PCint_reg_5_ ( .D(n14), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[5]) );
  sdcrq1 PCint_reg_4_ ( .D(n10), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[4]) );
  sdcrq1 PCint_reg_3_ ( .D(n8), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[3]) );
  sdcrq1 PCint_reg_2_ ( .D(n6), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[2]) );
  sdcrq1 PCint_reg_1_ ( .D(n4), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[1]) );
  sdcrq1 PCint_reg_0_ ( .D(n2), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PC[0]) );
  mx02d0 U4 ( .I0(N32), .I1(PC[0]), .S(n19), .Z(n2) );
  mx02d0 U6 ( .I0(N34), .I1(PC[1]), .S(n19), .Z(n4) );
  mx02d0 U8 ( .I0(N36), .I1(PC[2]), .S(n19), .Z(n6) );
  mx02d0 U10 ( .I0(N38), .I1(PC[3]), .S(n19), .Z(n8) );
  mx02d0 U12 ( .I0(N40), .I1(PC[4]), .S(n19), .Z(n10) );
  mx02d0 U24 ( .I0(N42), .I1(PC[5]), .S(n19), .Z(n14) );
  mx02d0 U26 ( .I0(N44), .I1(PC[6]), .S(n19), .Z(n16) );
  mx02d0 U28 ( .I0(N46), .I1(PC[7]), .S(n19), .Z(n18) );
  bufbd1 U29 ( .I(Incrmnt_PC), .Z(n20) );
  nr03d0 U30 ( .A1(Ld_Rtn_Addr), .A2(Ld_Brnch_Addr), .A3(n20), .ZN(n19) );
endmodule


module PRGRM_DECODE ( Zro_Flag, Carry_Flag, Neg_Flag, CurrentState, 
        Crnt_Instrn, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr );
  input [2:0] CurrentState;
  input [31:0] Crnt_Instrn;
  input Zro_Flag, Carry_Flag, Neg_Flag;
  output Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27;

  an04d1 U3 ( .A1(Crnt_Instrn[18]), .A2(Crnt_Instrn[19]), .A3(Crnt_Instrn[20]), 
        .A4(Crnt_Instrn[21]), .Z(n15) );
  an03d1 U5 ( .A1(n20), .A2(n21), .A3(n25), .Z(n19) );
  an03d1 U7 ( .A1(Crnt_Instrn[17]), .A2(n20), .A3(n25), .Z(n17) );
  an03d1 U10 ( .A1(Crnt_Instrn[16]), .A2(n21), .A3(n25), .Z(n18) );
  or03d1 U11 ( .A1(Crnt_Instrn[21]), .A2(Crnt_Instrn[23]), .A3(Crnt_Instrn[22]), .Z(n26) );
  an02d1 U13 ( .A1(Crnt_Instrn[27]), .A2(n12), .Z(Ld_Rtn_Addr) );
  nr03d0 U15 ( .A1(n8), .A2(Ld_Rtn_Addr), .A3(Ld_Brnch_Addr), .ZN(Incrmnt_PC)
         );
  nr03d0 U16 ( .A1(n9), .A2(n10), .A3(n11), .ZN(Ld_Brnch_Addr) );
  nr02d0 U17 ( .A1(Crnt_Instrn[28]), .A2(Crnt_Instrn[29]), .ZN(n10) );
  aoim22d1 U18 ( .A1(Crnt_Instrn[25]), .A2(n13), .B1(Crnt_Instrn[25]), .B2(n14), .Z(n9) );
  aoi2222d1 U19 ( .A1(n15), .A2(n16), .B1(Carry_Flag), .B2(n17), .C1(Zro_Flag), 
        .C2(n18), .D1(Neg_Flag), .D2(n19), .ZN(n14) );
  nr04d0 U20 ( .A1(Crnt_Instrn[23]), .A2(Crnt_Instrn[22]), .A3(n20), .A4(n21), 
        .ZN(n16) );
  aor222d1 U21 ( .A1(n18), .A2(n22), .B1(n17), .B2(n23), .C1(n19), .C2(n24), 
        .Z(n13) );
  nr04d0 U22 ( .A1(Crnt_Instrn[19]), .A2(Crnt_Instrn[20]), .A3(Crnt_Instrn[18]), .A4(n26), .ZN(n25) );
  nr03d0 U23 ( .A1(Crnt_Instrn[31]), .A2(Crnt_Instrn[30]), .A3(n8), .ZN(n12)
         );
  nr02d0 U24 ( .A1(CurrentState[1]), .A2(CurrentState[0]), .ZN(n27) );
  inv0d1 U2 ( .I(Carry_Flag), .ZN(n23) );
  inv0d1 U4 ( .I(Zro_Flag), .ZN(n22) );
  inv0d1 U6 ( .I(Neg_Flag), .ZN(n24) );
  inv0d1 U8 ( .I(n12), .ZN(n11) );
  nd02d1 U9 ( .A1(n27), .A2(CurrentState[2]), .ZN(n8) );
  inv0d1 U12 ( .I(Crnt_Instrn[17]), .ZN(n21) );
  inv0d1 U14 ( .I(Crnt_Instrn[16]), .ZN(n20) );
endmodule


module PRGRM_FSM ( clk, reset_n, CurrentState );
  output [2:0] CurrentState;
  input clk, reset_n;
  wire   n4;
  wire   [2:0] Next_State;

  nr23d1 U6 ( .A1(CurrentState[1]), .A2(CurrentState[0]), .A3(CurrentState[2]), 
        .ZN(Next_State[2]) );
  nr02d0 U7 ( .A1(CurrentState[2]), .A2(n4), .ZN(Next_State[1]) );
  xn02d1 U8 ( .A1(CurrentState[0]), .A2(CurrentState[1]), .ZN(n4) );
  aoi21d1 U9 ( .B1(CurrentState[1]), .B2(CurrentState[2]), .A(CurrentState[0]), 
        .ZN(Next_State[0]) );
  sdcrq1 Current_State_reg_2_ ( .D(Next_State[2]), .SD(CurrentState[2]), .SC(
        1'b0), .CP(clk), .CDN(reset_n), .Q(CurrentState[2]) );
  sdcrq1 Current_State_reg_0_ ( .D(Next_State[0]), .SD(CurrentState[0]), .SC(
        1'b0), .CP(clk), .CDN(reset_n), .Q(CurrentState[0]) );
  sdcrq1 Current_State_reg_1_ ( .D(Next_State[1]), .SD(CurrentState[1]), .SC(
        1'b0), .CP(clk), .CDN(reset_n), .Q(CurrentState[1]) );
endmodule


module STACK_TOP ( reset_n, clk, PushEnbl, PopEnbl, PushDataIn, PopDataOut, 
        STACK_FULL );
  input [11:0] PushDataIn;
  output [11:0] PopDataOut;
  input reset_n, clk, PushEnbl, PopEnbl;
  output STACK_FULL;
  wire   n1, n2, n3, n4;
  wire   [0:2] TOS;

  STACK_FSM I_STACK_FSM ( .reset_n(reset_n), .clk(clk), .PushEnbl(n1), 
        .PopEnbl(PopEnbl), .TOS(TOS), .STACK_FULL(STACK_FULL) );
  STACK_MEM_0 I1_STACK_MEM ( .clk(clk), .PushEnbl(n1), .PopEnbl(PopEnbl), 
        .Stack_Full(STACK_FULL), .TOS({n3, n2, n4}), .PushDataIn(
        PushDataIn[3:0]), .PopDataOut(PopDataOut[3:0]) );
  STACK_MEM_2 I2_STACK_MEM ( .clk(clk), .PushEnbl(n1), .PopEnbl(PopEnbl), 
        .Stack_Full(STACK_FULL), .TOS({n3, n2, n4}), .PushDataIn(
        PushDataIn[7:4]), .PopDataOut(PopDataOut[7:4]) );
  STACK_MEM_1 I3_STACK_MEM ( .clk(clk), .PushEnbl(n1), .PopEnbl(PopEnbl), 
        .Stack_Full(STACK_FULL), .TOS({n3, n2, n4}), .PushDataIn(
        PushDataIn[11:8]), .PopDataOut(PopDataOut[11:8]) );
  bufbd1 U1 ( .I(PushEnbl), .Z(n1) );
  bufbd1 U2 ( .I(TOS[1]), .Z(n2) );
  bufbd1 U3 ( .I(TOS[0]), .Z(n3) );
  bufbd1 U4 ( .I(TOS[2]), .Z(n4) );
endmodule


module REG_FILE ( reset_n, clk, Addr_A, Addr_B, Addr_C, RegPort_C, Write_RegC, 
        RegPort_A, RegPort_B );
  input [6:0] Addr_A;
  input [6:0] Addr_B;
  input [6:0] Addr_C;
  input [15:0] RegPort_C;
  output [15:0] RegPort_A;
  output [15:0] RegPort_B;
  input reset_n, clk, Write_RegC;
  wire   we_n, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32;

  ram16x128 REG_FILE_A_RAM ( .A1(Addr_C), .A2(Addr_A), .I1(RegPort_C), .O1({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}), .I2({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .O2(
        RegPort_A), .CE1(clk), .CE2(clk), .OEB1(1'b1), .OEB2(1'b0), .CSB1(1'b0), .CSB2(1'b0), .WEB1(we_n), .WEB2(1'b1) );
  ram16x128 REG_FILE_B_RAM ( .A1(Addr_C), .A2(Addr_B), .I1(RegPort_C), .O1({
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}), .I2({1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1}), .O2(RegPort_B), .CE1(clk), .CE2(clk), .OEB1(1'b1), 
        .OEB2(1'b0), .CSB1(1'b0), .CSB2(1'b0), .WEB1(we_n), .WEB2(1'b1) );
  inv0d1 U3 ( .I(Write_RegC), .ZN(we_n) );
endmodule


module PRGRM_CNT_TOP ( clk, reset_n, Crnt_Instrn, Zro_Flag, Carry_Flag, 
        Neg_Flag, Return_Addr, Current_State, PC );
  input [31:0] Crnt_Instrn;
  input [7:0] Return_Addr;
  output [2:0] Current_State;
  output [7:0] PC;
  input clk, reset_n, Zro_Flag, Carry_Flag, Neg_Flag;
  wire   Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;

  PRGRM_FSM I_PRGRM_FSM ( .clk(clk), .reset_n(reset_n), .CurrentState(
        Current_State) );
  PRGRM_DECODE I_PRGRM_DECODE ( .Zro_Flag(Zro_Flag), .Carry_Flag(Carry_Flag), 
        .Neg_Flag(Neg_Flag), .CurrentState(Current_State), .Crnt_Instrn(
        Crnt_Instrn), .Incrmnt_PC(Incrmnt_PC), .Ld_Brnch_Addr(Ld_Brnch_Addr), 
        .Ld_Rtn_Addr(Ld_Rtn_Addr) );
  PRGRM_CNT I_PRGRM_CNT ( .reset_n(reset_n), .clk(clk), .Incrmnt_PC(Incrmnt_PC), .Ld_Brnch_Addr(Ld_Brnch_Addr), .Ld_Rtn_Addr(Ld_Rtn_Addr), .Imm_Addr(
        Crnt_Instrn[7:0]), .Return_Addr(Return_Addr), .PC(PC) );
endmodule


module INSTRN_LAT ( clk, Instrn, Latch_Instr, Crnt_Instrn_1, Crnt_Instrn_2 );
  input [31:0] Instrn;
  output [31:0] Crnt_Instrn_1;
  output [31:0] Crnt_Instrn_2;
  input clk, Latch_Instr;
  wire   n64, n2, n4, n6, n8, n10, n12, n14, n16, n18, n20, n22, n24, n26, n28,
         n30, n32, n34, n36, n38, n40, n42, n44, n46, n48, n50, n52, n54, n56,
         n58, n60, n62, n65, n67, n69, n71, n73, n75, n77, n79, n81, n83, n85,
         n87, n89, n91, n93, n95, n97, n99, n101, n103, n105, n107, n109, n111,
         n113, n115, n117, n119, n121, n123, n125, n127, n129, n130, n131,
         n132, n133, n134, n135;

  sdnrq1 Crnt_Instrn_2_reg_31_ ( .D(n129), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[31]) );
  sdnrq1 Crnt_Instrn_2_reg_30_ ( .D(n127), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[30]) );
  sdnrq1 Crnt_Instrn_2_reg_29_ ( .D(n125), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[29]) );
  sdnrq1 Crnt_Instrn_2_reg_28_ ( .D(n123), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[28]) );
  sdnrq1 Crnt_Instrn_2_reg_27_ ( .D(n121), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[27]) );
  sdnrq1 Crnt_Instrn_2_reg_26_ ( .D(n119), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[26]) );
  sdnrq1 Crnt_Instrn_2_reg_25_ ( .D(n117), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[25]) );
  sdnrq1 Crnt_Instrn_2_reg_24_ ( .D(n115), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[24]) );
  sdnrq1 Crnt_Instrn_2_reg_23_ ( .D(n113), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[23]) );
  sdnrq1 Crnt_Instrn_2_reg_22_ ( .D(n111), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[22]) );
  sdnrq1 Crnt_Instrn_2_reg_21_ ( .D(n109), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[21]) );
  sdnrq1 Crnt_Instrn_2_reg_20_ ( .D(n107), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[20]) );
  sdnrq1 Crnt_Instrn_2_reg_19_ ( .D(n105), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[19]) );
  sdnrq1 Crnt_Instrn_2_reg_18_ ( .D(n103), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[18]) );
  sdnrq1 Crnt_Instrn_2_reg_17_ ( .D(n101), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[17]) );
  sdnrq1 Crnt_Instrn_2_reg_16_ ( .D(n99), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[16]) );
  sdnrq1 Crnt_Instrn_2_reg_15_ ( .D(n97), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[15]) );
  sdnrq1 Crnt_Instrn_2_reg_14_ ( .D(n95), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[14]) );
  sdnrq1 Crnt_Instrn_2_reg_13_ ( .D(n93), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[13]) );
  sdnrq1 Crnt_Instrn_2_reg_12_ ( .D(n91), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[12]) );
  sdnrq1 Crnt_Instrn_2_reg_11_ ( .D(n89), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[11]) );
  sdnrq1 Crnt_Instrn_2_reg_10_ ( .D(n87), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[10]) );
  sdnrq1 Crnt_Instrn_2_reg_9_ ( .D(n85), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[9]) );
  sdnrq1 Crnt_Instrn_2_reg_8_ ( .D(n83), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[8]) );
  sdnrq1 Crnt_Instrn_2_reg_7_ ( .D(n81), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[7]) );
  sdnrq1 Crnt_Instrn_2_reg_6_ ( .D(n79), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[6]) );
  sdnrq1 Crnt_Instrn_2_reg_5_ ( .D(n77), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[5]) );
  sdnrq1 Crnt_Instrn_2_reg_4_ ( .D(n75), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[4]) );
  sdnrq1 Crnt_Instrn_2_reg_3_ ( .D(n73), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[3]) );
  sdnrq1 Crnt_Instrn_2_reg_2_ ( .D(n71), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[2]) );
  sdnrq1 Crnt_Instrn_2_reg_1_ ( .D(n69), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[1]) );
  sdnrq1 Crnt_Instrn_2_reg_0_ ( .D(n67), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_2[0]) );
  sdnrq1 Crnt_Instrn_1_reg_31_ ( .D(n65), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[31]) );
  sdnrq1 Crnt_Instrn_1_reg_30_ ( .D(n62), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[30]) );
  sdnrq1 Crnt_Instrn_1_reg_29_ ( .D(n60), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[29]) );
  sdnrq1 Crnt_Instrn_1_reg_28_ ( .D(n58), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[28]) );
  sdnrq1 Crnt_Instrn_1_reg_27_ ( .D(n56), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[27]) );
  sdnrq1 Crnt_Instrn_1_reg_26_ ( .D(n54), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[26]) );
  sdnrq1 Crnt_Instrn_1_reg_25_ ( .D(n52), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[25]) );
  sdnrq1 Crnt_Instrn_1_reg_24_ ( .D(n50), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[24]) );
  sdnrq1 Crnt_Instrn_1_reg_23_ ( .D(n48), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[23]) );
  sdnrq1 Crnt_Instrn_1_reg_22_ ( .D(n46), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[22]) );
  sdnrq1 Crnt_Instrn_1_reg_21_ ( .D(n44), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[21]) );
  sdnrq1 Crnt_Instrn_1_reg_20_ ( .D(n42), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[20]) );
  sdnrq1 Crnt_Instrn_1_reg_19_ ( .D(n40), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[19]) );
  sdnrq1 Crnt_Instrn_1_reg_18_ ( .D(n38), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[18]) );
  sdnrq1 Crnt_Instrn_1_reg_17_ ( .D(n36), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[17]) );
  sdnrq1 Crnt_Instrn_1_reg_16_ ( .D(n34), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[16]) );
  sdnrq1 Crnt_Instrn_1_reg_15_ ( .D(n32), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[15]) );
  sdnrq1 Crnt_Instrn_1_reg_14_ ( .D(n30), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[14]) );
  sdnrq1 Crnt_Instrn_1_reg_13_ ( .D(n28), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[13]) );
  sdnrq1 Crnt_Instrn_1_reg_12_ ( .D(n26), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[12]) );
  sdnrq1 Crnt_Instrn_1_reg_11_ ( .D(n24), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[11]) );
  sdnrq1 Crnt_Instrn_1_reg_10_ ( .D(n22), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[10]) );
  sdnrq1 Crnt_Instrn_1_reg_9_ ( .D(n20), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[9]) );
  sdnrq1 Crnt_Instrn_1_reg_8_ ( .D(n18), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[8]) );
  sdnrq1 Crnt_Instrn_1_reg_7_ ( .D(n16), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[7]) );
  sdnrq1 Crnt_Instrn_1_reg_6_ ( .D(n14), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[6]) );
  sdnrq1 Crnt_Instrn_1_reg_5_ ( .D(n12), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[5]) );
  sdnrq1 Crnt_Instrn_1_reg_4_ ( .D(n10), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[4]) );
  sdnrq1 Crnt_Instrn_1_reg_3_ ( .D(n8), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[3]) );
  sdnrq1 Crnt_Instrn_1_reg_2_ ( .D(n6), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[2]) );
  sdnrq1 Crnt_Instrn_1_reg_1_ ( .D(n4), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[1]) );
  sdnrq1 Crnt_Instrn_1_reg_0_ ( .D(n2), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Crnt_Instrn_1[0]) );
  mx02d0 U3 ( .I0(Instrn[0]), .I1(Crnt_Instrn_1[0]), .S(n135), .Z(n2) );
  mx02d0 U5 ( .I0(Instrn[1]), .I1(Crnt_Instrn_1[1]), .S(n135), .Z(n4) );
  mx02d0 U7 ( .I0(Instrn[2]), .I1(Crnt_Instrn_1[2]), .S(n135), .Z(n6) );
  mx02d0 U9 ( .I0(Instrn[3]), .I1(Crnt_Instrn_1[3]), .S(n135), .Z(n8) );
  mx02d0 U11 ( .I0(Instrn[4]), .I1(Crnt_Instrn_1[4]), .S(n135), .Z(n10) );
  mx02d0 U13 ( .I0(Instrn[5]), .I1(Crnt_Instrn_1[5]), .S(n135), .Z(n12) );
  mx02d0 U15 ( .I0(Instrn[6]), .I1(Crnt_Instrn_1[6]), .S(n135), .Z(n14) );
  mx02d0 U17 ( .I0(Instrn[7]), .I1(Crnt_Instrn_1[7]), .S(n135), .Z(n16) );
  mx02d0 U19 ( .I0(Instrn[8]), .I1(Crnt_Instrn_1[8]), .S(n135), .Z(n18) );
  mx02d0 U21 ( .I0(Instrn[9]), .I1(Crnt_Instrn_1[9]), .S(n134), .Z(n20) );
  mx02d0 U23 ( .I0(Instrn[10]), .I1(Crnt_Instrn_1[10]), .S(n134), .Z(n22) );
  mx02d0 U25 ( .I0(Instrn[11]), .I1(Crnt_Instrn_1[11]), .S(n134), .Z(n24) );
  mx02d0 U27 ( .I0(Instrn[12]), .I1(Crnt_Instrn_1[12]), .S(n134), .Z(n26) );
  mx02d0 U29 ( .I0(Instrn[13]), .I1(Crnt_Instrn_1[13]), .S(n134), .Z(n28) );
  mx02d0 U31 ( .I0(Instrn[14]), .I1(Crnt_Instrn_1[14]), .S(n134), .Z(n30) );
  mx02d0 U33 ( .I0(Instrn[15]), .I1(Crnt_Instrn_1[15]), .S(n134), .Z(n32) );
  mx02d0 U35 ( .I0(Instrn[16]), .I1(Crnt_Instrn_1[16]), .S(n134), .Z(n34) );
  mx02d0 U37 ( .I0(Instrn[17]), .I1(Crnt_Instrn_1[17]), .S(n134), .Z(n36) );
  mx02d0 U39 ( .I0(Instrn[18]), .I1(Crnt_Instrn_1[18]), .S(n134), .Z(n38) );
  mx02d0 U41 ( .I0(Instrn[19]), .I1(Crnt_Instrn_1[19]), .S(n134), .Z(n40) );
  mx02d0 U43 ( .I0(Instrn[20]), .I1(Crnt_Instrn_1[20]), .S(n133), .Z(n42) );
  mx02d0 U45 ( .I0(Instrn[21]), .I1(Crnt_Instrn_1[21]), .S(n133), .Z(n44) );
  mx02d0 U47 ( .I0(Instrn[22]), .I1(Crnt_Instrn_1[22]), .S(n133), .Z(n46) );
  mx02d0 U49 ( .I0(Instrn[23]), .I1(Crnt_Instrn_1[23]), .S(n133), .Z(n48) );
  mx02d0 U51 ( .I0(Instrn[24]), .I1(Crnt_Instrn_1[24]), .S(n133), .Z(n50) );
  mx02d0 U53 ( .I0(Instrn[25]), .I1(Crnt_Instrn_1[25]), .S(n133), .Z(n52) );
  mx02d0 U55 ( .I0(Instrn[26]), .I1(Crnt_Instrn_1[26]), .S(n133), .Z(n54) );
  mx02d0 U57 ( .I0(Instrn[27]), .I1(Crnt_Instrn_1[27]), .S(n133), .Z(n56) );
  mx02d0 U59 ( .I0(Instrn[28]), .I1(Crnt_Instrn_1[28]), .S(n133), .Z(n58) );
  mx02d0 U61 ( .I0(Instrn[29]), .I1(Crnt_Instrn_1[29]), .S(n133), .Z(n60) );
  mx02d0 U63 ( .I0(Instrn[30]), .I1(Crnt_Instrn_1[30]), .S(n133), .Z(n62) );
  mx02d0 U65 ( .I0(Instrn[31]), .I1(Crnt_Instrn_1[31]), .S(n132), .Z(n65) );
  mx02d0 U67 ( .I0(Instrn[0]), .I1(Crnt_Instrn_2[0]), .S(n132), .Z(n67) );
  mx02d0 U69 ( .I0(Instrn[1]), .I1(Crnt_Instrn_2[1]), .S(n132), .Z(n69) );
  mx02d0 U71 ( .I0(Instrn[2]), .I1(Crnt_Instrn_2[2]), .S(n132), .Z(n71) );
  mx02d0 U73 ( .I0(Instrn[3]), .I1(Crnt_Instrn_2[3]), .S(n132), .Z(n73) );
  mx02d0 U75 ( .I0(Instrn[4]), .I1(Crnt_Instrn_2[4]), .S(n132), .Z(n75) );
  mx02d0 U77 ( .I0(Instrn[5]), .I1(Crnt_Instrn_2[5]), .S(n132), .Z(n77) );
  mx02d0 U79 ( .I0(Instrn[6]), .I1(Crnt_Instrn_2[6]), .S(n132), .Z(n79) );
  mx02d0 U81 ( .I0(Instrn[7]), .I1(Crnt_Instrn_2[7]), .S(n132), .Z(n81) );
  mx02d0 U83 ( .I0(Instrn[8]), .I1(Crnt_Instrn_2[8]), .S(n132), .Z(n83) );
  mx02d0 U85 ( .I0(Instrn[9]), .I1(Crnt_Instrn_2[9]), .S(n132), .Z(n85) );
  mx02d0 U87 ( .I0(Instrn[10]), .I1(Crnt_Instrn_2[10]), .S(n131), .Z(n87) );
  mx02d0 U89 ( .I0(Instrn[11]), .I1(Crnt_Instrn_2[11]), .S(n131), .Z(n89) );
  mx02d0 U91 ( .I0(Instrn[12]), .I1(Crnt_Instrn_2[12]), .S(n131), .Z(n91) );
  mx02d0 U93 ( .I0(Instrn[13]), .I1(Crnt_Instrn_2[13]), .S(n131), .Z(n93) );
  mx02d0 U95 ( .I0(Instrn[14]), .I1(Crnt_Instrn_2[14]), .S(n131), .Z(n95) );
  mx02d0 U97 ( .I0(Instrn[15]), .I1(Crnt_Instrn_2[15]), .S(n131), .Z(n97) );
  mx02d0 U99 ( .I0(Instrn[16]), .I1(Crnt_Instrn_2[16]), .S(n131), .Z(n99) );
  mx02d0 U101 ( .I0(Instrn[17]), .I1(Crnt_Instrn_2[17]), .S(n131), .Z(n101) );
  mx02d0 U103 ( .I0(Instrn[18]), .I1(Crnt_Instrn_2[18]), .S(n131), .Z(n103) );
  mx02d0 U105 ( .I0(Instrn[19]), .I1(Crnt_Instrn_2[19]), .S(n131), .Z(n105) );
  mx02d0 U107 ( .I0(Instrn[20]), .I1(Crnt_Instrn_2[20]), .S(n131), .Z(n107) );
  mx02d0 U109 ( .I0(Instrn[21]), .I1(Crnt_Instrn_2[21]), .S(n130), .Z(n109) );
  mx02d0 U111 ( .I0(Instrn[22]), .I1(Crnt_Instrn_2[22]), .S(n130), .Z(n111) );
  mx02d0 U113 ( .I0(Instrn[23]), .I1(Crnt_Instrn_2[23]), .S(n130), .Z(n113) );
  mx02d0 U115 ( .I0(Instrn[24]), .I1(Crnt_Instrn_2[24]), .S(n130), .Z(n115) );
  mx02d0 U117 ( .I0(Instrn[25]), .I1(Crnt_Instrn_2[25]), .S(n130), .Z(n117) );
  mx02d0 U119 ( .I0(Instrn[26]), .I1(Crnt_Instrn_2[26]), .S(n130), .Z(n119) );
  mx02d0 U121 ( .I0(Instrn[27]), .I1(Crnt_Instrn_2[27]), .S(n130), .Z(n121) );
  mx02d0 U123 ( .I0(Instrn[28]), .I1(Crnt_Instrn_2[28]), .S(n130), .Z(n123) );
  mx02d0 U125 ( .I0(Instrn[29]), .I1(Crnt_Instrn_2[29]), .S(n130), .Z(n125) );
  mx02d0 U127 ( .I0(Instrn[30]), .I1(Crnt_Instrn_2[30]), .S(n130), .Z(n127) );
  mx02d0 U129 ( .I0(Instrn[31]), .I1(Crnt_Instrn_2[31]), .S(n130), .Z(n129) );
  bufbd1 U130 ( .I(n64), .Z(n134) );
  bufbd1 U131 ( .I(n64), .Z(n133) );
  bufbd1 U132 ( .I(n64), .Z(n132) );
  bufbd1 U133 ( .I(n64), .Z(n131) );
  bufbd1 U134 ( .I(n64), .Z(n130) );
  bufbd1 U135 ( .I(n64), .Z(n135) );
  inv0d1 U136 ( .I(Latch_Instr), .ZN(n64) );
endmodule


module DATA_PATH ( clk, reset_n, Reset_AluRegs, Rd_Oprnd_A, Rd_Oprnd_B, 
        UseData_Imm_Or_RegB, UseData_Imm_Or_ALU, Latch_Flags, ALU_Zro, ALU_Neg, 
        ALU_Carry, PSW_Zro, PSW_Neg, PSW_Carry, Crnt_Instrn, RegPort_A, 
        RegPort_B, Op_Result, Zro_Flag, Neg_Flag, Carry_Flag, Addr_A, Oprnd_A, 
        Oprnd_B, RegPort_C );
  input [31:0] Crnt_Instrn;
  input [15:0] RegPort_A;
  input [15:0] RegPort_B;
  input [15:0] Op_Result;
  output [6:0] Addr_A;
  output [15:0] Oprnd_A;
  output [15:0] Oprnd_B;
  output [15:0] RegPort_C;
  input clk, reset_n, Reset_AluRegs, Rd_Oprnd_A, Rd_Oprnd_B,
         UseData_Imm_Or_RegB, UseData_Imm_Or_ALU, Latch_Flags, ALU_Zro,
         ALU_Neg, ALU_Carry, PSW_Zro, PSW_Neg, PSW_Carry;
  output Zro_Flag, Neg_Flag, Carry_Flag;
  wire   N12, N14, N16, N18, N20, N22, N24, N26, N28, N30, N32, N34, N36, N38,
         N40, N41, N42, N94, N96, N98, N99, N100, N102, N104, N106, N108, N110,
         N112, N114, N116, N118, N120, N122, N124, PSWL_Zro, PSWL_Neg,
         PSWL_Carry, n4, n21, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n2, n5, n7, n9, n11, n13, n15, n17, n19, n22, n24, n26, n28,
         n30, n32, n34, n36, n39, n52, n54, n56, n58, n60, n62, n64, n66, n68,
         n70, n72, n74, n76, n78, n80, n82, n84, n85;

  an02d1 U42 ( .A1(RegPort_A[15]), .A2(n45), .Z(N42) );
  an02d1 U43 ( .A1(RegPort_A[14]), .A2(n45), .Z(N40) );
  an02d1 U44 ( .A1(RegPort_A[13]), .A2(n45), .Z(N38) );
  an02d1 U45 ( .A1(RegPort_A[12]), .A2(n45), .Z(N36) );
  an02d1 U46 ( .A1(RegPort_A[11]), .A2(n45), .Z(N34) );
  an02d1 U47 ( .A1(RegPort_A[10]), .A2(n45), .Z(N32) );
  an02d1 U48 ( .A1(RegPort_A[9]), .A2(n45), .Z(N30) );
  an02d1 U49 ( .A1(RegPort_A[8]), .A2(n45), .Z(N28) );
  an02d1 U50 ( .A1(RegPort_A[7]), .A2(n45), .Z(N26) );
  an02d1 U51 ( .A1(RegPort_A[6]), .A2(n45), .Z(N24) );
  an02d1 U52 ( .A1(RegPort_A[5]), .A2(n45), .Z(N22) );
  an02d1 U53 ( .A1(RegPort_A[4]), .A2(n45), .Z(N20) );
  an02d1 U54 ( .A1(RegPort_A[3]), .A2(n45), .Z(N18) );
  an02d1 U55 ( .A1(RegPort_A[2]), .A2(n45), .Z(N16) );
  an02d1 U56 ( .A1(RegPort_A[1]), .A2(n45), .Z(N14) );
  an02d1 U57 ( .A1(RegPort_B[15]), .A2(n43), .Z(N124) );
  an02d1 U58 ( .A1(RegPort_B[14]), .A2(n43), .Z(N122) );
  an02d1 U59 ( .A1(RegPort_B[13]), .A2(n43), .Z(N120) );
  an02d1 U60 ( .A1(RegPort_A[0]), .A2(n45), .Z(N12) );
  an02d1 U61 ( .A1(RegPort_B[12]), .A2(n43), .Z(N118) );
  an02d1 U62 ( .A1(RegPort_B[11]), .A2(n43), .Z(N116) );
  an02d1 U63 ( .A1(RegPort_B[10]), .A2(n43), .Z(N114) );
  an02d1 U64 ( .A1(RegPort_B[9]), .A2(n43), .Z(N112) );
  an02d1 U65 ( .A1(RegPort_B[8]), .A2(n43), .Z(N110) );
  an02d1 U68 ( .A1(UseData_Imm_Or_RegB), .A2(n45), .Z(n44) );
  aor22d1 U73 ( .A1(PSWL_Zro), .A2(n40), .B1(ALU_Zro), .B2(n41), .Z(Zro_Flag)
         );
  aor22d1 U74 ( .A1(Op_Result[9]), .A2(n42), .B1(n85), .B2(Crnt_Instrn[9]), 
        .Z(RegPort_C[9]) );
  aor22d1 U75 ( .A1(Op_Result[8]), .A2(n42), .B1(Crnt_Instrn[8]), .B2(n85), 
        .Z(RegPort_C[8]) );
  aor22d1 U76 ( .A1(Op_Result[7]), .A2(n42), .B1(Crnt_Instrn[7]), .B2(n85), 
        .Z(RegPort_C[7]) );
  aor22d1 U77 ( .A1(Op_Result[6]), .A2(n42), .B1(Crnt_Instrn[6]), .B2(n85), 
        .Z(RegPort_C[6]) );
  aor22d1 U78 ( .A1(Op_Result[5]), .A2(n42), .B1(Crnt_Instrn[5]), .B2(n85), 
        .Z(RegPort_C[5]) );
  aor22d1 U79 ( .A1(Op_Result[4]), .A2(n42), .B1(Crnt_Instrn[4]), .B2(n85), 
        .Z(RegPort_C[4]) );
  aor22d1 U80 ( .A1(Op_Result[3]), .A2(n42), .B1(Crnt_Instrn[3]), .B2(n85), 
        .Z(RegPort_C[3]) );
  aor22d1 U81 ( .A1(Op_Result[2]), .A2(n42), .B1(Crnt_Instrn[2]), .B2(n85), 
        .Z(RegPort_C[2]) );
  aor22d1 U82 ( .A1(Op_Result[1]), .A2(n42), .B1(Crnt_Instrn[1]), .B2(n85), 
        .Z(RegPort_C[1]) );
  aor22d1 U83 ( .A1(Op_Result[15]), .A2(n42), .B1(Crnt_Instrn[15]), .B2(n85), 
        .Z(RegPort_C[15]) );
  aor22d1 U84 ( .A1(Op_Result[14]), .A2(n42), .B1(Crnt_Instrn[14]), .B2(n85), 
        .Z(RegPort_C[14]) );
  aor22d1 U85 ( .A1(Op_Result[13]), .A2(n42), .B1(Crnt_Instrn[13]), .B2(n85), 
        .Z(RegPort_C[13]) );
  aor22d1 U86 ( .A1(Op_Result[12]), .A2(n42), .B1(Crnt_Instrn[12]), .B2(n85), 
        .Z(RegPort_C[12]) );
  aor22d1 U87 ( .A1(Op_Result[11]), .A2(n42), .B1(Crnt_Instrn[11]), .B2(n85), 
        .Z(RegPort_C[11]) );
  aor22d1 U88 ( .A1(Op_Result[10]), .A2(n42), .B1(Crnt_Instrn[10]), .B2(n85), 
        .Z(RegPort_C[10]) );
  aor22d1 U89 ( .A1(Op_Result[0]), .A2(n42), .B1(Crnt_Instrn[0]), .B2(n85), 
        .Z(RegPort_C[0]) );
  aor22d1 U90 ( .A1(PSWL_Neg), .A2(n40), .B1(ALU_Neg), .B2(n41), .Z(Neg_Flag)
         );
  aor22d1 U91 ( .A1(RegPort_B[2]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[2]), 
        .Z(N98) );
  aor22d1 U92 ( .A1(RegPort_B[1]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[1]), 
        .Z(N96) );
  aor22d1 U93 ( .A1(RegPort_B[0]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[0]), 
        .Z(N94) );
  aor22d1 U94 ( .A1(RegPort_B[7]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[7]), 
        .Z(N108) );
  aor22d1 U95 ( .A1(RegPort_B[6]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[6]), 
        .Z(N106) );
  aor22d1 U96 ( .A1(RegPort_B[5]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[5]), 
        .Z(N104) );
  aor22d1 U97 ( .A1(RegPort_B[4]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[4]), 
        .Z(N102) );
  aor22d1 U98 ( .A1(RegPort_B[3]), .A2(n43), .B1(n44), .B2(Crnt_Instrn[3]), 
        .Z(N100) );
  aor22d1 U100 ( .A1(PSWL_Carry), .A2(n40), .B1(ALU_Carry), .B2(n41), .Z(
        Carry_Flag) );
  nd04d0 U101 ( .A1(Crnt_Instrn[27]), .A2(n46), .A3(n47), .A4(n48), .ZN(n41)
         );
  nr04d0 U102 ( .A1(Crnt_Instrn[31]), .A2(Crnt_Instrn[30]), .A3(
        Crnt_Instrn[29]), .A4(Crnt_Instrn[28]), .ZN(n48) );
  nr02d0 U103 ( .A1(Crnt_Instrn[26]), .A2(Crnt_Instrn[25]), .ZN(n47) );
  aor22d1 U104 ( .A1(n49), .A2(Crnt_Instrn[6]), .B1(Crnt_Instrn[14]), .B2(n50), 
        .Z(Addr_A[6]) );
  aor22d1 U105 ( .A1(n49), .A2(Crnt_Instrn[5]), .B1(Crnt_Instrn[13]), .B2(n50), 
        .Z(Addr_A[5]) );
  aor22d1 U106 ( .A1(n49), .A2(Crnt_Instrn[4]), .B1(Crnt_Instrn[12]), .B2(n50), 
        .Z(Addr_A[4]) );
  aor22d1 U107 ( .A1(n49), .A2(Crnt_Instrn[3]), .B1(Crnt_Instrn[11]), .B2(n50), 
        .Z(Addr_A[3]) );
  aor22d1 U108 ( .A1(n49), .A2(Crnt_Instrn[2]), .B1(Crnt_Instrn[10]), .B2(n50), 
        .Z(Addr_A[2]) );
  aor22d1 U109 ( .A1(n49), .A2(Crnt_Instrn[1]), .B1(Crnt_Instrn[9]), .B2(n50), 
        .Z(Addr_A[1]) );
  aor22d1 U110 ( .A1(n49), .A2(Crnt_Instrn[0]), .B1(Crnt_Instrn[8]), .B2(n50), 
        .Z(Addr_A[0]) );
  nr03d0 U111 ( .A1(Crnt_Instrn[30]), .A2(Crnt_Instrn[31]), .A3(n46), .ZN(n49)
         );
  sdnrq1 Oprnd_B_reg_15_ ( .D(n84), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[15]) );
  sdnrq1 Oprnd_B_reg_14_ ( .D(n82), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[14]) );
  sdnrq1 Oprnd_B_reg_13_ ( .D(n80), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[13]) );
  sdnrq1 Oprnd_B_reg_12_ ( .D(n78), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[12]) );
  sdnrq1 Oprnd_B_reg_11_ ( .D(n76), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[11]) );
  sdnrq1 Oprnd_B_reg_10_ ( .D(n74), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[10]) );
  sdnrq1 Oprnd_B_reg_9_ ( .D(n72), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[9]) );
  sdnrq1 Oprnd_B_reg_8_ ( .D(n70), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[8]) );
  sdnrq1 Oprnd_B_reg_7_ ( .D(n68), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[7]) );
  sdnrq1 Oprnd_B_reg_6_ ( .D(n66), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[6]) );
  sdnrq1 Oprnd_B_reg_5_ ( .D(n64), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[5]) );
  sdnrq1 Oprnd_B_reg_4_ ( .D(n62), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[4]) );
  sdnrq1 Oprnd_B_reg_3_ ( .D(n60), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[3]) );
  sdnrq1 Oprnd_B_reg_2_ ( .D(n58), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[2]) );
  sdnrq1 Oprnd_B_reg_1_ ( .D(n56), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[1]) );
  sdnrq1 Oprnd_B_reg_0_ ( .D(n54), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_B[0]) );
  sdnrq1 Oprnd_A_reg_15_ ( .D(n52), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[15]) );
  sdnrq1 Oprnd_A_reg_14_ ( .D(n39), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[14]) );
  sdnrq1 Oprnd_A_reg_13_ ( .D(n36), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[13]) );
  sdnrq1 Oprnd_A_reg_12_ ( .D(n34), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[12]) );
  sdnrq1 Oprnd_A_reg_11_ ( .D(n32), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[11]) );
  sdnrq1 Oprnd_A_reg_10_ ( .D(n30), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[10]) );
  sdnrq1 Oprnd_A_reg_9_ ( .D(n28), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[9]) );
  sdnrq1 Oprnd_A_reg_8_ ( .D(n26), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[8]) );
  sdnrq1 Oprnd_A_reg_7_ ( .D(n24), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[7]) );
  sdnrq1 Oprnd_A_reg_6_ ( .D(n22), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[6]) );
  sdnrq1 Oprnd_A_reg_5_ ( .D(n19), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[5]) );
  sdnrq1 Oprnd_A_reg_4_ ( .D(n17), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[4]) );
  sdnrq1 Oprnd_A_reg_3_ ( .D(n15), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[3]) );
  sdnrq1 Oprnd_A_reg_2_ ( .D(n13), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[2]) );
  sdnrq1 Oprnd_A_reg_1_ ( .D(n11), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[1]) );
  sdnrq1 Oprnd_A_reg_0_ ( .D(n9), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Oprnd_A[0]) );
  sdcrq1 PSWL_Zro_reg ( .D(n7), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PSWL_Zro) );
  sdcrq1 PSWL_Neg_reg ( .D(n5), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(PSWL_Neg) );
  sdcrq1 PSWL_Carry_reg ( .D(n2), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), .Q(PSWL_Carry) );
  mx02d0 U4 ( .I0(PSW_Carry), .I1(PSWL_Carry), .S(n4), .Z(n2) );
  mx02d0 U6 ( .I0(PSW_Neg), .I1(PSWL_Neg), .S(n4), .Z(n5) );
  mx02d0 U8 ( .I0(PSW_Zro), .I1(PSWL_Zro), .S(n4), .Z(n7) );
  mx02d0 U10 ( .I0(N12), .I1(Oprnd_A[0]), .S(n38), .Z(n9) );
  mx02d0 U12 ( .I0(N14), .I1(Oprnd_A[1]), .S(n38), .Z(n11) );
  mx02d0 U14 ( .I0(N16), .I1(Oprnd_A[2]), .S(n38), .Z(n13) );
  mx02d0 U16 ( .I0(N18), .I1(Oprnd_A[3]), .S(n38), .Z(n15) );
  mx02d0 U18 ( .I0(N20), .I1(Oprnd_A[4]), .S(n38), .Z(n17) );
  mx02d0 U20 ( .I0(N22), .I1(Oprnd_A[5]), .S(n38), .Z(n19) );
  mx02d0 U22 ( .I0(N24), .I1(Oprnd_A[6]), .S(n38), .Z(n22) );
  mx02d0 U24 ( .I0(N26), .I1(Oprnd_A[7]), .S(n38), .Z(n24) );
  mx02d0 U26 ( .I0(N28), .I1(Oprnd_A[8]), .S(n38), .Z(n26) );
  mx02d0 U28 ( .I0(N30), .I1(Oprnd_A[9]), .S(n38), .Z(n28) );
  mx02d0 U30 ( .I0(N32), .I1(Oprnd_A[10]), .S(n38), .Z(n30) );
  mx02d0 U32 ( .I0(N34), .I1(Oprnd_A[11]), .S(n38), .Z(n32) );
  mx02d0 U34 ( .I0(N36), .I1(Oprnd_A[12]), .S(n38), .Z(n34) );
  mx02d0 U36 ( .I0(N38), .I1(Oprnd_A[13]), .S(n38), .Z(n36) );
  mx02d0 U38 ( .I0(N40), .I1(Oprnd_A[14]), .S(n38), .Z(n39) );
  mx02d0 U40 ( .I0(N42), .I1(Oprnd_A[15]), .S(n38), .Z(n52) );
  mx02d0 U66 ( .I0(N94), .I1(Oprnd_B[0]), .S(n21), .Z(n54) );
  mx02d0 U69 ( .I0(N96), .I1(Oprnd_B[1]), .S(n21), .Z(n56) );
  mx02d0 U71 ( .I0(N98), .I1(Oprnd_B[2]), .S(n21), .Z(n58) );
  mx02d0 U99 ( .I0(N100), .I1(Oprnd_B[3]), .S(n21), .Z(n60) );
  mx02d0 U113 ( .I0(N102), .I1(Oprnd_B[4]), .S(n21), .Z(n62) );
  mx02d0 U115 ( .I0(N104), .I1(Oprnd_B[5]), .S(n21), .Z(n64) );
  mx02d0 U117 ( .I0(N106), .I1(Oprnd_B[6]), .S(n21), .Z(n66) );
  mx02d0 U119 ( .I0(N108), .I1(Oprnd_B[7]), .S(n21), .Z(n68) );
  mx02d0 U121 ( .I0(N110), .I1(Oprnd_B[8]), .S(n21), .Z(n70) );
  mx02d0 U123 ( .I0(N112), .I1(Oprnd_B[9]), .S(n21), .Z(n72) );
  mx02d0 U125 ( .I0(N114), .I1(Oprnd_B[10]), .S(n21), .Z(n74) );
  mx02d0 U127 ( .I0(N116), .I1(Oprnd_B[11]), .S(n21), .Z(n76) );
  mx02d0 U129 ( .I0(N118), .I1(Oprnd_B[12]), .S(n21), .Z(n78) );
  mx02d0 U131 ( .I0(N120), .I1(Oprnd_B[13]), .S(n21), .Z(n80) );
  mx02d0 U133 ( .I0(N122), .I1(Oprnd_B[14]), .S(n21), .Z(n82) );
  mx02d0 U135 ( .I0(N124), .I1(Oprnd_B[15]), .S(n21), .Z(n84) );
  inv0d1 U136 ( .I(Latch_Flags), .ZN(n4) );
  inv0d1 U137 ( .I(n41), .ZN(n40) );
  inv0d1 U138 ( .I(N99), .ZN(n21) );
  nd12d0 U139 ( .A1(Rd_Oprnd_B), .A2(n45), .ZN(N99) );
  inv0d1 U140 ( .I(Reset_AluRegs), .ZN(n45) );
  inv0d1 U141 ( .I(n49), .ZN(n50) );
  inv0d1 U142 ( .I(n85), .ZN(n42) );
  inv0d1 U143 ( .I(Crnt_Instrn[24]), .ZN(n46) );
  inv0d1 U144 ( .I(N41), .ZN(n38) );
  nd12d0 U145 ( .A1(Rd_Oprnd_A), .A2(n45), .ZN(N41) );
  nr02d0 U146 ( .A1(Reset_AluRegs), .A2(UseData_Imm_Or_RegB), .ZN(n43) );
  bufbd1 U147 ( .I(UseData_Imm_Or_ALU), .Z(n85) );
endmodule


module CONTROL ( clk, reset_n, Crnt_Instrn, Current_State, Neg_Flag, 
        Carry_Flag, Zro_Flag, Latch_Instr, Rd_Oprnd_A, Rd_Oprnd_B, Latch_Flags, 
        Latch_Result, Write_RegC, UseData_Imm_Or_RegB, UseData_Imm_Or_ALU, 
        Reset_AluRegs, EndOfInstrn, PushEnbl, PopEnbl, OUT_VALID );
  input [31:0] Crnt_Instrn;
  input [2:0] Current_State;
  input clk, reset_n, Neg_Flag, Carry_Flag, Zro_Flag;
  output Latch_Instr, Rd_Oprnd_A, Rd_Oprnd_B, Latch_Flags, Latch_Result,
         Write_RegC, UseData_Imm_Or_RegB, UseData_Imm_Or_ALU, Reset_AluRegs,
         EndOfInstrn, PushEnbl, PopEnbl, OUT_VALID;
  wire   Data_Imm_Or_RegB, Data_Imm_Or_ALU, N87, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31;

  an03d1 U6 ( .A1(n11), .A2(n12), .A3(Crnt_Instrn[28]), .Z(PushEnbl) );
  an02d1 U10 ( .A1(n22), .A2(n23), .Z(n16) );
  an04d1 U13 ( .A1(Crnt_Instrn[18]), .A2(Crnt_Instrn[19]), .A3(Crnt_Instrn[20]), .A4(Crnt_Instrn[21]), .Z(n20) );
  an02d1 U14 ( .A1(Crnt_Instrn[16]), .A2(n22), .Z(n18) );
  or04d1 U15 ( .A1(Crnt_Instrn[23]), .A2(Crnt_Instrn[22]), .A3(Crnt_Instrn[21]), .A4(Crnt_Instrn[20]), .Z(n25) );
  an02d1 U16 ( .A1(Crnt_Instrn[27]), .A2(n11), .Z(PopEnbl) );
  an03d1 U21 ( .A1(n8), .A2(n6), .A3(n27), .Z(n29) );
  nr02d0 U26 ( .A1(n5), .A2(n6), .ZN(Write_RegC) );
  nr03d0 U27 ( .A1(n7), .A2(Current_State[2]), .A3(Current_State[1]), .ZN(
        Reset_AluRegs) );
  nr02d0 U28 ( .A1(n5), .A2(n8), .ZN(Rd_Oprnd_B) );
  oan211d1 U29 ( .C1(Crnt_Instrn[30]), .C2(n9), .B(n10), .A(n8), .ZN(
        Rd_Oprnd_A) );
  aor22d1 U30 ( .A1(n13), .A2(n14), .B1(Crnt_Instrn[25]), .B2(n15), .Z(n12) );
  aor22d1 U31 ( .A1(n16), .A2(n17), .B1(n18), .B2(n19), .Z(n15) );
  aor222d1 U32 ( .A1(Zro_Flag), .A2(n18), .B1(n20), .B2(n21), .C1(Neg_Flag), 
        .C2(n16), .Z(n13) );
  nr04d0 U33 ( .A1(Crnt_Instrn[23]), .A2(Crnt_Instrn[22]), .A3(n23), .A4(n24), 
        .ZN(n21) );
  nr04d0 U34 ( .A1(Crnt_Instrn[18]), .A2(Crnt_Instrn[19]), .A3(Crnt_Instrn[17]), .A4(n25), .ZN(n22) );
  nr02d0 U35 ( .A1(n9), .A2(n26), .ZN(OUT_VALID) );
  nr02d0 U36 ( .A1(n5), .A2(n27), .ZN(Latch_Result) );
  nr02d0 U37 ( .A1(Crnt_Instrn[31]), .A2(Crnt_Instrn[30]), .ZN(n5) );
  nr02d0 U38 ( .A1(n10), .A2(n27), .ZN(Latch_Flags) );
  xn02d1 U39 ( .A1(Crnt_Instrn[30]), .A2(Crnt_Instrn[31]), .ZN(n10) );
  nr03d0 U40 ( .A1(n28), .A2(Crnt_Instrn[30]), .A3(n29), .ZN(Data_Imm_Or_RegB)
         );
  nr03d0 U41 ( .A1(n30), .A2(n29), .A3(n28), .ZN(Data_Imm_Or_ALU) );
  nd03d0 U42 ( .A1(Current_State[0]), .A2(n31), .A3(Current_State[1]), .ZN(n27) );
  nr03d0 U43 ( .A1(Current_State[0]), .A2(Current_State[1]), .A3(n31), .ZN(N87) );
  nd03d0 U44 ( .A1(n7), .A2(n31), .A3(Current_State[1]), .ZN(n8) );
  sdcrq1 UseData_Imm_Or_ALU_reg ( .D(Data_Imm_Or_ALU), .SD(UseData_Imm_Or_ALU), 
        .SC(1'b0), .CP(clk), .CDN(reset_n), .Q(UseData_Imm_Or_ALU) );
  sdcrq1 UseData_Imm_Or_RegB_reg ( .D(Data_Imm_Or_RegB), .SD(
        UseData_Imm_Or_RegB), .SC(1'b0), .CP(clk), .CDN(reset_n), .Q(
        UseData_Imm_Or_RegB) );
  sdnrq1 EndOfInstrn_reg ( .D(N87), .SD(EndOfInstrn), .SC(1'b0), .CP(clk), .Q(
        EndOfInstrn) );
  inv0d1 U7 ( .I(n26), .ZN(n11) );
  nd12d0 U8 ( .A1(n27), .A2(n5), .ZN(n26) );
  inv0d1 U9 ( .I(Neg_Flag), .ZN(n17) );
  inv0d1 U11 ( .I(Zro_Flag), .ZN(n19) );
  inv0d1 U12 ( .I(N87), .ZN(n6) );
  inv0d1 U17 ( .I(Current_State[2]), .ZN(n31) );
  inv0d1 U18 ( .I(Crnt_Instrn[24]), .ZN(n9) );
  inv0d1 U19 ( .I(Current_State[0]), .ZN(n7) );
  inv0d1 U20 ( .I(Crnt_Instrn[17]), .ZN(n24) );
  inv0d1 U22 ( .I(Crnt_Instrn[16]), .ZN(n23) );
  inv0d1 U23 ( .I(Crnt_Instrn[25]), .ZN(n14) );
  inv0d1 U24 ( .I(Crnt_Instrn[30]), .ZN(n30) );
  inv0d1 U25 ( .I(Crnt_Instrn[31]), .ZN(n28) );
  bufbd1 U45 ( .I(Reset_AluRegs), .Z(Latch_Instr) );
endmodule


module ALU ( reset_n, clk, Oprnd_A, Oprnd_B, ALU_OP, Latch_Result, Latch_Flags, 
        Lachd_Result, Zro_Flag, Neg_Flag, Carry_Flag );
  input [15:0] Oprnd_A;
  input [15:0] Oprnd_B;
  input [5:0] ALU_OP;
  output [15:0] Lachd_Result;
  input reset_n, clk, Latch_Result, Latch_Flags;
  output Zro_Flag, Neg_Flag, Carry_Flag;
  wire   ALU_Zro, ALU_Neg, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N81, N82, N83, N84, N85, N86, N87, N88,
         N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N145, N146, N147, N148, N149, N150,
         N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N176, n17, n34, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n6, n8, n10, n12, n14, n16, n19, n21, n23, n25, n27, n29, n31,
         n33, n211, n213, n215, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [15:0] Result;

  an04d1 U29 ( .A1(n50), .A2(n49), .A3(n37), .A4(n36), .Z(n56) );
  an04d1 U38 ( .A1(n51), .A2(n44), .A3(n43), .A4(n42), .Z(n55) );
  an04d1 U47 ( .A1(n48), .A2(n47), .A3(n46), .A4(n45), .Z(n54) );
  an04d1 U56 ( .A1(n41), .A2(n40), .A3(n39), .A4(n38), .Z(n53) );
  nr02d0 U80 ( .A1(n218), .A2(n36), .ZN(Result[9]) );
  nr02d0 U81 ( .A1(n218), .A2(n37), .ZN(Result[8]) );
  nr02d0 U82 ( .A1(n218), .A2(n38), .ZN(Result[7]) );
  nr02d0 U83 ( .A1(n218), .A2(n39), .ZN(Result[6]) );
  nr02d0 U84 ( .A1(n218), .A2(n40), .ZN(Result[5]) );
  nr02d0 U85 ( .A1(n218), .A2(n41), .ZN(Result[4]) );
  nr02d0 U86 ( .A1(n218), .A2(n42), .ZN(Result[3]) );
  nr02d0 U87 ( .A1(n218), .A2(n43), .ZN(Result[2]) );
  nr02d0 U88 ( .A1(n218), .A2(n44), .ZN(Result[1]) );
  nr02d0 U89 ( .A1(n218), .A2(n45), .ZN(ALU_Neg) );
  nr02d0 U90 ( .A1(n218), .A2(n46), .ZN(Result[14]) );
  nr02d0 U91 ( .A1(n218), .A2(n47), .ZN(Result[13]) );
  nr02d0 U92 ( .A1(n218), .A2(n48), .ZN(Result[12]) );
  nr02d0 U93 ( .A1(n218), .A2(n49), .ZN(Result[11]) );
  nr02d0 U94 ( .A1(n218), .A2(n50), .ZN(Result[10]) );
  nr02d0 U95 ( .A1(n218), .A2(n51), .ZN(Result[0]) );
  oai2222d1 U96 ( .A1(n53), .A2(n218), .B1(n54), .B2(n218), .C1(n55), .C2(n218), .D1(n56), .D2(n218), .ZN(n52) );
  nr02d0 U97 ( .A1(n57), .A2(n58), .ZN(n36) );
  aor221d1 U98 ( .B1(N90), .B2(n59), .C1(N58), .C2(n60), .A(n61), .Z(n58) );
  aor222d1 U99 ( .A1(N122), .A2(n62), .B1(N154), .B2(n63), .C1(N106), .C2(n64), 
        .Z(n61) );
  aor221d1 U100 ( .B1(n65), .B2(n66), .C1(N170), .C2(n67), .A(n68), .Z(n57) );
  aor222d1 U101 ( .A1(Oprnd_B[9]), .A2(n69), .B1(n70), .B2(n71), .C1(n228), 
        .C2(n235), .Z(n68) );
  aor221d1 U102 ( .B1(n228), .B2(n73), .C1(n74), .C2(n66), .A(n75), .Z(n70) );
  aor22d1 U103 ( .A1(n228), .A2(n76), .B1(n77), .B2(n66), .Z(n69) );
  nr02d0 U104 ( .A1(n78), .A2(n79), .ZN(n37) );
  aor221d1 U105 ( .B1(N89), .B2(n59), .C1(N57), .C2(n60), .A(n80), .Z(n79) );
  aor222d1 U106 ( .A1(N121), .A2(n62), .B1(N153), .B2(n63), .C1(N105), .C2(n64), .Z(n80) );
  aor221d1 U107 ( .B1(n65), .B2(n81), .C1(N169), .C2(n67), .A(n82), .Z(n78) );
  aor222d1 U108 ( .A1(Oprnd_B[8]), .A2(n83), .B1(n84), .B2(n85), .C1(n227), 
        .C2(n235), .Z(n82) );
  aor221d1 U109 ( .B1(n227), .B2(n73), .C1(n74), .C2(n81), .A(n75), .Z(n84) );
  aor22d1 U110 ( .A1(n227), .A2(n76), .B1(n77), .B2(n81), .Z(n83) );
  nr02d0 U111 ( .A1(n86), .A2(n87), .ZN(n49) );
  aor221d1 U112 ( .B1(N92), .B2(n59), .C1(N60), .C2(n60), .A(n88), .Z(n87) );
  aor222d1 U113 ( .A1(N124), .A2(n62), .B1(N156), .B2(n63), .C1(N108), .C2(n64), .Z(n88) );
  aor221d1 U114 ( .B1(n65), .B2(n89), .C1(N172), .C2(n67), .A(n90), .Z(n86) );
  aor222d1 U115 ( .A1(Oprnd_B[11]), .A2(n91), .B1(n92), .B2(n93), .C1(n230), 
        .C2(n235), .Z(n90) );
  aor221d1 U116 ( .B1(n230), .B2(n73), .C1(n74), .C2(n89), .A(n75), .Z(n92) );
  aor22d1 U117 ( .A1(n230), .A2(n76), .B1(n77), .B2(n89), .Z(n91) );
  nr02d0 U118 ( .A1(n94), .A2(n95), .ZN(n50) );
  aor221d1 U119 ( .B1(N91), .B2(n59), .C1(N59), .C2(n60), .A(n96), .Z(n95) );
  aor222d1 U120 ( .A1(N123), .A2(n62), .B1(N155), .B2(n63), .C1(N107), .C2(n64), .Z(n96) );
  aor221d1 U121 ( .B1(n65), .B2(n97), .C1(N171), .C2(n67), .A(n98), .Z(n94) );
  aor222d1 U122 ( .A1(Oprnd_B[10]), .A2(n99), .B1(n100), .B2(n101), .C1(n229), 
        .C2(n235), .Z(n98) );
  aor221d1 U123 ( .B1(n229), .B2(n73), .C1(n74), .C2(n97), .A(n75), .Z(n100)
         );
  aor22d1 U124 ( .A1(n229), .A2(n76), .B1(n77), .B2(n97), .Z(n99) );
  nr02d0 U125 ( .A1(n102), .A2(n103), .ZN(n42) );
  aor221d1 U126 ( .B1(N84), .B2(n59), .C1(N52), .C2(n60), .A(n104), .Z(n103)
         );
  aor222d1 U127 ( .A1(N116), .A2(n62), .B1(N148), .B2(n63), .C1(N100), .C2(n64), .Z(n104) );
  aor221d1 U128 ( .B1(n65), .B2(n105), .C1(N164), .C2(n67), .A(n106), .Z(n102)
         );
  aor222d1 U129 ( .A1(Oprnd_B[3]), .A2(n107), .B1(n108), .B2(n109), .C1(n222), 
        .C2(n235), .Z(n106) );
  aor221d1 U130 ( .B1(n222), .B2(n73), .C1(n74), .C2(n105), .A(n75), .Z(n108)
         );
  aor22d1 U131 ( .A1(n222), .A2(n76), .B1(n77), .B2(n105), .Z(n107) );
  nr02d0 U132 ( .A1(n110), .A2(n111), .ZN(n43) );
  aor221d1 U133 ( .B1(N83), .B2(n59), .C1(N51), .C2(n60), .A(n112), .Z(n111)
         );
  aor222d1 U134 ( .A1(N115), .A2(n62), .B1(N147), .B2(n63), .C1(N99), .C2(n64), 
        .Z(n112) );
  aor221d1 U135 ( .B1(n65), .B2(n113), .C1(N163), .C2(n67), .A(n114), .Z(n110)
         );
  aor222d1 U136 ( .A1(Oprnd_B[2]), .A2(n115), .B1(n116), .B2(n117), .C1(n221), 
        .C2(n235), .Z(n114) );
  aor221d1 U137 ( .B1(n221), .B2(n73), .C1(n74), .C2(n113), .A(n75), .Z(n116)
         );
  aor22d1 U138 ( .A1(n221), .A2(n76), .B1(n77), .B2(n113), .Z(n115) );
  nr02d0 U139 ( .A1(n118), .A2(n119), .ZN(n44) );
  aor221d1 U140 ( .B1(N82), .B2(n59), .C1(N50), .C2(n60), .A(n120), .Z(n119)
         );
  aor222d1 U141 ( .A1(N114), .A2(n62), .B1(N146), .B2(n63), .C1(N98), .C2(n64), 
        .Z(n120) );
  aor221d1 U142 ( .B1(n65), .B2(n121), .C1(N162), .C2(n67), .A(n122), .Z(n118)
         );
  aor222d1 U143 ( .A1(Oprnd_B[1]), .A2(n123), .B1(n124), .B2(n125), .C1(n220), 
        .C2(n235), .Z(n122) );
  aor221d1 U144 ( .B1(n220), .B2(n73), .C1(n74), .C2(n121), .A(n75), .Z(n124)
         );
  aor22d1 U145 ( .A1(n220), .A2(n76), .B1(n77), .B2(n121), .Z(n123) );
  nr02d0 U146 ( .A1(n126), .A2(n127), .ZN(n51) );
  aor221d1 U147 ( .B1(N81), .B2(n59), .C1(N49), .C2(n60), .A(n128), .Z(n127)
         );
  aor222d1 U148 ( .A1(N113), .A2(n62), .B1(N145), .B2(n63), .C1(N97), .C2(n64), 
        .Z(n128) );
  aor221d1 U149 ( .B1(n65), .B2(n129), .C1(N161), .C2(n67), .A(n130), .Z(n126)
         );
  aor222d1 U150 ( .A1(Oprnd_B[0]), .A2(n131), .B1(n132), .B2(n133), .C1(n219), 
        .C2(n235), .Z(n130) );
  aor221d1 U151 ( .B1(n219), .B2(n73), .C1(n74), .C2(n129), .A(n75), .Z(n132)
         );
  aor22d1 U152 ( .A1(n219), .A2(n76), .B1(n77), .B2(n129), .Z(n131) );
  nr02d0 U153 ( .A1(n134), .A2(n135), .ZN(n45) );
  aor221d1 U154 ( .B1(N96), .B2(n59), .C1(N64), .C2(n60), .A(n136), .Z(n135)
         );
  aor222d1 U155 ( .A1(N128), .A2(n62), .B1(N160), .B2(n63), .C1(N112), .C2(n64), .Z(n136) );
  aor221d1 U156 ( .B1(n65), .B2(n137), .C1(N176), .C2(n67), .A(n138), .Z(n134)
         );
  aor222d1 U157 ( .A1(Oprnd_B[15]), .A2(n139), .B1(n140), .B2(n141), .C1(n234), 
        .C2(n235), .Z(n138) );
  aor221d1 U158 ( .B1(n234), .B2(n73), .C1(n74), .C2(n137), .A(n75), .Z(n140)
         );
  aor22d1 U159 ( .A1(n234), .A2(n76), .B1(n77), .B2(n137), .Z(n139) );
  nr02d0 U160 ( .A1(n142), .A2(n143), .ZN(n46) );
  aor221d1 U161 ( .B1(N95), .B2(n59), .C1(N63), .C2(n60), .A(n144), .Z(n143)
         );
  aor222d1 U162 ( .A1(N127), .A2(n62), .B1(N159), .B2(n63), .C1(N111), .C2(n64), .Z(n144) );
  aor221d1 U163 ( .B1(n65), .B2(n145), .C1(N175), .C2(n67), .A(n146), .Z(n142)
         );
  aor222d1 U164 ( .A1(Oprnd_B[14]), .A2(n147), .B1(n148), .B2(n149), .C1(n233), 
        .C2(n235), .Z(n146) );
  aor221d1 U165 ( .B1(n233), .B2(n73), .C1(n74), .C2(n145), .A(n75), .Z(n148)
         );
  aor22d1 U166 ( .A1(n233), .A2(n76), .B1(n77), .B2(n145), .Z(n147) );
  nr02d0 U167 ( .A1(n150), .A2(n151), .ZN(n47) );
  aor221d1 U168 ( .B1(N94), .B2(n59), .C1(N62), .C2(n60), .A(n152), .Z(n151)
         );
  aor222d1 U169 ( .A1(N126), .A2(n62), .B1(N158), .B2(n63), .C1(N110), .C2(n64), .Z(n152) );
  aor221d1 U170 ( .B1(n65), .B2(n153), .C1(N174), .C2(n67), .A(n154), .Z(n150)
         );
  aor222d1 U171 ( .A1(Oprnd_B[13]), .A2(n155), .B1(n156), .B2(n157), .C1(n232), 
        .C2(n235), .Z(n154) );
  aor221d1 U172 ( .B1(n232), .B2(n73), .C1(n74), .C2(n153), .A(n75), .Z(n156)
         );
  aor22d1 U173 ( .A1(n232), .A2(n76), .B1(n77), .B2(n153), .Z(n155) );
  nr02d0 U174 ( .A1(n158), .A2(n159), .ZN(n48) );
  aor221d1 U175 ( .B1(N93), .B2(n59), .C1(N61), .C2(n60), .A(n160), .Z(n159)
         );
  aor222d1 U176 ( .A1(N125), .A2(n62), .B1(N157), .B2(n63), .C1(N109), .C2(n64), .Z(n160) );
  aor221d1 U177 ( .B1(n65), .B2(n161), .C1(N173), .C2(n67), .A(n162), .Z(n158)
         );
  aor222d1 U178 ( .A1(Oprnd_B[12]), .A2(n163), .B1(n164), .B2(n165), .C1(n231), 
        .C2(n235), .Z(n162) );
  aor221d1 U179 ( .B1(n231), .B2(n73), .C1(n74), .C2(n161), .A(n75), .Z(n164)
         );
  aor22d1 U180 ( .A1(n231), .A2(n76), .B1(n77), .B2(n161), .Z(n163) );
  nr02d0 U181 ( .A1(n166), .A2(n167), .ZN(n38) );
  aor221d1 U182 ( .B1(N88), .B2(n59), .C1(N56), .C2(n60), .A(n168), .Z(n167)
         );
  aor222d1 U183 ( .A1(N120), .A2(n62), .B1(N152), .B2(n63), .C1(N104), .C2(n64), .Z(n168) );
  aor221d1 U184 ( .B1(n65), .B2(n169), .C1(N168), .C2(n67), .A(n170), .Z(n166)
         );
  aor222d1 U185 ( .A1(Oprnd_B[7]), .A2(n171), .B1(n172), .B2(n173), .C1(n226), 
        .C2(n235), .Z(n170) );
  aor221d1 U186 ( .B1(n226), .B2(n73), .C1(n74), .C2(n169), .A(n75), .Z(n172)
         );
  aor22d1 U187 ( .A1(n226), .A2(n76), .B1(n77), .B2(n169), .Z(n171) );
  nr02d0 U188 ( .A1(n174), .A2(n175), .ZN(n39) );
  aor221d1 U189 ( .B1(N87), .B2(n59), .C1(N55), .C2(n60), .A(n176), .Z(n175)
         );
  aor222d1 U190 ( .A1(N119), .A2(n62), .B1(N151), .B2(n63), .C1(N103), .C2(n64), .Z(n176) );
  aor221d1 U191 ( .B1(n65), .B2(n177), .C1(N167), .C2(n67), .A(n178), .Z(n174)
         );
  aor222d1 U192 ( .A1(Oprnd_B[6]), .A2(n179), .B1(n180), .B2(n181), .C1(n225), 
        .C2(n235), .Z(n178) );
  aor221d1 U193 ( .B1(n225), .B2(n73), .C1(n74), .C2(n177), .A(n75), .Z(n180)
         );
  aor22d1 U194 ( .A1(n225), .A2(n76), .B1(n77), .B2(n177), .Z(n179) );
  nr02d0 U195 ( .A1(n182), .A2(n183), .ZN(n40) );
  aor221d1 U196 ( .B1(N86), .B2(n59), .C1(N54), .C2(n60), .A(n184), .Z(n183)
         );
  aor222d1 U197 ( .A1(N118), .A2(n62), .B1(N150), .B2(n63), .C1(N102), .C2(n64), .Z(n184) );
  aor221d1 U198 ( .B1(n65), .B2(n185), .C1(N166), .C2(n67), .A(n186), .Z(n182)
         );
  aor222d1 U199 ( .A1(Oprnd_B[5]), .A2(n187), .B1(n188), .B2(n189), .C1(n224), 
        .C2(n235), .Z(n186) );
  aor221d1 U200 ( .B1(n224), .B2(n73), .C1(n74), .C2(n185), .A(n75), .Z(n188)
         );
  aor22d1 U201 ( .A1(n224), .A2(n76), .B1(n77), .B2(n185), .Z(n187) );
  nr02d0 U202 ( .A1(n190), .A2(n191), .ZN(n41) );
  aor221d1 U203 ( .B1(N85), .B2(n59), .C1(N53), .C2(n60), .A(n192), .Z(n191)
         );
  aor222d1 U204 ( .A1(N117), .A2(n62), .B1(N149), .B2(n63), .C1(N101), .C2(n64), .Z(n192) );
  nr02d0 U205 ( .A1(ALU_OP[4]), .A2(ALU_OP[1]), .ZN(n195) );
  aor221d1 U206 ( .B1(n65), .B2(n201), .C1(N165), .C2(n67), .A(n202), .Z(n190)
         );
  aor222d1 U207 ( .A1(Oprnd_B[4]), .A2(n203), .B1(n204), .B2(n205), .C1(n223), 
        .C2(n235), .Z(n202) );
  aor221d1 U208 ( .B1(ALU_OP[0]), .B2(n75), .C1(n197), .C2(ALU_OP[4]), .A(n206), .Z(n72) );
  nr04d0 U209 ( .A1(ALU_OP[4]), .A2(ALU_OP[3]), .A3(n207), .A4(n208), .ZN(n206) );
  xn02d1 U210 ( .A1(n199), .A2(ALU_OP[0]), .ZN(n208) );
  nr03d0 U211 ( .A1(n199), .A2(ALU_OP[3]), .A3(n198), .ZN(n197) );
  aor221d1 U212 ( .B1(n223), .B2(n73), .C1(n74), .C2(n201), .A(n75), .Z(n204)
         );
  aor22d1 U214 ( .A1(n223), .A2(n76), .B1(n77), .B2(n201), .Z(n203) );
  nr03d0 U216 ( .A1(ALU_OP[2]), .A2(ALU_OP[3]), .A3(n198), .ZN(n194) );
  nr03d0 U217 ( .A1(n193), .A2(ALU_OP[2]), .A3(n200), .ZN(n209) );
  nr03d0 U218 ( .A1(ALU_OP[0]), .A2(ALU_OP[3]), .A3(n199), .ZN(n196) );
  nr02d0 U219 ( .A1(n207), .A2(n193), .ZN(n210) );
  ALU_DW01_dec_0 sub_95 ( .A({n234, n233, n232, n231, n230, n229, n228, n227, 
        n226, n225, n224, n223, n222, n221, n220, n219}), .SUM({N176, N175, 
        N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, 
        N162, N161}) );
  ALU_DW01_sub_0 sub_1_root_sub_92 ( .A({n234, n233, n232, n231, n230, n229, 
        n228, n227, n226, n225, n224, n223, n222, n221, n220, n219}), .B(
        Oprnd_B), .CI(1'b1), .DIFF({N160, N159, N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145}), .CO(
        SYNOPSYS_UNCONNECTED_1) );
  ALU_DW01_sub_1 sub_89 ( .A({n234, n233, n232, n231, n230, n229, n228, n227, 
        n226, n225, n224, n223, n222, n221, n220, n219}), .B(Oprnd_B), .CI(
        1'b0), .DIFF({N128, N127, N126, N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113}), .CO(SYNOPSYS_UNCONNECTED_2) );
  ALU_DW01_inc_0 add_86 ( .A({n234, n233, n232, n231, n230, n229, n228, n227, 
        n226, n225, n224, n223, n222, n221, n220, n219}), .SUM({N112, N111, 
        N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, 
        N98, N97}) );
  ALU_DW01_add_0 add_1_root_add_80_2 ( .A({n234, n233, n232, n231, n230, n229, 
        n228, n227, n226, n225, n224, n223, n222, n221, n220, n219}), .B(
        Oprnd_B), .CI(1'b1), .SUM({N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83, N82, N81}), .CO(SYNOPSYS_UNCONNECTED_3) );
  ALU_DW01_add_1 add_77 ( .A({n234, n233, n232, n231, n230, n229, n228, n227, 
        n226, n225, n224, n223, n222, n221, n220, n219}), .B(Oprnd_B), .CI(
        1'b0), .SUM({N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
        N53, N52, N51, N50, N49}), .CO(SYNOPSYS_UNCONNECTED_4) );
  sdnrq1 Lachd_Result_reg_4_ ( .D(n217), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[4]) );
  sdnrq1 Lachd_Result_reg_3_ ( .D(n215), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[3]) );
  sdnrq1 Lachd_Result_reg_2_ ( .D(n213), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[2]) );
  sdnrq1 Lachd_Result_reg_1_ ( .D(n211), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[1]) );
  sdnrq1 Lachd_Result_reg_0_ ( .D(n33), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[0]) );
  sdnrq1 Lachd_Result_reg_5_ ( .D(n31), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[5]) );
  sdnrq1 Lachd_Result_reg_6_ ( .D(n29), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[6]) );
  sdnrq1 Lachd_Result_reg_7_ ( .D(n27), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[7]) );
  sdnrq1 Lachd_Result_reg_8_ ( .D(n25), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[8]) );
  sdnrq1 Lachd_Result_reg_9_ ( .D(n23), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[9]) );
  sdnrq1 Lachd_Result_reg_10_ ( .D(n21), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[10]) );
  sdnrq1 Lachd_Result_reg_11_ ( .D(n19), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[11]) );
  sdnrq1 Lachd_Result_reg_12_ ( .D(n16), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[12]) );
  sdnrq1 Lachd_Result_reg_13_ ( .D(n14), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[13]) );
  sdnrq1 Lachd_Result_reg_14_ ( .D(n12), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[14]) );
  sdnrq1 Lachd_Result_reg_15_ ( .D(n10), .SD(1'b0), .SC(1'b0), .CP(clk), .Q(
        Lachd_Result[15]) );
  sdcrq1 Neg_Flag_reg ( .D(n8), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(Neg_Flag) );
  sdcrq1 Zro_Flag_reg ( .D(n6), .SD(1'b0), .SC(1'b0), .CP(clk), .CDN(reset_n), 
        .Q(Zro_Flag) );
  inv0d1 U3 ( .I(1'b1), .ZN(Carry_Flag) );
  mx02d0 U6 ( .I0(ALU_Zro), .I1(Zro_Flag), .S(n17), .Z(n6) );
  mx02d0 U11 ( .I0(ALU_Neg), .I1(Neg_Flag), .S(n17), .Z(n8) );
  mx02d0 U13 ( .I0(ALU_Neg), .I1(Lachd_Result[15]), .S(n34), .Z(n10) );
  mx02d0 U15 ( .I0(Result[14]), .I1(Lachd_Result[14]), .S(n34), .Z(n12) );
  mx02d0 U17 ( .I0(Result[13]), .I1(Lachd_Result[13]), .S(n34), .Z(n14) );
  mx02d0 U19 ( .I0(Result[12]), .I1(Lachd_Result[12]), .S(n34), .Z(n16) );
  mx02d0 U21 ( .I0(Result[11]), .I1(Lachd_Result[11]), .S(n34), .Z(n19) );
  mx02d0 U23 ( .I0(Result[10]), .I1(Lachd_Result[10]), .S(n34), .Z(n21) );
  mx02d0 U25 ( .I0(Result[9]), .I1(Lachd_Result[9]), .S(n34), .Z(n23) );
  mx02d0 U27 ( .I0(Result[8]), .I1(Lachd_Result[8]), .S(n34), .Z(n25) );
  mx02d0 U30 ( .I0(Result[7]), .I1(Lachd_Result[7]), .S(n34), .Z(n27) );
  mx02d0 U32 ( .I0(Result[6]), .I1(Lachd_Result[6]), .S(n34), .Z(n29) );
  mx02d0 U34 ( .I0(Result[5]), .I1(Lachd_Result[5]), .S(n34), .Z(n31) );
  mx02d0 U36 ( .I0(Result[0]), .I1(Lachd_Result[0]), .S(n34), .Z(n33) );
  mx02d0 U39 ( .I0(Result[1]), .I1(Lachd_Result[1]), .S(n34), .Z(n211) );
  mx02d0 U41 ( .I0(Result[2]), .I1(Lachd_Result[2]), .S(n34), .Z(n213) );
  mx02d0 U43 ( .I0(Result[3]), .I1(Lachd_Result[3]), .S(n34), .Z(n215) );
  mx02d0 U45 ( .I0(Result[4]), .I1(Lachd_Result[4]), .S(n34), .Z(n217) );
  inv0d1 U46 ( .I(Latch_Flags), .ZN(n17) );
  inv0d1 U48 ( .I(n52), .ZN(ALU_Zro) );
  an02d1 U49 ( .A1(n195), .A2(n196), .Z(n63) );
  an02d1 U50 ( .A1(n195), .A2(n197), .Z(n62) );
  an02d1 U51 ( .A1(n210), .A2(n200), .Z(n77) );
  an02d1 U52 ( .A1(n209), .A2(n207), .Z(n74) );
  nr03d0 U53 ( .A1(n199), .A2(n193), .A3(n200), .ZN(n75) );
  inv0d1 U54 ( .I(n233), .ZN(n145) );
  inv0d1 U55 ( .I(n232), .ZN(n153) );
  inv0d1 U57 ( .I(n230), .ZN(n89) );
  inv0d1 U58 ( .I(n228), .ZN(n66) );
  inv0d1 U59 ( .I(n227), .ZN(n81) );
  inv0d1 U60 ( .I(n226), .ZN(n169) );
  inv0d1 U61 ( .I(n225), .ZN(n177) );
  inv0d1 U62 ( .I(n222), .ZN(n105) );
  inv0d1 U63 ( .I(n221), .ZN(n113) );
  inv0d1 U64 ( .I(n234), .ZN(n137) );
  inv0d1 U65 ( .I(Latch_Result), .ZN(n34) );
  an04d1 U66 ( .A1(n195), .A2(n198), .A3(n199), .A4(n200), .Z(n60) );
  an02d1 U67 ( .A1(n195), .A2(n194), .Z(n59) );
  inv0d1 U68 ( .I(n219), .ZN(n129) );
  inv0d1 U69 ( .I(n231), .ZN(n161) );
  inv0d1 U70 ( .I(n229), .ZN(n97) );
  inv0d1 U71 ( .I(n224), .ZN(n185) );
  inv0d1 U72 ( .I(n223), .ZN(n201) );
  inv0d1 U73 ( .I(n220), .ZN(n121) );
  bufbd1 U74 ( .I(Oprnd_A[0]), .Z(n219) );
  bufbd1 U75 ( .I(Oprnd_A[3]), .Z(n222) );
  bufbd1 U76 ( .I(Oprnd_A[2]), .Z(n221) );
  bufbd1 U77 ( .I(Oprnd_A[1]), .Z(n220) );
  bufbd1 U78 ( .I(Oprnd_A[7]), .Z(n226) );
  bufbd1 U79 ( .I(Oprnd_A[6]), .Z(n225) );
  bufbd1 U213 ( .I(Oprnd_A[5]), .Z(n224) );
  bufbd1 U215 ( .I(Oprnd_A[4]), .Z(n223) );
  bufbd1 U220 ( .I(Oprnd_A[11]), .Z(n230) );
  bufbd1 U221 ( .I(Oprnd_A[10]), .Z(n229) );
  bufbd1 U222 ( .I(Oprnd_A[9]), .Z(n228) );
  bufbd1 U223 ( .I(Oprnd_A[8]), .Z(n227) );
  aor22d1 U224 ( .A1(ALU_OP[0]), .A2(n209), .B1(n194), .B2(ALU_OP[4]), .Z(n76)
         );
  an03d1 U225 ( .A1(ALU_OP[1]), .A2(n193), .A3(n194), .Z(n64) );
  an02d1 U226 ( .A1(n196), .A2(ALU_OP[4]), .Z(n73) );
  inv0d1 U227 ( .I(ALU_OP[4]), .ZN(n193) );
  inv0d1 U228 ( .I(ALU_OP[2]), .ZN(n199) );
  inv0d1 U229 ( .I(Oprnd_B[4]), .ZN(n205) );
  inv0d1 U230 ( .I(Oprnd_B[3]), .ZN(n109) );
  inv0d1 U231 ( .I(Oprnd_B[2]), .ZN(n117) );
  inv0d1 U232 ( .I(Oprnd_B[1]), .ZN(n125) );
  inv0d1 U233 ( .I(Oprnd_B[0]), .ZN(n133) );
  bufbd1 U234 ( .I(Oprnd_A[14]), .Z(n233) );
  bufbd1 U235 ( .I(Oprnd_A[13]), .Z(n232) );
  bufbd1 U236 ( .I(Oprnd_A[12]), .Z(n231) );
  bufbd1 U237 ( .I(n72), .Z(n235) );
  inv0d1 U238 ( .I(ALU_OP[3]), .ZN(n200) );
  bufbd1 U239 ( .I(Oprnd_A[15]), .Z(n234) );
  inv0d1 U240 ( .I(ALU_OP[0]), .ZN(n198) );
  inv0d1 U241 ( .I(ALU_OP[1]), .ZN(n207) );
  an03d1 U242 ( .A1(n196), .A2(n193), .A3(ALU_OP[1]), .Z(n67) );
  an02d1 U243 ( .A1(n210), .A2(ALU_OP[3]), .Z(n65) );
  inv0d1 U244 ( .I(Oprnd_B[15]), .ZN(n141) );
  inv0d1 U245 ( .I(Oprnd_B[14]), .ZN(n149) );
  inv0d1 U246 ( .I(Oprnd_B[13]), .ZN(n157) );
  inv0d1 U247 ( .I(Oprnd_B[12]), .ZN(n165) );
  inv0d1 U248 ( .I(Oprnd_B[11]), .ZN(n93) );
  inv0d1 U249 ( .I(Oprnd_B[10]), .ZN(n101) );
  inv0d1 U250 ( .I(Oprnd_B[9]), .ZN(n71) );
  inv0d1 U251 ( .I(Oprnd_B[8]), .ZN(n85) );
  inv0d1 U252 ( .I(Oprnd_B[7]), .ZN(n173) );
  inv0d1 U253 ( .I(Oprnd_B[6]), .ZN(n181) );
  inv0d1 U254 ( .I(Oprnd_B[5]), .ZN(n189) );
  bufbd1 U255 ( .I(ALU_OP[5]), .Z(n218) );
endmodule


module RISC_CORE ( clk, reset_n, Instrn, Xecutng_Instrn, EndOfInstrn, PSW, 
        Rd_Instr, RESULT_DATA, OUT_VALID, STACK_FULL );
  input [31:0] Instrn;
  output [31:0] Xecutng_Instrn;
  output [10:0] PSW;
  output [15:0] RESULT_DATA;
  input clk, reset_n;
  output EndOfInstrn, Rd_Instr, OUT_VALID, STACK_FULL;
  wire   PushDataIn_11, Latch_Result, Latch_Flags, ALU_Neg, Rd_Oprnd_A,
         Rd_Oprnd_B, Write_RegC, UseData_Imm_Or_RegB, UseData_Imm_Or_ALU,
         Reset_AluRegs, PushEnbl, PopEnbl, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] Return_Addr;
  wire   [10:8] PopDataOut;
  wire   [15:0] Oprnd_A;
  wire   [15:0] Oprnd_B;
  wire   [15:0] Op_Result;
  wire   [31:0] Crnt_Instrn_2;
  wire   [2:0] Current_State;
  wire   [15:0] RegPort_B;
  wire   [6:0] Addr_A;
  wire   [15:0] RegPort_C;

  ALU I_ALU ( .reset_n(reset_n), .clk(clk), .Oprnd_A(Oprnd_A), .Oprnd_B(
        Oprnd_B), .ALU_OP(Xecutng_Instrn[29:24]), .Latch_Result(Latch_Result), 
        .Latch_Flags(Latch_Flags), .Lachd_Result(Op_Result), .Zro_Flag(
        PushDataIn_11), .Neg_Flag(ALU_Neg), .Carry_Flag(SYNOPSYS_UNCONNECTED_1) );
  CONTROL I_CONTROL ( .clk(clk), .reset_n(reset_n), .Crnt_Instrn(Crnt_Instrn_2), .Current_State(Current_State), .Neg_Flag(PSW[1]), .Carry_Flag(PSW[0]), 
        .Zro_Flag(PSW[2]), .Latch_Instr(Rd_Instr), .Rd_Oprnd_A(Rd_Oprnd_A), 
        .Rd_Oprnd_B(Rd_Oprnd_B), .Latch_Flags(Latch_Flags), .Latch_Result(
        Latch_Result), .Write_RegC(Write_RegC), .UseData_Imm_Or_RegB(
        UseData_Imm_Or_RegB), .UseData_Imm_Or_ALU(UseData_Imm_Or_ALU), 
        .Reset_AluRegs(Reset_AluRegs), .EndOfInstrn(EndOfInstrn), .PushEnbl(
        PushEnbl), .PopEnbl(PopEnbl), .OUT_VALID(OUT_VALID) );
  DATA_PATH I_DATA_PATH ( .clk(clk), .reset_n(reset_n), .Reset_AluRegs(
        Reset_AluRegs), .Rd_Oprnd_A(Rd_Oprnd_A), .Rd_Oprnd_B(Rd_Oprnd_B), 
        .UseData_Imm_Or_RegB(UseData_Imm_Or_RegB), .UseData_Imm_Or_ALU(
        UseData_Imm_Or_ALU), .Latch_Flags(Latch_Flags), .ALU_Zro(PushDataIn_11), .ALU_Neg(ALU_Neg), .ALU_Carry(1'b0), .PSW_Zro(PopDataOut[10]), .PSW_Neg(
        PopDataOut[9]), .PSW_Carry(PopDataOut[8]), .Crnt_Instrn(Crnt_Instrn_2), 
        .RegPort_A(RESULT_DATA), .RegPort_B(RegPort_B), .Op_Result(Op_Result), 
        .Zro_Flag(PSW[2]), .Neg_Flag(PSW[1]), .Carry_Flag(PSW[0]), .Addr_A(
        Addr_A), .Oprnd_A(Oprnd_A), .Oprnd_B(Oprnd_B), .RegPort_C(RegPort_C)
         );
  INSTRN_LAT I_INSTRN_LAT ( .clk(clk), .Instrn(Instrn), .Latch_Instr(Rd_Instr), 
        .Crnt_Instrn_1(Xecutng_Instrn), .Crnt_Instrn_2(Crnt_Instrn_2) );
  PRGRM_CNT_TOP I_PRGRM_CNT_TOP ( .clk(clk), .reset_n(reset_n), .Crnt_Instrn(
        Crnt_Instrn_2), .Zro_Flag(PSW[2]), .Carry_Flag(PSW[0]), .Neg_Flag(
        PSW[1]), .Return_Addr(Return_Addr), .Current_State(Current_State), 
        .PC(PSW[10:3]) );
  REG_FILE I_REG_FILE ( .reset_n(reset_n), .clk(clk), .Addr_A(Addr_A), 
        .Addr_B(Xecutng_Instrn[6:0]), .Addr_C(Xecutng_Instrn[22:16]), 
        .RegPort_C(RegPort_C), .Write_RegC(Write_RegC), .RegPort_A(RESULT_DATA), .RegPort_B(RegPort_B) );
  STACK_TOP I_STACK_TOP ( .reset_n(reset_n), .clk(clk), .PushEnbl(PushEnbl), 
        .PopEnbl(PopEnbl), .PushDataIn({PushDataIn_11, PSW[2:0], PSW[10:3]}), 
        .PopDataOut({SYNOPSYS_UNCONNECTED_2, PopDataOut, Return_Addr}), 
        .STACK_FULL(STACK_FULL) );
endmodule


module RISC_CHIP ( clk, Test_Regfile_Clk, scan_en, Test_Mode, reset_n, Instrn, 
        Xecutng_Instrn, EndOfInstrn, PSW, Rd_Instr, RESULT_DATA, OUT_VALID, 
        STACK_FULL );
  input [3:0] Instrn;
  output [3:0] Xecutng_Instrn;
  output [10:0] PSW;
  output [3:0] RESULT_DATA;
  input clk, Test_Regfile_Clk, scan_en, Test_Mode, reset_n;
  output EndOfInstrn, Rd_Instr, OUT_VALID, STACK_FULL;
  wire   net_clk, net_reset_n, net_EndOfInstrn, net_Rd_Instr, net_OUT_VALID,
         net_STACK_FULL, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [3:0] net_Xecutng_Instrn_reduced;
  wire   [10:0] net_PSW;
  wire   [3:0] net_RESULT_DATA_reduced;
  wire   [31:28] net_Instrn;
  wire   [31:0] net_Xecutng_Instrn;
  wire   [15:0] net_RESULT_DATA;

  pc3d01 clk_iopad ( .PAD(clk), .CIN(net_clk) );
  pc3d01 Test_Regfile_Clk_iopad ( .PAD(Test_Regfile_Clk) );
  pc3d01 Test_Mode_iopad ( .PAD(Test_Mode) );
  pc3d01 scan_en_iopad ( .PAD(scan_en) );
  pc3d01 reset_n_iopad ( .PAD(reset_n), .CIN(net_reset_n) );
  pc3d01 Instrn_iopad_3 ( .PAD(Instrn[3]), .CIN(net_Instrn[31]) );
  pc3d01 Instrn_iopad_2 ( .PAD(Instrn[2]), .CIN(net_Instrn[30]) );
  pc3d01 Instrn_iopad_1 ( .PAD(Instrn[1]), .CIN(net_Instrn[29]) );
  pc3d01 Instrn_iopad_0 ( .PAD(Instrn[0]), .CIN(net_Instrn[28]) );
  pc3o05 Xecutng_Instrn_iopad_3 ( .I(net_Xecutng_Instrn_reduced[3]), .PAD(
        Xecutng_Instrn[3]) );
  pc3o05 Xecutng_Instrn_iopad_2 ( .I(net_Xecutng_Instrn_reduced[2]), .PAD(
        Xecutng_Instrn[2]) );
  pc3o05 Xecutng_Instrn_iopad_1 ( .I(net_Xecutng_Instrn_reduced[1]), .PAD(
        Xecutng_Instrn[1]) );
  pc3o05 Xecutng_Instrn_iopad_0 ( .I(net_Xecutng_Instrn_reduced[0]), .PAD(
        Xecutng_Instrn[0]) );
  pc3o05 PSW_iopad_10 ( .I(net_PSW[10]), .PAD(PSW[10]) );
  pc3o05 PSW_iopad_9 ( .I(net_PSW[9]), .PAD(PSW[9]) );
  pc3o05 PSW_iopad_8 ( .I(net_PSW[8]), .PAD(PSW[8]) );
  pc3o05 PSW_iopad_7 ( .I(net_PSW[7]), .PAD(PSW[7]) );
  pc3o05 PSW_iopad_6 ( .I(net_PSW[6]), .PAD(PSW[6]) );
  pc3o05 PSW_iopad_5 ( .I(net_PSW[5]), .PAD(PSW[5]) );
  pc3o05 PSW_iopad_4 ( .I(net_PSW[4]), .PAD(PSW[4]) );
  pc3o05 PSW_iopad_3 ( .I(net_PSW[3]), .PAD(PSW[3]) );
  pc3o05 PSW_iopad_2 ( .I(net_PSW[2]), .PAD(PSW[2]) );
  pc3o05 PSW_iopad_1 ( .I(net_PSW[1]), .PAD(PSW[1]) );
  pc3o05 PSW_iopad_0 ( .I(net_PSW[0]), .PAD(PSW[0]) );
  pc3o05 RESULT_DATA_iopad_3 ( .I(net_RESULT_DATA_reduced[3]), .PAD(
        RESULT_DATA[3]) );
  pc3o05 RESULT_DATA_iopad_2 ( .I(net_RESULT_DATA_reduced[2]), .PAD(
        RESULT_DATA[2]) );
  pc3o05 RESULT_DATA_iopad_1 ( .I(net_RESULT_DATA_reduced[1]), .PAD(
        RESULT_DATA[1]) );
  pc3o05 RESULT_DATA_iopad_0 ( .I(net_RESULT_DATA_reduced[0]), .PAD(
        RESULT_DATA[0]) );
  pc3o05 EndOfInstrn_iopad ( .I(net_EndOfInstrn), .PAD(EndOfInstrn) );
  pc3o05 Rd_Instr_iopad ( .I(net_Rd_Instr), .PAD(Rd_Instr) );
  pc3o05 OUT_VALID_iopad ( .I(net_OUT_VALID), .PAD(OUT_VALID) );
  pc3o05 STACK_FULL_iopad ( .I(net_STACK_FULL), .PAD(STACK_FULL) );
  xr03d2 U12 ( .A1(n20), .A2(n21), .A3(n22), .Z(net_RESULT_DATA_reduced[0]) );
  xr02d1 U17 ( .A1(n1), .A2(n2), .Z(net_Xecutng_Instrn_reduced[3]) );
  xr02d1 U18 ( .A1(net_Xecutng_Instrn[27]), .A2(net_Xecutng_Instrn[26]), .Z(n3) );
  xr02d1 U19 ( .A1(net_Xecutng_Instrn[31]), .A2(net_Xecutng_Instrn[30]), .Z(n4) );
  xr02d1 U20 ( .A1(n5), .A2(n6), .Z(net_Xecutng_Instrn_reduced[2]) );
  xr02d1 U21 ( .A1(net_Xecutng_Instrn[19]), .A2(net_Xecutng_Instrn[18]), .Z(n7) );
  xr02d1 U22 ( .A1(net_Xecutng_Instrn[23]), .A2(net_Xecutng_Instrn[22]), .Z(n8) );
  xr02d1 U23 ( .A1(n9), .A2(n10), .Z(net_Xecutng_Instrn_reduced[1]) );
  xr02d1 U24 ( .A1(net_Xecutng_Instrn[13]), .A2(net_Xecutng_Instrn[12]), .Z(
        n11) );
  xr02d1 U25 ( .A1(net_Xecutng_Instrn[9]), .A2(net_Xecutng_Instrn[8]), .Z(n12)
         );
  xr02d1 U26 ( .A1(n13), .A2(n14), .Z(net_Xecutng_Instrn_reduced[0]) );
  xr02d1 U27 ( .A1(net_Xecutng_Instrn[3]), .A2(net_Xecutng_Instrn[2]), .Z(n15)
         );
  xr02d1 U28 ( .A1(net_Xecutng_Instrn[7]), .A2(net_Xecutng_Instrn[6]), .Z(n16)
         );
  xr02d1 U29 ( .A1(net_RESULT_DATA[15]), .A2(net_RESULT_DATA[14]), .Z(n17) );
  xr02d1 U30 ( .A1(net_RESULT_DATA[9]), .A2(net_RESULT_DATA[8]), .Z(n18) );
  xr02d1 U31 ( .A1(net_RESULT_DATA[7]), .A2(net_RESULT_DATA[6]), .Z(n19) );
  xr02d1 U32 ( .A1(n23), .A2(n24), .Z(n21) );
  RISC_CORE I_RISC_CORE ( .clk(net_clk), .reset_n(net_reset_n), .Instrn({
        net_Instrn, net_Instrn, net_Instrn, net_Instrn, net_Instrn, net_Instrn, 
        net_Instrn, net_Instrn}), .Xecutng_Instrn(net_Xecutng_Instrn), 
        .EndOfInstrn(net_EndOfInstrn), .PSW(net_PSW), .Rd_Instr(net_Rd_Instr), 
        .RESULT_DATA(net_RESULT_DATA), .OUT_VALID(net_OUT_VALID), .STACK_FULL(
        net_STACK_FULL) );
  nd02d1 U33 ( .A1(net_RESULT_DATA[2]), .A2(net_Xecutng_Instrn[2]), .ZN(n20)
         );
  nd02d1 U34 ( .A1(net_RESULT_DATA[3]), .A2(net_Xecutng_Instrn[3]), .ZN(n22)
         );
  xr03d1 U35 ( .A1(net_RESULT_DATA[5]), .A2(net_RESULT_DATA[4]), .A3(n19), .Z(
        net_RESULT_DATA_reduced[1]) );
  xr03d1 U36 ( .A1(net_RESULT_DATA[11]), .A2(net_RESULT_DATA[10]), .A3(n18), 
        .Z(net_RESULT_DATA_reduced[2]) );
  xr03d1 U37 ( .A1(net_RESULT_DATA[13]), .A2(net_RESULT_DATA[12]), .A3(n17), 
        .Z(net_RESULT_DATA_reduced[3]) );
  nd02d1 U38 ( .A1(net_RESULT_DATA[0]), .A2(net_Xecutng_Instrn[0]), .ZN(n23)
         );
  nd02d1 U39 ( .A1(net_RESULT_DATA[1]), .A2(net_Xecutng_Instrn[1]), .ZN(n24)
         );
  xr03d1 U40 ( .A1(net_Xecutng_Instrn[5]), .A2(net_Xecutng_Instrn[4]), .A3(n16), .Z(n13) );
  xr03d1 U41 ( .A1(net_Xecutng_Instrn[1]), .A2(n15), .A3(net_Xecutng_Instrn[0]), .Z(n14) );
  xr03d1 U42 ( .A1(net_Xecutng_Instrn[21]), .A2(net_Xecutng_Instrn[20]), .A3(
        n8), .Z(n5) );
  xr03d1 U43 ( .A1(net_Xecutng_Instrn[17]), .A2(net_Xecutng_Instrn[16]), .A3(
        n7), .Z(n6) );
  xr03d1 U44 ( .A1(net_Xecutng_Instrn[29]), .A2(net_Xecutng_Instrn[28]), .A3(
        n4), .Z(n1) );
  xr03d1 U45 ( .A1(net_Xecutng_Instrn[25]), .A2(net_Xecutng_Instrn[24]), .A3(
        n3), .Z(n2) );
  xr03d1 U46 ( .A1(net_Xecutng_Instrn[15]), .A2(net_Xecutng_Instrn[14]), .A3(
        n12), .Z(n9) );
  xr03d1 U47 ( .A1(net_Xecutng_Instrn[11]), .A2(net_Xecutng_Instrn[10]), .A3(
        n11), .Z(n10) );
endmodule

