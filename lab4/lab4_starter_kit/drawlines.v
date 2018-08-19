/* drawlines.v
 *
 * Top level entity for the drawlines circuits.
 * Inputs:
 * - SW[7:0] - a value for Y coordinate. Should be between 0 and 239.
 * - SW[16:8] - a value for X coordinate. Should be between 0 and 319.
 * - SW[17] - toggle high to signal that the new point is now ready.
 * - KEY[0] - asynchronous reset. Press the button to reset the system.
 * Outputs:
 * - lines display on a monitor
 * - LEDG[8] is lit up when new point can be entered.
 */
module adder(a,b, out);

input[8:0] a, b;
output[8:0] out;

assign out=a+b;

endmodule

module drawlines(
			SW,
			CLOCK_50,
			LEDG,
			KEY,
			VGA_R,
			VGA_G,
			VGA_B,
			VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK);
			
	input [17:0] SW;
	input [3:0] KEY;
	input CLOCK_50;
	output [8:0] LEDG;
	output [9:0] VGA_R;
	output [9:0] VGA_G;
	output [9:0] VGA_B;
	output	VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK;		

	/* Local wires to connect modules together */
	wire line_done, line_go, store_new_origin, ready;
	wire [2:0] colour;
	wire resetN, go;
	wire [8:0] to_VGA_x;
	wire [7:0] to_VGA_y;
	wire to_VGA_plot;
	wire [8:0] new_X;
	wire [7:0] new_Y;
	assign new_X = SW[16:8];
	assign new_Y = SW[7:0];
	assign go = SW[17];
	assign colour = 3'b111;
	assign resetN = KEY[0];
	
	vga_adapter VGA(
				.resetn(resetN),
				.clock(CLOCK_50),
				.colour(colour),
				.x(to_VGA_x),
				.y(to_VGA_y),
				.plot(to_VGA_plot),
				.VGA_R(VGA_R),
				.VGA_G(VGA_G),
				.VGA_B(VGA_B),
				.VGA_HS(VGA_HS),
				.VGA_VS(VGA_VS),
				.VGA_BLANK(VGA_BLANK),
				.VGA_SYNC(VGA_SYNC),
				.VGA_CLK(VGA_CLK));
				
			defparam VGA.RESOLUTION = "320x240";				
			defparam VGA.MONOCHROME = "FALSE";
			defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;	
			defparam VGA.BACKGROUND_IMAGE = "background.mif";		

	wire start, steep, plot_signal;
	wire signed[8:0] outx0, outy0, outx1, outy1, drawx, drawy;
	/* Line algorithm FSM */
	LDA LD(steep, start, CLOCK_50, outx0, outy0, outx1, outy1, plot_signal, drawx, drawy);
	/* User interface */	
	user_interface UI(new_X, new_Y, go, CLOCK_50, outx0, outy0, outx1, outy1, start, steep);
	/* Circuit outputs. */
	assign to_VGA_plot=plot_signal;
	assign to_VGA_x=drawx;
	assign to_VGA_y=drawy[7:0];
endmodule
		