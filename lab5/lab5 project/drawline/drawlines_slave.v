// drawlines_slave.v

// This file was auto-generated as part of a generation operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module drawlines_slave (
		input  wire        chipselect,  //            s1.chipselect
		input  wire [2:0]  address,     //              .address
		input  wire        read,        //              .read
		input  wire        write,       //              .write
		input  wire [31:0] writedata,   //              .writedata
		output wire [31:0] readdata,    //              .readdata
		output wire        waitrequest, //              .waitrequest
		output wire [9:0]  VGA_R,       // conduit_end_0.export
		output wire [9:0]  VGA_B,       //              .export
		output wire        VGA_HS,      //              .export
		output wire [9:0]  VGA_G,       //              .export
		output wire        VGA_VS,      //              .export
		output wire        VGA_BLANK,   //              .export
		output wire        VGA_SYNC,    //              .export
		output wire        VGA_CLK,     //              .export
		output wire [8:0]  LEDG,        //              .export
		input  wire        clk,         //         clock.clk
		input  wire        reset        //         reset.reset
	);

	drawlines drawlines_slave (
		.chipselect  (chipselect),  //            s1.chipselect
		.address     (address),     //              .address
		.read        (read),        //              .read
		.write       (write),       //              .write
		.writedata   (writedata),   //              .writedata
		.readdata    (readdata),    //              .readdata
		.waitrequest (waitrequest), //              .waitrequest
		.VGA_R       (VGA_R),       // conduit_end_0.export
		.VGA_B       (VGA_B),       //              .export
		.VGA_HS      (VGA_HS),      //              .export
		.VGA_G       (VGA_G),       //              .export
		.VGA_VS      (VGA_VS),      //              .export
		.VGA_BLANK   (VGA_BLANK),   //              .export
		.VGA_SYNC    (VGA_SYNC),    //              .export
		.VGA_CLK     (VGA_CLK),     //              .export
		.LEDG        (LEDG),        //              .export
		.clk         (clk),         //         clock.clk
		.reset       (reset)        //         reset.reset
	);

endmodule
