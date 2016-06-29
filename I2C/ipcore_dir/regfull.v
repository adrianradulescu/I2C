////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: regfull.v
// /___/   /\     Timestamp: Wed Jun 29 14:38:50 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/student/I2C/ipcore_dir/tmp/_cg/regfull.ngc /home/student/I2C/ipcore_dir/tmp/_cg/regfull.v 
// Device	: 3s500efg320-5
// Input file	: /home/student/I2C/ipcore_dir/tmp/_cg/regfull.ngc
// Output file	: /home/student/I2C/ipcore_dir/tmp/_cg/regfull.v
// # of Modules	: 1
// Design Name	: regfull
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module regfull (
  clk, ce, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output [3 : 0] q;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig00000009 ;
  wire \blk00000001/sig00000008 ;
  wire \blk00000001/sig00000007 ;
  wire \blk00000001/sig00000006 ;
  wire \blk00000001/sig00000005 ;
  wire \blk00000001/sig00000004 ;
  wire \blk00000001/sig00000003 ;
  wire [3 : 0] NlwRenamedSig_OI_q;
  assign
    q[3] = NlwRenamedSig_OI_q[3],
    q[2] = NlwRenamedSig_OI_q[2],
    q[1] = NlwRenamedSig_OI_q[1],
    q[0] = NlwRenamedSig_OI_q[0];
  INV   \blk00000001/blk00000013  (
    .I(NlwRenamedSig_OI_q[0]),
    .O(\blk00000001/sig00000009 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000012  (
    .I0(NlwRenamedSig_OI_q[3]),
    .O(\blk00000001/sig00000010 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000011  (
    .I0(NlwRenamedSig_OI_q[2]),
    .O(\blk00000001/sig0000000f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000010  (
    .I0(NlwRenamedSig_OI_q[1]),
    .O(\blk00000001/sig0000000e )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000001/blk0000000f  (
    .I0(ce),
    .I1(NlwRenamedSig_OI_q[1]),
    .I2(NlwRenamedSig_OI_q[0]),
    .I3(NlwRenamedSig_OI_q[3]),
    .O(\blk00000001/sig00000005 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000014 ),
    .R(\blk00000001/sig00000005 ),
    .Q(NlwRenamedSig_OI_q[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000013 ),
    .R(\blk00000001/sig00000005 ),
    .Q(NlwRenamedSig_OI_q[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000012 ),
    .R(\blk00000001/sig00000005 ),
    .Q(NlwRenamedSig_OI_q[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000011 ),
    .R(\blk00000001/sig00000005 ),
    .Q(NlwRenamedSig_OI_q[0])
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000007 ),
    .LI(\blk00000001/sig0000000f ),
    .O(\blk00000001/sig00000013 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000007 ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000000f ),
    .O(\blk00000001/sig00000008 )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000006 ),
    .LI(\blk00000001/sig0000000e ),
    .O(\blk00000001/sig00000012 )
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000006 ),
    .DI(\blk00000001/sig00000003 ),
    .S(\blk00000001/sig0000000e ),
    .O(\blk00000001/sig00000007 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000008 ),
    .LI(\blk00000001/sig00000010 ),
    .O(\blk00000001/sig00000014 )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000003 ),
    .LI(\blk00000001/sig00000009 ),
    .O(\blk00000001/sig00000011 )
  );
  MUXCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000003 ),
    .DI(\blk00000001/sig00000004 ),
    .S(\blk00000001/sig00000009 ),
    .O(\blk00000001/sig00000006 )
  );
  VCC   \blk00000001/blk00000003  (
    .P(\blk00000001/sig00000004 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000003 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
