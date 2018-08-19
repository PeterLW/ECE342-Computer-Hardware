module get_steep(x0,y0,x1,y1,clk,enable,steep);
  input unsigned [7:0] y0,y1;
  input unsigned [8:0] x0,x1;
  input clk,enable;
  output reg steep;
  
  reg unsigned [7:0] comp_y;
  reg unsigned [8:0] comp_x;
    
  always@(*)
  begin
    if(y0>y1)
	   comp_y = y0-y1;
	 else
	   comp_y = y1-y0;
  end
  
  always@(*)
  begin
    if(x0>x1)
	   comp_x = x0-x1;
	 else
	   comp_x = x1-x0;
  end
  
  always@(posedge clk)
  begin
    if(enable)
	   begin
		  if(comp_y > comp_x)
		    steep = 1;
		  else
		    steep = 0;
		end
	 else
	   steep = steep;
  end
	 
endmodule 

module x0_gt_x1(clk,en,a,b,out);
  input clk,en;
  input [8:0] a,b;
  output reg out;
  
  always@(posedge clk)
  begin
    if(en)
	   begin
		  if(a > b)
		    out = 1;
		  else 
		    out = 0;
		end
	 else
	   out = out;
  end

endmodule

module xy_select(clk,LI,reset,sel_xy,oldx0,oldx1,oldy0,oldy1,x0,x1,y0,y1);
  input clk, LI, reset;
  input sel_xy;
  input unsigned [7:0] oldy0,oldy1;
  input unsigned [8:0] oldx0,oldx1;
  
  output reg unsigned [7:0] y0,y1;
  output reg unsigned [8:0] x0,x1;
  
  wire unsigned [7:0] newy0,newy1;
  wire unsigned [8:0] newx0,newx1;
  
  xy_mux x0_sel( .data0x({1'b0,y0}), .data1x(x1), .sel(sel_xy), .result(newx0));
  xy_mux x1_sel( .data0x({1'b0,y1}), .data1x(x0), .sel(sel_xy), .result(newx1));
  y_mux  y0_sel( .data0x(x0[7:0]), .data1x(y1), .sel(sel_xy), .result(newy0));
  y_mux  y1_sel( .data0x(x1[7:0]), .data1x(y0), .sel(sel_xy), .result(newy1));

  always@(posedge clk)
  begin
    if(reset)
	   begin
		  x0 = oldx0;
		  y0 = oldy0;
		  x1 = oldx1;
		  y1 = oldy1;
		end
	 else if(LI)
	   begin
		  x0 = newx0;
		  y0 = newy0;
		  x1 = newx1;
		  y1 = newy1;
		end
	 else
	   x0 = x0;
		y0 = y0;
		x1 = x1;
		y1 = y1;
  end

endmodule

module delta_x(clk,a,b,en,c);
  input unsigned [8:0] a,b;
  input clk;
  input en;
  output reg unsigned [8:0] c;
  
  always@(posedge clk)
    if(en)
	   c = a-b;
	 else
	   c = c;
endmodule

module delta_y(clk,a,b,en,c);
  input unsigned[7:0] a,b;
  input clk;
  input en;
  output reg unsigned [7:0] c;
  
  always@(posedge clk)
  begin
    if(en)
	 begin
	   if(b>a)
		  c = b-a;
		else
	     c = a-b;	
	 end
	 else
	   c = c;
  end
endmodule

module error_select(clk, enable, sel, x,y, error);
  input [1:0] sel;
  input clk, enable;
  input unsigned [7:0] y;
  input unsigned [8:0] x;
  output reg signed [8:0] error;
  
  reg signed [8:0] first, second, third;
  
  always@(*)
  begin
    first = -(x >> 1);
	 second = error - x;
	 third = error + y;
  end
  
  always@(posedge clk)
  begin
    if(enable)
	 begin
	   if(sel==2'b00) error = first;
		else if(sel==2'b01) error = second;
		else if (sel==2'b10) error = third;
	 end
	 else
	   error=error;
  end
  
  //error_mux error_sel(.clken(enable), .clock(clk), .data0x(first), .data1x(second), .data2x(third), .sel(sel), .result(error));
  //xy_mux error_sel(first,second,third,sel,error);
  
endmodule

module x_add(reset, enable, clk, xold, x);
  input reset, enable, clk;
  input unsigned [8:0] xold;
  output reg unsigned [8:0] x;
  
  always@(posedge clk)
  begin
    if(reset)
	   x = xold;
	 else if(enable)
	   x = x+1;
	 else
	   x = x;
  end

endmodule

module get_y(clk,reset,sel, enable, yold, y);
  input reset,enable,sel,clk;
  input unsigned [7:0] yold;
  output reg unsigned [7:0] y;
  
  reg signed [7:0] y_step;
  
  always@(*)
  begin
    if(sel)
	   y_step = -1;
	 else
	   y_step = 1;
  end
  
  always@(posedge clk)
  begin
    if(reset)
	   y = yold;
	 else if(enable)
	   y = y+y_step;
	 else
	   y = y;
  end
  
  
endmodule

module x_compare(a,b,c);
  input unsigned [8:0] a,b;
  output reg c;
  
  always@(*)
  begin
    if(a <= b)
	   c = 1;
	 else
	   c = 0;
  end
endmodule

module y_compare(a,b,c);
  input unsigned [7:0] a,b;
  output reg c;
  
  always@(*)
  begin
    if(a < b)
	   c = 1;
	 else
	   c = 0;
  end
endmodule

module error_compare(error,out);
  input signed [8:0] error;
  output reg out;
  
  always@(*)
  begin
    if(error > 0)
	   out = 1;
	 else
	   out = 0;
  end
  
endmodule

module colour_select(enable, colour_in, colour_out);
  input enable;
  input [2:0] colour_in;
  output reg [2:0] colour_out;
  
  always@(*)
  begin
    if(enable)
        colour_out = colour_in;
	 else
        colour_out = colour_out;	 
  end
  
endmodule
  
  
  

