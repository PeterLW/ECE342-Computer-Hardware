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
input signed[8:0] a, b;
output signed[8:0] out;

assign out=a-b;

endmodule


module comparator(a, b, out);// a>b -> out=1, a<b -> out=0
input signed[8:0] a, b;
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

input D;
input enable, reset, CLOCK_50;
output reg Q;

always@(posedge CLOCK_50 or negedge reset)

if(!reset)
	Q<=0;
else if(enable)
	Q<=D;
	
endmodule


module user_interface_FSM(go, enable_x0, enable_y0, enable_x1, enable_y1, enable_steep_x0, enable_steep_y0, enable_steep_x1, enable_steep_y1, 
enable_real_x0, enable_real_y0, enable_real_x1, enable_real_y1, enable_start, reset_start, enable_deltax, enable_deltay, CLOCK_50);

input go, CLOCK_50;
output reg enable_x0, enable_y0, enable_x1, enable_y1, enable_steep_x0, enable_steep_y0, enable_steep_x1, enable_steep_y1, 
enable_real_x0, enable_real_y0, enable_real_x1, enable_real_y1, enable_start, reset_start, enable_deltax, enable_deltay;

reg[2:0] currentstate;
reg [2:0]nextstate;

parameter load_x0y0=2, load_x1y1=3, load_steepxy=5, load_realxy=6, set_start=4, waiting=7, idle=1;

always@(*)
begin
	case(currentstate)
		idle: 
			nextstate=load_x0y0;
			
		load_x0y0:
			nextstate=load_x1y1;
			
		load_x1y1:
		begin
			if(go)
				nextstate=set_start;
			else
				nextstate=load_x1y1;
		end
		
		set_start:
			nextstate=load_steepxy;
			
		load_steepxy:
			nextstate=load_realxy;
			
		load_realxy:
			nextstate=waiting;
		
		waiting:
		begin
			if(!go)
				nextstate=idle;
			else
				nextstate=waiting;
		end
		
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
			enable_x0=0;
			enable_y0=0;
			enable_x1=0;
			enable_y1=0;
			enable_steep_x0=0;
			enable_steep_y0=0;
			enable_steep_x1=0;
			enable_steep_y1=0;
			enable_real_x0=0;
			enable_real_y0=0;
			enable_real_x1=0;
			enable_real_y1=0;
			enable_start=0;
			reset_start=0;
			enable_deltax=0;
			enable_deltay=0;
			end
		load_x0y0:
			begin
			enable_x0=1;
			enable_y0=1;
			enable_x1=0;
			enable_y1=0;
			enable_steep_x0=0;
			enable_steep_y0=0;
			enable_steep_x1=0;
			enable_steep_y1=0;
			enable_real_x0=0;
			enable_real_y0=0;
			enable_real_x1=0;
			enable_real_y1=0;
			enable_start=0;
			reset_start=1;
			enable_deltax=0;
			enable_deltay=0;
			end
		load_x1y1:
			begin
			enable_x0=0;
			enable_y0=0;
			enable_x1=1;
			enable_y1=1;
			enable_steep_x0=0;
			enable_steep_y0=0;
			enable_steep_x1=0;
			enable_steep_y1=0;
			enable_real_x0=0;
			enable_real_y0=0;
			enable_real_x1=0;
			enable_real_y1=0;
			enable_start=0;
			reset_start=1;
			enable_deltax=0;
			enable_deltay<=0;
			end
		set_start:
			begin
			enable_x0=0;
			enable_y0=0;
			enable_x1=0;
			enable_y1=0;
			enable_steep_x0=0;
			enable_steep_y0=0;
			enable_steep_x1=0;
			enable_steep_y1=0;
			enable_real_x0=0;
			enable_real_y0=0;
			enable_real_x1=0;
			enable_real_y1=0;
			enable_start=1;
			reset_start=1;
			enable_deltax=1;
			enable_deltay=1;
			end
			
		load_steepxy:
			begin
			enable_x0=0;
			enable_y0=0;
			enable_x1=0;
			enable_y1=0;
			enable_steep_x0=1;
			enable_steep_y0=1;
			enable_steep_x1=1;
			enable_steep_y1=1;
			enable_real_x0=0;
			enable_real_y0=0;
			enable_real_x1=0;
			enable_real_y1=0;
			enable_start=1;
			reset_start=1;
			enable_deltax=0;
			enable_deltay=0;
			end
			
		load_realxy:
			begin
			enable_x0=0;
			enable_y0=0;
			enable_x1=0;
			enable_y1=0;
			enable_steep_x0=0;
			enable_steep_y0=0;
			enable_steep_x1=0;
			enable_steep_y1=0;
			enable_real_x0=1;
			enable_real_y0=1;
			enable_real_x1=1;
			enable_real_y1=1;
			enable_start=1;
			reset_start=1;
			enable_deltax=0;
			enable_deltay=0;
			end
			
		waiting:
			begin
			enable_x0=0;
			enable_y0=0;
			enable_x1=0;
			enable_y1=0;
			enable_steep_x0=0;
			enable_steep_y0=0;
			enable_steep_x1=0;
			enable_steep_y1=0;
			enable_real_x0=0;
			enable_real_y0=0;
			enable_real_x1=0;
			enable_real_y1=0;
			enable_start=1;
			reset_start=1;
			enable_deltax=0;
			enable_deltay=0;
			end
			
		default:
		begin
			enable_x0=0;
			enable_y0=0;
			enable_x1=0;
			enable_y1=0;
			enable_steep_x0=0;
			enable_steep_y0=0;
			enable_steep_x1=0;
			enable_steep_y1=0;
			enable_real_x0=0;
			enable_real_y0=0;
			enable_real_x1=0;
			enable_real_y1=0;
			enable_start=0;
			reset_start=0;
			enable_deltax=0;
			enable_deltay=0;
		end
		endcase
