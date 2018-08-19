/* This is a top level module that connects the switches and the 7-segment hex displays
 * to your multiplier.
 */
 
 //Fuller Adder//////////////////////////////////////////////////////
 module FA(cin, x, y, s, cout);
 
 input cin, x, y;
 output cout,s;
 assign s=x^y^cin;
 assign cout=x&y+x&cin+y&cin;
 
 endmodule
 
 //input x/////////////////////////////////////////////////////
 module FA_input_x(input m, q0,q1, output x);
 
 wire plus, minus;
 assign plus=q0&~q1;
 assign minus=~q0&q1;
 assign x=(m&plus)+(~m&minus);
 
 endmodule
 
 //8 bits adder//////////////////////////////////////////////////////////////////
 module row_cct(m, q0, q1, y, s, carryout);
 input [1:0]m;
 input q0,q1;
 input [3:0] y;
 output [3:0]s;
 wire [1:0]x;
 wire first_carryout;//=minus
 assign first_carryout=~q0&q1;
 wire [3:0]z;
 output wire [3:0]carryout;
 wire sign_extend_x;
 assign sign_extend_x=((m[1])&(q0&~q1))+((~m[1])&(~q0&q1)); //m1&plus+~m[7]&minus
 

 FA_input_x X1(m[0], q0, q1, x[0]);// module FA_input_x(input m, q0,q1, output x);
 FA_input_x X2(m[1], q0, q1, x[1]);
 
 //Row adder
 FA F1(first_carryout, x[0], 			  y[0],    z[0],	  carryout[0] );
 FA F2(carryout[0],    x[1], 			  y[1],    z[1],	  carryout[1] );//FA(cin, x, y, s, cout);
 FA F3(carryout[1],    sign_extend_x, y[2], 	  z[2], 	  carryout[2] );
 FA F4(carryout[2],    sign_extend_x, y[3],	  z[3],    carryout[3] );

 assign s=z;
 
 endmodule
 
 
 
module lab2(SW, HEX0, HEX1, HEX2, HEX3);
	input [15:0] SW;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;	

	wire [7:0] A;
	wire [7:0] B;
	wire [15:0] result;
	wire [15:0] s0, s1, s2, s3, s4, s5, s6,s7;
	wire c0,c1,c2,c3,c4,c5,c6,c7;
	wire [3:0]x,y;
	
	
	/* Connect switches to the multiplier. */
	assign A = SW[7:0];
	assign B = SW[15:8];
	
	/* Your multiplier circuit goes here. */ //row_cct(m, q0, q1, y, s);
	row_cct R1(A[1:0], 0, 	 B[0], 0,  s0, x);
	row_cct R2(A[1:0], B[0], B[1], s0[3:1], s1, y);
	assign result=y;
	//assign result[3:1]=s1[2:0];
	//assign result[1]=s1[0];
	//assign result[2]=s1[1];
	//assign result[3]=s1[2];
	/* Multiplication result goes to HEX displays. */
	hex_digits h0(result[3:0], HEX0);
	hex_digits h1(result[7:4], HEX1);
	hex_digits h2(result[11:8], HEX2);
	hex_digits h3(result[15:12], HEX3);
	
endmodule