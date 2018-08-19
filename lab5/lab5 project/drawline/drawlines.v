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

module drawlines(
			clk,
			reset,
			chipselect,
			address,
			read,
			write,
			writedata,
			readdata,
			waitrequest,
			LEDG,
			VGA_R,
			VGA_G,
			VGA_B,
			VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK
			);
			
	input clk, reset, chipselect, read, write;
	input [2:0] address;
	input [31:0] writedata;
	
	
	output waitrequest;
	output [31:0] readdata;
	
	output [8:0] LEDG;
	output [9:0] VGA_R;
	output [9:0] VGA_G;
	output [9:0] VGA_B;
	output VGA_HS, VGA_VS, VGA_BLANK, VGA_SYNC, VGA_CLK;
	
	//registers
   wire mode_register;
   wire status_register;
   wire go_register;
   wire [16:0] line_starting_point, line_end_point;
   wire [2:0] line_colour;
	
	/* VGA wires */
	wire [2:0] colour_out, colour_in;
	wire [8:0] to_VGA_x;
	wire [7:0] to_VGA_y;
	wire to_VGA_plot;

	
	
   /* VGA Adapter */
	vga_adapter VGA(
				.resetn(reset),
				.clock(clk),
				.colour(colour_out),
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
	
   wire done_plot; 
	wire R0, L0, LN, start, LST,LSC,LI,LE,reset_xy,Sel_y,Ey,Ex,
	     Sel_p,steep,x_gt,loop, y_step,error, Sxy, error_en, colour_en;
	wire [1:0] SER;
   wire [7:0] y0,y1;
	wire [8:0] x0,x1;

	/* Line algorithm FSM */
		 
	LDA LDA_FSMD(.clk(clk), .reset(reset), .start(start), .plot(to_VGA_plot), .LST(LST), .LSC(LSC), .Sxy(Sxy)
	             ,.LI(LI), .LE(LE), .reset_xy(reset_xy), .SER(SER),.Ey(Ey),.Ex(Ex), .Sel_p(Sel_p)
					 ,.steep(steep), .x_gt(x_gt), .loop(loop), .y_step(y_step), .error(error), .Sel_y(Sel_y), .done(done_plot)
					 ,.error_en(error_en), .colour_en(colour_en));	 
		 
	LDA_datapath LDA_element(.clk(clk),.LST(LST),.LSC(LSC),.LI(LI),.LE(LE),.reset_xy(reset_xy),.Ex(Ex),.Ey(Ey),.Sel_p(Sel_p)
	                         ,.y_step(y_step),.Sel_y(Sel_y),.Sxy(Sxy),.SER(SER),.oldx0(x0),.oldy0(y0),.oldx1(x1),.oldy1(y1)
					             ,.steep(steep), .x_gt(x_gt), .loop(loop), .plot_x(to_VGA_x), .plot_y(to_VGA_y), .error_sel(error)
									 ,.error_en(error_en), .colour_en(colour_en), .colour_in(colour_in), .colour_out(colour_out));
									 
	/* ASC */
	
	ASC ACC_controller(.clk(clk), .reset(reset), .chipselect(chipselect), .address(address), .read(read), .write(write), 
	                   .writedata(writedata), .readdata(readdata), .waitrequest(waitrequest), .go(start), .done_plot(done_plot), 
							 .x0(x0), .y0(y0), .x1(x1), .y1(y1), .colour(colour_in), .mode_register(mode_register), 
							 .status_register(status_register), .go_register(go_register),.line_starting_point(line_starting_point), 
							 .line_end_point(line_end_point), .line_colour(line_colour));
	

endmodule
