

module user_interface(x, y, go, CLOCK_50, outx0, outy0, outx1, outy1, start, steep);

input[8:0] x,y;
input go, CLOCK_50; 
output[8:0] outx0, outy0, outx1, outy1;
output start, steep;

wire stt, stp;
wire[8:0] realx0, realy0, realx1, realy1;
wire enable_x0, enable_y0, enable_x1, enable_y1, enable_steep_x0, enable_steep_y0, enable_steep_x1, enable_steep_y1, 
enable_real_x0, enable_real_y0, enable_real_x1, enable_real_y1, enable_start, reset_start, enable_deltax, enable_deltay;

user_interface_FSM(go, enable_x0, enable_y0, enable_x1, enable_y1, enable_steep_x0, enable_steep_y0, enable_steep_x1, enable_steep_y1, 
enable_real_x0, enable_real_y0, enable_real_x1, enable_real_y1, enable_start, reset_start, enable_deltax, enable_deltay, CLOCK_50);

UI_Datapath(x, y, enable_x0, enable_y0, enable_x1, enable_y1, enable_steep_x0, enable_steep_y0, enable_steep_x1, enable_steep_y1, 
enable_real_x0, enable_real_y0, enable_real_x1, enable_real_y1, enable_start, reset_start, enable_deltax, enable_deltay, realx0, realy0, realx1, realy1, stt, stp);

assign start=stt;
assign steep=stp;
assign realx0=outx0;
assign realy0=outy0;
assign realx1=outx1;
assign realy1=outy1;

endmodule
