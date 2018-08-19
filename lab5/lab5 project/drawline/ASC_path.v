module register_start(clk, reset, address, write, read, a, b, c, enable);
   input clk, reset, write, read, enable;
	input [2:0] address;
	input [16:0] a;
	output reg [16:0] b;
	output reg [16:0] c;
	
	always@(posedge clk, negedge reset)
	  begin
	    if(~reset)
		   b = 0;
	    else if(address == 3'b011  && write == 1 && enable==1)
		   b = a;
		 else if(address == 3'b011  && read == 1  && enable==1)
		   c = b;
		 else
		   b = b;
	  end
endmodule

module register_end(clk, reset, address, write, read, a, b, c, enable);
   input clk, reset, write, read, enable;
	input [2:0] address;
	input [16:0] a;
	output reg [16:0] b;
	output reg [16:0] c;
	
	always@(posedge clk, negedge reset)
	  begin
	    if(~reset)
		   b = 0;
	    else if(address == 3'b100  && write == 1 && enable==1)
		   b = a;
		 else if(address == 3'b100  && read == 1  && enable==1)
		   c = b;
		 else
		   b = b;
	  end
endmodule

module colour(clk, reset, address, write, read, a, b, c, enable);
  input clk, reset, write, read, enable;
  input [2:0] address;
  input [2:0] a;
  output reg [2:0] b;
  output reg [2:0] c;
  
  always@(posedge clk, negedge reset)
    begin
	   if(~reset)
		  b = 3'b111;
		else if (address==3'b101 && write ==1 && enable==1)
		  b = a;
		else if (address==3'b101 && read ==1  && enable==1)
		  c = b;
		else 
		  b = b;
	 end
endmodule

module go(clk, reset, address, write, read, a, b, c, enable);
  input clk, reset, write, read, enable;
  input [2:0] address;
  input a;
  output reg b;
  output reg c;
  
  always@(posedge clk, negedge reset)
    begin
	   if(~reset)
		  b = 0;
		else if (address==3'b010 && write ==1 && enable==1)
		  b = a;
		else if (address==3'b010 && read ==1  && enable==1)
		  c = b;
		else 
		  b = b;
	 end
endmodule

module mode(clk, reset, address, write, read, a, b, c, enable);
  input clk, reset, write, read, enable;
  input [2:0] address;
  input a;
  output reg b;
  output reg c;
  
  always@(posedge clk, negedge reset)
    begin
	   if(~reset)
		  b = 0;
		else if (address==3'b000 && write ==1 && enable==1)
		  b = a;
		else if (address==3'b000 && read ==1  && enable==1)
		  c = b;
		else 
		  b = b;
		  
	 end
endmodule

module status(clk, reset, address, write, read, b, c, enable);
  input clk, reset, write, read, enable;
  input [2:0] address;
  output reg b;
  output reg c;
  
  always@(posedge clk, negedge reset)
    begin
	   if(~reset)
		  b = 0;
		else if(address==3'b001 && read ==1  && enable==1)
		  begin
		    c <= b;
		    if(b == 1)
			   b <= 0;
		  end
		else if(write)
		  b <= 1;
		else 
		  b = b;
		  
	 end
endmodule   

module salve_sel(enable, select, mode, status, go, line_start, line_end, line_colour);

  input enable;
  input [2:0] select;
  output reg mode, status, go, line_start, line_end, line_colour;
  
  always@(*)
  begin
    if(enable)
	   begin
       if(select == 3'b000)
	        mode = 1;
	    else if (select == 3'b001)
	        status = 1;
	    else if (select == 3'b010)
	        go = 1;
	    else if (select == 3'b011)
	        line_start = 1;
	    else if (select == 3'b100)
	        line_end = 1;
	    else if (select == 3'b101)
	        line_colour = 1;
		end
	 else
	   begin
	     mode = 0;
		  status = 0;
		  go = 0;
		  line_start = 0;
		  line_end = 0;
		  line_colour = 0;
		end
  end

endmodule