end

endmodule

module UI_Datapath(x, y, enable_x0, enable_y0, enable_x1, enable_y1, enable_steep_x0, enable_steep_y0, enable_steep_x1, enable_steep_y1, 
enable_real_x0, enable_real_y0, enable_real_x1, enable_real_y1, enable_start, reset_start, enable_deltax, enable_deltay, outx0, outy0, outx1, outy1, start, steep);

//enable signal from UI_FSM
input enable_x0, enable_y0, enable_x1, enable_y1, enable_steep_x0, enable_steep_y0, enable_steep_x1, enable_steep_y1, 
enable_real_x0, enable_real_y0, enable_real_x1, enable_real_y1, enable_start, reset_start, enable_deltax, enable_deltay;
//input SW
input[8:0] x, y;
//x and y coordinate after swapping based of "steep" and "x0>x1"
output[8:0] outx0, outy0, outx1, outy1;
//start singal telling LDA to draw the line, steep will be used in the LDA
output start, steep;


wire[8:0] x0_sub_x1, y0_sub_y1, x1_sub_x0, y1_sub_y0;
wire[8:0] deltax, deltay;
wire cmp1, cmp2, cmp3, cmp4, start_signal;//cmp3=steep
wire[8:0] mux_out1, mux_out2, mux_out3, mux_out4, mux_out5, mux_out6, mux_out7, mux_out8, mux_out9, mux_out10;
wire x0, y0, x1, y1, steep_x0, steep_y0, steep_x1, steep_y1, real_x0, real_y0, real_x1, real_y1;

//first row register, 
//x0,y0 store the value from x1, y1, x1,y1 store the value from sw
flip_flop X0(x1, x0, enable_x0, 1, CLOCK_50);//flip_flop(D, Q, enable, reset, CLOCK_50);
flip_flop Y0(y1, y0, enable_y0, 1, CLOCK_50);
flip_flop X1(x,  x1, enable_x1, 1, CLOCK_50);
flip_flop Y1(y,  y1, enable_y1, 1, CLOCK_50);

//first row subtractor
subtractor s1(x0, x1, x0_sub_x1);//module subtractor(a, b, out);
subtractor s2(x1, x0, x1_sub_x0);
subtractor s3(y0, y1, y0_sub_y1);
subtractor s4(y1, y0, y1_sub_y0);

//2 comparator, get the abs of deltax and deltay
comparator c1(0, x0_sub_x1, cmp1);//module comparator(a, b, out); if cmp=1, x0_sub_x1<0
comparator c2(0, y0_sub_y1, cmp2);//a>b -> out=1, a<b -> out=0

//2 mux
mux_2to1 m1(x1_sub_x0, x0_sub_x1, cmp1, mux_out1);//mux_2to1(a, b, s, out); s=1 -> a, s=0->b
mux_2to1 m2(y1_sub_y0, y0_sub_y1, cmp2, mux_out2);

//2 flip flop to store absx, absy, not done yet!!!!
flip_flop deltaX(mux_out1, deltax, enable_deltax, 1, CLOCK_50);
flip_flop deltaY(mux_out2, deltay, enable_deltay, 1, CLOCK_50);

//1 comparator, get the steep=cmp3
comparator c3(deltay, deltax, cmp3);

//4 mux
mux_2to1 m3(y0, x0, cmp3, mux_out3);
mux_2to1 m4(x0, y0, cmp3, mux_out4);
mux_2to1 m5(y1, x1, cmp3, mux_out5);
mux_2to1 m6(x1, y1, cmp3, mux_out6);

//2nd row register, check steep, see if we need to swap
flip_flop s_X0(mux_out3, steep_x0, enable_steep_x0, 1, CLOCK_50);//flip_flop(D, Q, enable, reset, CLOCK_50);
flip_flop s_Y0(mux_out4, steep_y0, enable_steep_y0, 1, CLOCK_50);
flip_flop s_X1(mux_out5,  steep_x1, enable_steep_x1, 1, CLOCK_50);
flip_flop s_Y1(mux_out6,  steep_y1, enable_steep_y1, 1, CLOCK_50);

//1 comparator, see if x0>x1
comparator c4(steep_x0, steep_x1, cmp4);

//4 mux, see if we need to swap base on whether x0>x1
mux_2to1  m7(steep_x1, steep_x0, cmp4, mux_out7);
mux_2to1  m8(steep_y1, steep_y0, cmp4, mux_out8);
mux_2to1  m9(steep_x0, steep_x1, cmp4, mux_out9);
mux_2to1 m10(steep_y0, steep_y1, cmp4, mux_out10);

//3rd row register, store the final swapping value to register 
flip_flop r_X0(mux_out7, real_x0, enable_real_x0, 1, CLOCK_50);//flip_flop(D, Q, enable, reset, CLOCK_50);
flip_flop r_Y0(mux_out8, real_y0, enable_real_y0, 1, CLOCK_50);
flip_flop r_X1(mux_out9, real_x1, enable_real_x1, 1, CLOCK_50);
flip_flop r_Y1(mux_out10, real_y1, enable_real_y1, 1, CLOCK_50);

//start signal
flip_flop_1bit trigger(1, start_signal, enable_start, reset_start, CLOCK_50);

assign start=start_signal;
assign steep=cmp3;
assign outx0=real_x0;
assign outy0=real_y0;
assign outx1=real_x1;
assign outy1=real_y1;

endmodule
