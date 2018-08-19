module UI(go,reset,done,clk, start, R0, L0, LN, done_plot);

  input go, reset, done_plot, clk;
  
  output start, done;
  output R0,L0, LN;
  
  localparam [3:0] s0=4'd0, s1=4'd1, s2=4'd2, s3=4'd3, s4=4'd4, s5=4'd5, s6=4'd6;
  reg [3:0] ns,ps;
  
  always@(*)
    begin
	   case(ps)
		  s0: ns <= s1;
		  s1: if(go) ns<=s2;
		      else ns <= s1;
		  s2: ns <= s3;
		  s3: if(done_plot) ns <= s4;
		      else ns <= s3;
		  s4: ns <= s5;
		  s5: if(~go) ns <= s6;
		      else ns <= s5;
		  s6: if(go) ns <= s2;
		      else ns <= s6;
		  default: ns <= 4'bxxxx;
		endcase		
	 end
  always@(posedge clk, negedge reset)
    begin
	   if(~reset) ps <= s0;
		else ps <= ns;
	 end
	 
  assign R0 = (ps == s0);
  assign LN = (ps == s1)| (ps == s6);
  assign L0 = (ps == s4);
  assign done = (ps == s5);
  assign start = (ps == s2);

  
endmodule

module UI_data(clk, R0, LN, L0, x,y,x1,y1,x0,y0);
  input clk, R0, LN, L0;
  input [7:0] y;
  input [8:0] x;
  
  output reg [7:0] y1,y0;
  output reg [8:0] x0,x1;
  
  always@(posedge clk)
    begin
	   if(R0) x0 <= 50;
		else if(L0) x0 <= x1;
	   else x0 <= x0;
	 end
  always@(posedge clk)
    begin
	   if(R0) y0 <= 50;
		else if(L0) y0 <= y1;
	   else y0 <= y0;
	 end
  always@(posedge clk)
    begin
	   if(LN) x1 <= x;
		else x1 <= x1;
	 end
    always@(posedge clk)
    begin
	   if(LN) y1 <= y;
		else y1 <= y1;
	 end

endmodule
