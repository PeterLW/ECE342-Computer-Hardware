/*
 * inputs:
 * 	KEY0		reset
 * 	KEY1		x2 the speed of shifting
 * 	KEY2		/2 the speed of shifting
 * 	SW[0]		enables shifting to the right
 * 	SW[1]		enables shifting to the left; SW[0] overrides SW[1]
 * 	SW[2]		shifts additional 1's into the HEX displays and LEDR
 * 	SW[3]		shifts additional 0's into the HEX displays and LEDR
 *
 * outputs:
 * 	LEDR		shifting lights
 * 	HEX7-0	shifting pattern
 * 	LEDG		shifting speed (from 0 to 9)
*/
module seg_shift (	CLOCK_50, KEY, SW, HEX3, HEX2, HEX1,
					HEX0, LEDR, LEDG);
	
	/*****************************************************************************
 	*                  Module Parameters, Inputs and Outputs                     *
 	*****************************************************************************/
				
	input CLOCK_50;
	input [2:0] KEY;
	input [3:0] SW; 
	output reg[6:0] HEX3, HEX2, HEX1, HEX0;
	output reg[9:0] LEDR=0;
	output reg[0:7] LEDG=0;
	reg [40:0]init_counter=50000000;
	reg [40:0]counter =50000000;
	reg[3:0] speed;
	initial speed=1;
	integer k;
	reg check=0;
	
	always@(posedge check)
	begin
	
	if(KEY[1]==0&&speed<=7)
	begin
	speed<=speed+1;
	init_counter<=init_counter/2;
	end
	
	else
	begin
	speed<=speed-1;
	init_counter<=init_counter*2;
	end

	end
	
	always@(*)
	begin
	
	case(speed)
	1: LEDG=8'b00000001;
	2: LEDG=8'b00000011;
	3: LEDG=8'b00000111;
	4: LEDG=8'b00001111;
	5: LEDG=8'b00011111;
	6: LEDG=8'b00111111;
	7: LEDG=8'b01111111;
	8: LEDG=8'b11111111;
	default: LEDG=8'b00000000;
	endcase
	
	end
	
	always@(posedge CLOCK_50)
	begin
	
	check = ~KEY[2]|~KEY[1];
	
	if(KEY[0]==0) 
		begin
		LEDR<=10'b0000011111;
		HEX3<=7'b0100100;
		HEX2<=7'b0010010;
		HEX1<=7'b1111111;
		HEX0<=7'b1111111;
		end
	
	else 
		begin
		if(counter>0) 
			counter<=counter-1;
	
		else
			begin
	
				if(SW[0]==1&&SW[1]==0)//shift to right
					begin
						for(k=0; k<9; k=k+1)//LEDR
							LEDR[k]<=LEDR[k+1];
							if(SW[2]==1&&SW[3]==0) LEDR[9]<=1'b1;//+1's
							else if(SW[2]==0&&SW[3]==1) LEDR[9]<=1'b0;//+0's
							else LEDR[9]<=LEDR[0];
							//HEX								
							HEX0[0]<=HEX0[5];
							HEX0[5]<=HEX0[6];
							HEX0[6]<=HEX0[2];
							HEX0[2]<=HEX0[3];
							HEX0[3]<=HEX1[3];
							HEX1[3]<=HEX1[4];
							HEX1[4]<=HEX1[6];
							HEX1[6]<=HEX1[1];
							HEX1[1]<=HEX1[0];
							HEX1[0]<=HEX2[0];
							HEX2[0]<=HEX2[5];
							HEX2[5]<=HEX2[6];
							HEX2[6]<=HEX2[2];
							HEX2[2]<=HEX2[3];
							HEX2[3]<=HEX3[3];
							HEX3[3]<=HEX3[4];
							HEX3[4]<=HEX3[6];
							HEX3[6]<=HEX3[1];
							HEX3[1]<=HEX3[0];
							if(SW[2]==1&&SW[3]==0) HEX3[0]<=0;//+1's
							else if(SW[2]==0&&SW[3]==1) HEX3[0]<=1;//+0's
							else HEX3[0]<=HEX0[0];
							//reset counter
							counter<=init_counter;
					end
	
				else if(SW[0]==0&&SW[1]==1)//shift to left
					begin
						for(k=0; k<9; k=k+1)//LEDR
							LEDR[k+1]<=LEDR[k];
						if(SW[2]==1&&SW[3]==0) LEDR[0]<=1'b1;
						else if(SW[2]==0&&SW[3]==1) LEDR[0]<=1'b0;
						else LEDR[0]<=LEDR[9];
								
						HEX3[0]<=HEX3[1];
						HEX3[1]<=HEX3[6];
						HEX3[6]<=HEX3[4];
						HEX3[4]<=HEX3[3];
						HEX3[3]<=HEX2[3];
						HEX2[3]<=HEX2[2];
						HEX2[2]<=HEX2[6];
						HEX2[6]<=HEX2[5];
						HEX2[5]<=HEX2[0];
						HEX2[0]<=HEX1[0];
						HEX1[0]<=HEX1[1];
						HEX1[1]<=HEX1[6];
						HEX1[6]<=HEX1[4];
						HEX1[4]<=HEX1[3];
						HEX1[3]<=HEX0[3];
						HEX0[3]<=HEX0[2];
						HEX0[2]<=HEX0[6];
						HEX0[6]<=HEX0[5];
						HEX0[5]<=HEX0[0];
					
						if(SW[2]==1&&SW[3]==0) HEX0[0]<=0;//+1's
						else if(SW[2]==0&&SW[3]==1) HEX0[0]<=1;//+0's
						else HEX0[0]<=HEX3[0];
						counter<=init_counter;
					end
					
				else//stall
					begin
						for(k=0; k<=9; k=k+1)//LEDR
							LEDR[k]<=LEDR[k];

							HEX0[0]<=HEX0[0];
							HEX0[5]<=HEX0[5];
							HEX0[6]<=HEX0[6];
							HEX0[2]<=HEX0[2];
							HEX0[3]<=HEX0[3];
							HEX1[3]<=HEX1[3];
							HEX1[4]<=HEX1[4];
							HEX1[6]<=HEX1[6];
							HEX1[1]<=HEX1[1];
							HEX1[0]<=HEX1[0];
							HEX2[0]<=HEX2[0];
							HEX2[5]<=HEX2[5];
							HEX2[6]<=HEX2[6];
							HEX2[2]<=HEX2[2];
							HEX2[3]<=HEX2[3];
							HEX3[3]<=HEX3[3];
							HEX3[4]<=HEX3[4];
							HEX3[6]<=HEX3[6];
							HEX3[1]<=HEX3[1];
							HEX3[0]<=HEX3[0];
							
							counter<=init_counter;
					end	
			end
		end
	end

 	/*****************************************************************************
 	*                  Your implementation										*
 	*****************************************************************************/

	
endmodule


