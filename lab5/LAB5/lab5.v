module lab5(
			address,
			chipselect,
			waitrequest,
			read,
			write,
			readdata,
			writedata,
			CLOCK_50,
			Reset,
			VGA_R,
			VGA_G,
			VGA_B,
			VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK,
	);

	input [2:0] address;
	input chipselect;
	input read,write;
	input [31:0]writedata;
	output [31:0]readdata;
	input CLOCK_50;
	input Reset;
	output waitrequest;
	output [9:0] VGA_R;
	output [9:0] VGA_G;
	output [9:0] VGA_B;
	output	VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK;	
		
	wire [8:0] X0,X1;
	wire [7:0] Y0,Y1;
	wire done;
	wire Go;
	wire [2:0] Color;
	
	
	
 ASC drawline_controller(
			address,
			chipselect,
			Color,
			waitrequest,
			read,
			write,
			readdata,
			writedata,
			CLOCK_50,
			Reset,
			done,
			Go,
			X0,
			Y0,
			X1,
			Y1);
	
			
	LDA_CIRCUIT LDA_cir(
			X0,
			Y0,
			X1,
			Y1,
			Go,
			done,
			Color,
			CLOCK_50,
			VGA_R,
			VGA_G,
			VGA_B,
			VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK); 
			
	endmodule
			
	
