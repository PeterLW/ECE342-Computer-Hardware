module LDA_CIRCUIT(
			X0,
			Y0,
			X1,
			Y1,
			GO, //input from ASC to initiate drawing.  
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
			VGA_CLK,
);
			
	
	input CLOCK_50;
	input [8:0] X1,X0;
	input [7:0] Y1,Y0;
	input GO;
	input [2:0] Color;
	output done;
	output [9:0] VGA_R;
	output [9:0] VGA_G;
	output [9:0] VGA_B;
	output	VGA_HS,
			VGA_VS,
			VGA_BLANK,
			VGA_SYNC,
			VGA_CLK;		

	
	wire [8:0] to_VGA_x;
	wire [7:0] to_VGA_y;
	wire to_VGA_plot;
	
	
	vga_adapter VGA(
				.resetn(0),
				.clock(CLOCK_50),
				.colour(Colour),
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


	/* Line algorithm FSM */

	parameter [3:0] s0 = 4'b0000,
					 s1 = 4'b0001,
					 s2 = 4'b0010,
					 s3 = 4'b0011,
					 s4 = 4'b0100,
					 s5 = 4'b0101,
					 s6 = 4'b0110,
					 s7 = 4'b0111,
					 s8 = 4'b1000,
					 s9 = 4'b1001,
					 s10 = 4'b1010,
					 s11 = 4'b1011,
					 s12 = 4'b1100;
					
					

	reg [3:0] ns,ps;
	initial ps = s12;
	reg steep;
	reg signed [7:0] ystep; //wire can not be used in always block.
	initial ystep = 0;
	reg signed [8:0] deltax;
	reg [8:0] deltay; 
	reg signed [8:0] error;
	reg [8:0] x0;
   reg [7:0] y0;
	reg [8:0] x;//used as an iterator in for loop.
	reg [7:0] y;	
	reg [8:0] x1;
	reg [7:0] y1;
	reg [8:0]plot_x;
	reg [7:0]plot_y;
	
	initial x0 = 9'b000000000;
	initial y0 = 8'b00000000;
	initial x1 = 9'b000000000;
	initial y1 = 8'b00000000;
	initial x = 9'b000000000;
	initial y = 8'b00000000;
	reg [3:0] counter;
	
	
	wire steep_enable;
	wire ystep_enable;
	wire dx_enable;
	wire dy_enable;
	wire swap_1;
	wire swap_2;
	wire error_init;
	wire x_init;
	wire y_init;
	wire x_incr;
	wire y_incr;
	wire xy_init;
	wire error_incr_dy;
	wire error_decr_dx;
	reg swaped;
	reg swaped_2;
	wire plot_enable;
	reg comp;
	
	
	
	/* Circuit outputs: Control bits. */

	//so:
	assign xy_init = (ps == s0);
	//s1:
	assign steep_enable = (ps == s1);
	//s2:
	assign swap_1 = (ps == s2 && steep>0);
	//s3:
	assign swap_2 = (ps == s3 && x0>x1);
	//s4:
	assign dx_enable = (ps == s4);
	assign dy_enable = (ps == s4);
	//s5:
	assign x_init = (ps == s5);
	assign y_init = (ps == s5);
	assign error_init = (ps == s5);
	//s6:
	assign ystep_enable = (ps == s6);
	//s7:
	assign plot_enable = (ps == s7);
	//s8:
	assign error_incr_dy = (ps == s8);
	//s9:
	assign y_incr = (ps == s9);
	assign error_decr_dx = (ps == s9);
	//s10:
	assign x_incr = (ps == s10);
	//s12:
	assign done = (ps == s12);
	
	
	
	//for VGA adaptor:
	assign to_VGA_x = plot_x;
	assign to_VGA_y = plot_y;
	assign to_VGA_plot= 1;
						
	
	// FSM circuit
	
	always@(*)
	begin
		case(ps)
		s0:  //s0 = initilize x1,y1,x0,y0.
			begin
				ns = s1; 
			end
		s1: begin
					//ns = (GO)?s2:s0;//s1 = set steep.
					ns = s2;
				end
		s2: begin
				ns = s3;//check if needs to swap x0,y0,x1,y1
			end
		s3: 
			begin
				ns = s4; //check if needs to swap x0,x1,y0,y1
			end
		s4: begin
				ns = s5; //set dx and dy.
			end
		s5: begin
				ns = s6;//s5 = set x,y,error.
			end
		s6: begin
				ns = s7;//s6 = for ystep.
			end
		s7: begin
					ns = s8; //s7 = plot
				end
		s8: begin
				ns = s9;//s8 = update error
			end
		s9: begin
				ns = s10;//s9 = update y and error, if error>0.
			end
		s10: begin
				ns = s11;//s10: increment x by 1.
			end
		s11: begin
				ns = (x<x1)?s7:s12; //check x and x1
			end
		s12:  //ending state, set done to 1.
			begin
				if(GO)
					ns = s0;
				else
					ns = s12;
			end
				
		default:
			ns = s0;
		endcase
		end

	
	
	//for plot :
	always@(posedge CLOCK_50)
				begin
					if(plot_enable)
						begin
							if(steep)
								begin
									plot_x <= x;
									plot_y <= y;
								end
							else
								begin
									plot_x <= x;
									plot_y <= y;
								end
							end
			end
	
	/*   Data path for LDA */

	
	always@(posedge CLOCK_50) //for steep
		begin
		//else if(steep_enable && GO)
		if(steep_enable)
			begin
			steep <= (( y1 >= y0 ? y1 - y0: y0 - y1) > (x1 >= x0 ? x1 - x0 : x0 - x1));
			if(y1 >= y0)
				comp <= 1;
			else
				comp <= 0;
			end
		else if(done)
			steep <= 1'b0;
		else
			steep<=steep;
	end
		
		
	always@(posedge CLOCK_50) //for x
	begin
		 if(x_init)
			x <= x0;
		else if(x_incr)
			x<=x+1;
		else if(done)
			x <= 9'b00000000;
		else
			x <= x; //we need to add this to avoid latch !
	end
	
	always@(posedge CLOCK_50) //for y
	begin
		 if(y_init)
			y <= y0;
		else if(y_incr && error>0)
					y <= (y+ystep);
		else if(done)
			y <= 8'b00000000;
		else
			y <= y;
	end
	
	always@(posedge CLOCK_50) //for ystep
	begin
		if(ystep_enable)
				ystep <= (y0 >= y1) ? 8'b1111_1111: 8'b0000_0001;
		else if(done)
			ystep <= 8'b00000000;
		else
			ystep<=ystep;
	end
	
	always@(posedge CLOCK_50) //for error
	begin
		
		if(error_init)
			error <= -((deltax) >> 1);  //error <= (-deltax)>>>1; //>>> for signed register !
		else if(error_incr_dy)
			error<=error+deltay;
		else if(error_decr_dx && error>0)
					error <= (error - deltax);
		else if(done)
			error <= 9'b00000000;
		else
			error<=error;	
	end
	
	
	always@(posedge CLOCK_50) //for x1,y1,x0,y0
	begin
		
		if(xy_init)
			begin
				x1 <= X1;
				y1 <= Y1;
				x0 <= X0;
				y0 <= Y0;
				swaped <= 1'b0;
				swaped_2 <= 1'b0;
			end
		else if(swap_1)
				begin
					if(steep>0)
						begin
						x0 <= {1'b0, y0}; 
						y0 <= x0[7:0]; 
						x1 <= {1'b0, y1}; 
						y1 <= x1[7:0]; 
						swaped <= 1'b1;
						end
				end
		else if(swap_2)
				begin
				if(x0>x1)
					begin
					x0 <= x1;
					x1 <= x0;
					y0 <= y1;
					y1 <= y0;
					swaped_2 <= 1'b1;
					end
				end
		else if(done)
			begin
				if(swaped) //if steep ==1, meaning that there is a swap between x1 and y1, so we need to swap them back at the end of the one FSM cycle.
					begin
						if(comp)
							begin
							x0 <= y1;
							y0 <= x1[7:0];
							x1 <= x1;
							y1 <= y1;
						end
						else
							begin
							x0 <= y0;
							y0 <= x0[7:0];
							x1 <= x1;
							y1 <= y1;
							end
					end
				else if(swaped_2)
					begin
						x0 <= x0;
						y0 <= y0;
						x1 <= x1;
						y1 <= y1;
					end
				else
						begin
							x0 <= 9'b000000000;
							y0 <= 8'b00000000;
							x1 <= 9'b000000000;
							y1 <= 8'b00000000;
						end
			end
		else
			begin
				x0 <= x0;
				y0 <= y0;
				x1 <= x1;
				y1 <= y1;
			end
	end
			

	always@(posedge CLOCK_50) //for deltax
	begin
		 
		 if(dx_enable)
			deltax<= (x1 - x0);
		else if(done)
			deltax <= 9'b000000000;
		else
			deltax<=deltax;
	end
	
	always@(posedge CLOCK_50) //for deltay
	begin
	
		if(dy_enable)
				deltay <= ((y1 >= y0)) ? (y1 - y0) : (y0 - y1);
		else if(done)
				deltay <= 8'b00000000;
		else
			deltay<=deltay;
	end
	
	
	always@(posedge CLOCK_50) //for ps
	begin
			ps <= ns;
	end
	

endmodule
		