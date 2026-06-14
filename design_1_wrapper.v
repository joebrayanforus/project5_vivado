//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Jun  8 14:42:08 2026
//Host        : DIS-Lab-003 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btn,
    seg_an,
    seg_cat,
    sw,
    sw1);
  input btn;
  output [3:0]seg_an;
  output [7:0]seg_cat;
  input [3:0]sw;
  input [3:0]sw1;

  wire btn;
  wire [3:0]seg_an;
  wire [7:0]seg_cat;
  wire [3:0]sw;
  wire [3:0]sw1;

  design_1 design_1_i
       (.btn(btn),
        .seg_an(seg_an),
        .seg_cat(seg_cat),
        .sw(sw),
        .sw1(sw1));
endmodule
