module LDA(clk, reset, start,plot,LST,LSC,Sxy,LI,LE,reset_xy,SER,Ey,Ex,Sel_p,steep,x_gt,
           loop,y_step,error,Sel_y,done,error_en,colour_en);
  input clk,reset,start,steep,x_gt,error,loop, y_step;
  
  output plot,LST,LSC,LI,LE,reset_xy,Ex,Ey,done,error_en,colour_en;
  output reg Sel_y, Sel_p, Sxy;
  output reg [1:0] SER;
  
  localparam [4:0] s0=5'd0, s1=5'd1, s2=5'd2, s3=5'd3, s4=5'd4, s5=5'd5,
                   s6=5'd6, s7=5'd7, s8=5'd8, s9=5'd9, s10=5'd10, s11=5'd11,
						 s12=5'd12, s13=5'd13;
  
  reg [4:0] ps,ns;
  
  always@(*)
    begin
	  case(ps)
	    s0: if(start) ns <= s1;
		     else ns <= s0;
		 s1: ns <= s2;
		 s2: if(steep) ns <= s3;
		     else ns <= s4;
		 s3: ns <= s4;
		 s4: ns <= s5;
		 s5: if(x_gt) ns <= s6;
		     else ns <= s7;
		 s6: ns <= s7;
		 s7: ns <= s8;
		 s8: ns <= s9;
		 s9: if(loop) ns <= s10;
		     else ns <= s11;
		 s10: if(error) ns <= s12;
		      else ns <= s13;
		 s11: ns <= s0;
		 s12: ns <= s13;
		 s13: ns <= s9;
	    default: ns <= 5'bxxxx;
	  endcase 
	 end
	
	 always@(posedge clk, negedge reset)
    begin
	   if(~reset) ps <= s0;
		else ps <= ns;
	 end
	 
	 always@(*)
	 begin
	   if(ps==s2 && steep==1)
		  Sxy = 0;
		else if(ps==s5 && x_gt==1)
		  Sxy = 1;
		else
		  Sxy = Sxy;
	 end
	 
	 always@(*)
	 begin
	   if(ps==s8)
		  SER = 2'b00;
		else if(ps==s9)
		  SER = 2'b10;
		else if(ps==s12)
		  SER = 2'b01;
		else
		  SER = SER;
	 end
	 
	 always@(*)
	 begin
	   if(ps==s8 && y_step==1)
		  Sel_y=0;
		else if(ps==s8 && y_step==0)
		  Sel_y=1;
		else
		  Sel_y = Sel_y;
	 end
	 
	 always@(*)
	 begin
	   if(steep==1 && ps==s9)
		  Sel_p = 1;
		else if (steep==0 && ps==s9)
		  Sel_p = 0;
		else
		  Sel_p = Sel_p;
	 end
	 
	 assign reset_xy = (ps==s0);
	 assign LST = (ps==s1);
	 assign colour_en = (ps==s1);
	 assign LI = (ps==s3)|(ps==s6);
	 assign LSC = (ps==s4);
	 assign LE = (ps==s7);
	 assign plot = (ps==s10);
	 assign Ex = (ps==s13);
	 assign Ey = (ps==s12);
	 assign done = (ps==s11);
	 assign error_en = (ps==s8)|(ps==s9)|(ps==s12);

endmodule

module LDA_datapath(clk,LST,LSC,LI,LE,reset_xy,Ex,Ey,Sel_p,y_step,Sel_y,Sxy,SER,oldx0,oldy0,oldx1,oldy1,steep,
                    x_gt, loop,plot_x, plot_y, error_sel, error_en, colour_en, colour_in, colour_out);
  
  input clk,LST,LSC,LI,LE,reset_xy,Ex,Ey,Sel_p,Sel_y, Sxy, error_en, colour_en;
  input [1:0] SER;
  input [2:0] colour_in;
  input [7:0] oldy0,oldy1;
  input [8:0] oldx0,oldx1;

  output steep, x_gt, loop, y_step, error_sel;
  output [8:0] plot_x;
  output [7:0] plot_y;
  output [2:0] colour_out;
  
  wire [7:0] y1,y0,deltay,y;
  wire [8:0] x,x0,x1,deltax;
  wire signed [8:0] error;
  
  get_steep steep_fun(.x0(x0), .y0(y0), .x1(x1), .y1(y1), .clk(clk), .enable(LST), .steep(steep));
  
  x0_gt_x1 compare_x(.clk(clk), .en(LSC), .a(x0), .b(x1), .out(x_gt));
  
  xy_select xy_selection(.clk(clk), .LI(LI), .reset(reset_xy), .sel_xy(Sxy), .oldx0(oldx0), .oldx1(oldx1),
                         .oldy0(oldy0), .oldy1(oldy1), .x0(x0), .x1(x1), .y0(y0), .y1(y1));
  
  delta_x delx(.clk(clk), .a(x1), .b(x0), .en(LE), .c(deltax));
  
  delta_y dely(.clk(clk), .a(y0), .b(y1), .en(LE), .c(deltay));
  
  error_select error_get(.clk(clk), .sel(SER), .x(deltax), .y(deltay), .error(error), .enable(error_en));
  
  x_add x_loop(.reset(LE), .enable(Ex), .clk(clk), .xold(x0), .x(x));
  
  get_y y_loop(.clk(clk), .reset(LE), .sel(Sel_y), .enable(Ey), .yold(y0), .y(y));
  
  x_compare x_comp(.a(x), .b(x1), .c(loop));
  
  y_compare y_comp(.a(y0), .b(y1), .c(y_step));
  
  plot_mux x_plot( .data0x(x), .data1x({1'b0,y}), .sel(Sel_p), .result(plot_x));
  
  plot_mux y_plot( .data0x(y), .data1x(x[7:0]), .sel(Sel_p), .result(plot_y));

  error_compare error_comp(.error(error), .out(error_sel));
  
 colour_select colour_assign(.enable(colour_en), .colour_in(colour_in), .colour_out(colour_out));

endmodule


 