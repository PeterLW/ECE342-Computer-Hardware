module lab5_top_module(
			CLOCK_50,
			LEDG,
			LEDR,
			KEY,
			VGA_R,
			VGA_G,
			VGA_B,
			VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK);

	input [3:0] KEY;
	input CLOCK_50;
	output [7:0] LEDG;
	output [17:0] LEDR;
	output [9:0] VGA_R;
	output [9:0] VGA_G;
	output [9:0] VGA_B;
	output	VGA_HS,
			   VGA_VS,
			   VGA_BLANK,
			   VGA_SYNC,
			   VGA_CLK;	
			
   nios_system drawline_system(
                     // global signals:
                      .clk_0(CLOCK_50),
                      .reset_n(KEY[0]),

                     // the_drawlines_slave
                      .LEDG_from_the_drawlines_slave(LEDG),
                      .VGA_BLANK_from_the_drawlines_slave(VGA_BLANK),
                      .VGA_B_from_the_drawlines_slave(VGA_B),
                      .VGA_CLK_from_the_drawlines_slave(VGA_CLK),
                      .VGA_G_from_the_drawlines_slave(VGA_G),
                      .VGA_HS_from_the_drawlines_slave(VGA_HS),
                      .VGA_R_from_the_drawlines_slave(VGA_R),
                      .VGA_SYNC_from_the_drawlines_slave(VGA_SYNC),
                      .VGA_VS_from_the_drawlines_slave(VGA_VS)
                   );

endmodule
