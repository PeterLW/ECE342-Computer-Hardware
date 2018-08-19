	/*
	module adder(a, b, out);
	
	input signed[8:0] a,b;
	output signed[8:0] out;
	
	assign out=a+b;
	
	endmodule
	
	
	module mux_2to1(a, b, s, out);//s=1 -> a, s=0->b

	input signed[8:0] a, b;
	input s;
	output reg signed[8:0] out;

	always@(*)
	if(s)
	out=a;
	else
	out=b;

	endmodule


	module subtractor(a, b, out);// a-b=out
	input[8:0] a, b;
	output signed[8:0] out;

	assign out=a-b;

	endmodule


	module comparator(a, b, out);// a>b -> out=1, a<b -> out=0
	input  signed[8:0] a, b;
	output reg out;


	always@(*)
	if(a>b)
		out=1;
	else
		out=0;
		
	endmodule


	module flip_flop(D, Q, enable, reset, CLOCK_50);

	input signed[8:0] D;
	input enable, reset, CLOCK_50;
	output reg signed[8:0] Q;

	always@(posedge CLOCK_50 or negedge reset)

	if(!reset)
		Q<=0;
	else if(enable)
		Q<=D;
		
	endmodule

	module flip_flop_1bit(D, Q, enable, reset, CLOCK_50);

	input signed D;
	input enable, reset, CLOCK_50;
	output reg signed Q;

	always@(posedge CLOCK_50 or negedge reset)

	if(!reset)
		Q<=0;
	else if(enable)
		Q<=D;
		
	endmodule
	*/
	
	
	module LDA_FSM(cmpx, cmperror, stt, enable_plot, enable_error, enable_x, enable_y, enable_drawx, enable_drawy, reset_plot, enable_yout1, enable_yout2, 
	delta_select, x_select, y_select, error_select, CLOCK_50);

	input stt, CLOCK_50, cmpx, cmperror;
	output reg delta_select, x_select, y_select, error_select;//control signal of mux 
	output reg enable_plot, reset_plot, enable_error, enable_x, enable_y, enable_drawx, enable_drawy, enable_yout1, enable_yout2;
	reg[3:0] currentstate, nextstate;
	parameter idle=1, abs_y=2, init_data=3, load_drawxy=4, plot_xy=5, inc_error=7, cmp_err=8,  inc_y=9, inc_x=10, cmp_x=11, waiting=12;
	
	always@(*)
	begin
	
		case(currentstate)
			idle:
				if(stt)
					nextstate=abs_y;
				else
					nextstate=idle;
			
			abs_y:
				nextstate=init_data;
					
			init_data:
				nextstate=load_drawxy;
			
			load_drawxy:
				nextstate=plot_xy;
				
			plot_xy:
				nextstate=inc_error;
			
			inc_error:
				nextstate=cmp_err;

			cmp_err:
				if(cmperror)
					nextstate=inc_y;
				else
					nextstate=inc_x;
					
			inc_y:
				nextstate=inc_x;
			
			inc_x:
				nextstate=cmp_x;
				
			cmp_x:
				if(cmpx)
					nextstate=waiting;
				else
					nextstate=load_drawxy;
			
			waiting:
				if(!stt)
					nextstate=idle;
				else
					nextstate=waiting;
					
			default:
				nextstate=idle;
		endcase
	end
	
	always@(posedge CLOCK_50)
	begin
		currentstate<=nextstate;
	end
	
	always@(*)
	begin
		case(currentstate)
	
			idle:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
			
				enable_error=0; 
				enable_x=0;
				enable_y=0;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=0;
				enable_yout2=0;
			end
			
			abs_y:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
				
				enable_error=0; 
				enable_x=0;
				enable_y=0;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=1;
				enable_yout2=1;
			end
			
			init_data:
			begin			
				delta_select=0;
				x_select=1;
				y_select=1;
				error_select=1;
				
				enable_error=1; 
				enable_x=1;
				enable_y=1;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=0;
				enable_yout2=0;
			end
			
			load_drawxy:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
				
				enable_error=0; 
				enable_x=0;
				enable_y=0;
				enable_drawx=1; 
				enable_drawy=1;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=0;
				enable_yout2=0;
			end
				
			plot_xy:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
				
				enable_error=0; 
				enable_x=0;
				enable_y=0;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=1;
				reset_plot=1;
				enable_yout1=0;
				enable_yout2=0;
			end
			
			inc_error:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
			
				enable_error=1; 
				enable_x=0;
				enable_y=0;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=0;
				enable_yout2=0;
			end
			
			inc_y:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
			
				enable_error=1; 
				enable_x=0;
				enable_y=1;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=0;
				enable_yout2=0;
			end
			
			inc_x:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
				
				enable_error=0; 
				enable_x=1;
				enable_y=0;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=0;
				enable_yout2=0;
			end
			
			waiting:
			begin
				delta_select=0;
				x_select=0;
				y_select=0;
				error_select=0;
				
				enable_error=0; 
				enable_x=0;
				enable_y=0;
				enable_drawx=0; 
				enable_drawy=0;
				enable_plot=0;
				reset_plot=0;
				enable_yout1=0;
				enable_yout2=0;
			end
	
			default:
			begin
					delta_select=0;
					x_select=0;
					y_select=0;
					error_select=0;
					
					enable_error=0; 
					enable_x=0;
					enable_y=0;
					enable_drawx=0; 
					enable_drawy=0;
					enable_plot=0;
					reset_plot=0;
					enable_yout1=0;
					enable_yout2=0;
			end
		endcase
	end
	
	
	endmodule
	
	module LDA_datapath(steep, delta_select, x_select, y_select, error_select, 
	enable_plot, enable_error, enable_x, enable_y, enable_drawx, enable_drawy, reset_plot, enable_yout1, enable_yout2, realx0, realy0, realx1, realy1,
	plot_signal, drawx, drawy, cmpx, cmperror);
	
	input steep;// from UI
	input delta_select, x_select, y_select, error_select;//control signal of mux 
	input enable_plot, enable_error, enable_x, enable_y, enable_drawx, enable_drawy, reset_plot, enable_yout1, enable_yout2;//enable of register
	input[8:0] realx0, realy0, realx1, realy1;//coordinate after swapping from UI
	
	output[8:0] cmpx, cmperror;//to UI
	output plot_signal;//to VGA controller
	output[8:0]	drawx, drawy;// to VGA controller
	
	wire deltay_select, cmp;
	wire[8:0] x, y, xin, yin, xout, yout;
	wire[8:0] drawxin, drawyin;
	wire[8:0] yout1, yout2, yout1_, yout2_;
	
	wire signed[8:0] deltaout;
	wire signed[1:0] ystep;
	wire signed[8:0] errorin, error, error_reg;
	wire signed[8:0] deltax;
	wire[8:0] deltay; 
	
	//plot reg	
	flip_flop_1bit P(1, plot_signal, enable_plot, reset_plot, CLOCK_50);
	
	//error_reg>0? x>x1?
	comparator out_C1(error_reg, 0, cmperror);//comparator(a, b, out);
	comparator out_C2(x, realx1, cmpx);//a>b -> out=1, a<b -> out=0
	
	//calculate error
	subtractor e_S1(realx0, realx1, deltax);//subtractor(a, b, out);
	comparator e_C1(realy0, realy1, deltay_select);//comparator(a, b, out);
	mux_2to1 e_M1(realy0, realy1, deltay_select, yout1);//module mux_2to1(a, b, s, out);//s=1 -> a, s=0->b
	mux_2to1 e_M2(realy1, realy0, deltay_select, yout2);
	
	flip_flop e_Y1(yout1, yout1_, enable_yout1, 1, CLOCK_50);
	flip_flop e_Y2(yout2, yout2_, enable_yout2, 1, CLOCK_50);
	
	subtractor e_S2(yout1_, yout2_, deltay);
	mux_2to1 e_M3(deltax, deltay, delta_select, deltaout);
   adder e_A1(deltaout, error_reg, errorin);//module adder(a,b, out);
	mux_2to1 e_M4(deltax>>>1, errorin, error_select, error);
   flip_flop e_F1(error, error_reg, enable_error, 1, CLOCK_50);//module flip_flop(D, Q, enable, reset, clock);
	
	
	//reg x
	adder x_A2(x, 1, xout);//module adder(a,b, out);
	mux_2to1 x_M5(realx0, xout, x_select, xin);//module mux_2to1(a, b, s, out);//s=1 -> a, s=0->b
	flip_flop x_F2(xin, x, enable_x, 1, CLOCK_50);
	
	//reg y
	comparator y_C2(realy1, realy0, cmp);// module comparator(a, b, out);a>b -> out=1, a<b -> out=0
	mux_2to1 y_M6(1, -1, cmp, ystep);
	adder y_A3(y, ystep, yout);
	mux_2to1 y_M7(realy0, yout, y_select, yin);
	flip_flop y_F3(yin, y, enable_y, 1, CLOCK_50);
	
	//drawx, drawy reg
	mux_2to1 dxy_M8(y, x, steep, drawxin);
	mux_2to1 dxy_M9(x, y, steep, drawyin);
	
	flip_flop dxy_F4(drawxin, drawx, enable_drawx, 1, CLOCK_50);
	flip_flop dxy_F5(drawyin, drawy, enable_drawy, 1, CLOCK_50);
	
	endmodule
	