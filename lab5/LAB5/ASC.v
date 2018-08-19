module ASC(
			address,
			chipselect,
			Color_signal,
			waitrequest_signal,
			read,
			write,
			readdata,
			writedata,
			CLOCK_50,
			Reset,
			done,
			Go_signal,
			X0,
			Y0,
			X1,
			Y1
			);
			
			
		/* Note: We need to assert chip_select signal whenever the transfer is active, need to confirm if it's active low or active high. */
		
		input read,write,CLOCK_50,Reset;
		input chipselect;
		input done;
		input [2:0] address;
		input [31:0] writedata;
		output reg [31:0] readdata;
		reg waitrequest;
		initial waitrequest = 1'b0;
		output waitrequest_signal;
		assign waitrequest_signal = waitrequest;
		output Go_signal;
		reg Go;
		initial Go = 1'b0;
		assign Go_signal = Go;
		
		reg unsigned [31:0] Mode_Register,Status_Register,Line_ending_point,Line_starting_point;
		reg unsigned [31:0]Go_Register;
		reg [31:0] Line_color;
		initial Mode_Register = 1; //Poll Mode
		initial Status_Register = 1; //can draw line.
		initial Go_Register = 0; //the master has not decided to draw line yet, if even it is allowed. (i.e. Status_Register = 1)
		initial Line_starting_point = 0;
		initial Line_ending_point = 0;
		
		output [2:0]Color_signal;
		assign Color_signal = Line_color[2:0];
		
		/*	Key point to remember: We need to update each register at each cycle to aviod latch !!!!! */
		
		parameter 
					 poll_mode = 2'b00,
					 stall_mode = 2'b01;
					 
		output [8:0] X0,X1;
		output [7:0] Y1,Y0;
		assign X0 = Line_starting_point[8:0];
		assign X1 = Line_ending_point[8:0];
		assign Y0 = Line_starting_point[16:9];
		assign Y1= Line_ending_point[16:9];
		
		reg [1:0] nstate;
		reg [1:0] pstate;
		initial pstate = poll_mode;
		wire stall_mode_enable;
		wire poll_mode_enable;
		assign stall_mode_enable = (pstate == stall_mode);
		assign poll_mode_enable = (pstate == poll_mode);
		
	
		/* FSM for stall mode ! */
		always@(*)
			begin
				case(pstate)
				
					poll_mode:
						begin
							if(Mode_Register == 1 && waitrequest == 1'b0)
								nstate = poll_mode;
							else if(Mode_Register == 0 || waitrequest_signal == 1'b1)
								nstate = stall_mode;
						end
						
					stall_mode:
						begin
							if(done)
								nstate = poll_mode;
							else
								nstate = stall_mode;
						end
							
					default:
						nstate = poll_mode;
					endcase
				end
				
															
															
		/* Here we set register values, depending on the current peripheral operation mode.

	When Go_Register =1, it simply means that the processor wants to draw lines. If in stall mode, the writing to the Go_Register stalls. 
	If in poll mode, the peripheral system will not allow the processor to initiate until the processor fetch value 1 from status_Register. And 
	status_Register is never used in stall mode.
	
	In addition, there are two ways to get into Stall_mode:
		1. write to Go_Register
		2. Write to Mode_Register to 0.
														*/
			
		always@(posedge CLOCK_50 or negedge Reset)
			begin
				if(!Reset)
					begin
						Go_Register <= 0;
						Mode_Register <= 0; //default operation mode is stall mode. 
						Status_Register <= 0; //meaning that the master can not draw lines.
						Line_starting_point <= 0;
						Line_ending_point <= 0;
						Line_color <= 0;	
						Go <= 1'b0;
						waitrequest <= 1'b1;
					end
					
			else if(stall_mode_enable) //in this mode, all register values rmain constant.
					begin
						Mode_Register <= Mode_Register;
						Status_Register <= 0; //here we set Status_Register to be 0 so that the peripheral system doesn't allow the processor to draw more lines.
						waitrequest <= 1'b1;
						readdata <= 0; //meaning that there is no output value from the slave.
						Go_Register <= Go_Register;
						Line_color <= Line_color;
						Line_ending_point <= Line_ending_point;
						Line_starting_point <= Line_starting_point;
						Go <= 1'b0;
					end
				else if(poll_mode_enable)
					begin
						//Mode_Register[31:1] <= 0;
						//Mode_Register[0] <= 1;
						
						Status_Register[31:1] <= 0;
						Status_Register[0] <= 1; //once in Poll_mode, we enable it so that the processor can initiate line drawing.
						
						if(!chipselect) //if it's active low. It should be 1 when the system is in stall mode. 
							begin
							
								if(read) //For reading, we obtain the signal from the master and return requried value within the same cycle.
										begin
											case(address)
											3'b000:  //Mode_Register
												begin
													readdata <= Mode_Register;
												end
											3'b001: //Status_Register
												begin
													readdata <= Status_Register;
												end
											3'b010: //Go_Register
												begin
													readdata <= Go_Register;
												end
											3'b011:  //Line_starting_point
												begin
													readdata <= Line_starting_point;
												end
											3'b100: //Line_ending_point
												begin
													readdata <= Line_ending_point;
												end
											3'b101: //Line_color:
												begin
													readdata <= Line_color;
												end
												
											default:
												begin
												end
											endcase
											
											waitrequest <= 1'b0;
											Mode_Register[31:1] <= 0;
											Mode_Register[0] <= 1;
											Go <= 1'b0; //meaning that the master has not started to initiate LDA circuit.
											Line_ending_point <= Line_ending_point;
											Line_starting_point <= Line_starting_point;
											Go_Register <= Go_Register;
											Line_color <= Line_color;
													
										end
								else if(write)
										begin
											case(address)
											
											3'b000: //Mode_Register
													begin
														waitrequest <= 1'b0;
														Mode_Register <= writedata;
														readdata <= 0; //meaning that there is no output value from the slave.
														Go <= 1'b0;
														Line_ending_point <= Line_ending_point;
														Line_starting_point <= Line_starting_point;
														Line_color <= Line_color;
														
													end 
													
												3'b010: //Go_Register, since it's in Poll mode, we are free to write data to Go_Register.
														begin
															readdata <= 0;
															Go_Register <= writedata;//this makes the master initiaze the LDA circuit. 
															Go <= 1'b1; //the value of Go is directly depend on Go_Register, once the register value is not 0, then we assign Go to 1.
															waitrequest <= 1'b1; //since upon this cycle, the LDA circuit will be initiated.
															Line_ending_point <= Line_ending_point;
															Line_starting_point <= Line_starting_point;
															Line_color <= Line_color;
															
															//since upon this cycle, the state will be stall mode, so need to set Mode_Register to be 0 to indicate it.
															Mode_Register[31:1] <= 0;
															Mode_Register[0] <= 0;
														end
												
												3'b011: //Line_starting_point
													begin
														Line_starting_point <= writedata;
														readdata <= 0; //meaning that there is no output value from the slave.
														Go <= 1'b0;
														waitrequest <= 1'b0;
														Line_ending_point <= Line_ending_point;
														Line_color <= Line_color;
														Go_Register <= Go_Register;
														Mode_Register[31:1] <= 0;
														Mode_Register[0] <= 0;
													end
												3'b100: //Line_ending_point
													begin
														Line_ending_point <= writedata;
														readdata <= 0; //meaning that there is no output value from the slave.
														Go <= 1'b0;
														waitrequest <= 1'b0;
														Line_color <= Line_color;
														Line_starting_point <= Line_starting_point;
														Go_Register <= Go_Register;
														Mode_Register[31:1] <= 0;
														Mode_Register[0] <= 0;
													end
												3'b101: //Line_color
													begin
														Line_color[2:0] <= writedata[2:0];
														Line_color[31:3] <= writedata[31:3];
														readdata <= 0; //meaning that there is no output value from the slave.
														Go <= 1'b0;
														Line_ending_point <= Line_ending_point;
														Line_starting_point <= Line_starting_point;
														Go_Register <= Go_Register;
														Mode_Register[31:1] <= 0;
														Mode_Register[0] <= 0;
													end
									default:
										begin
													Mode_Register <= Mode_Register;
													Go <= Go;
													readdata <= 0;
													Line_ending_point <= Line_ending_point;
													Line_starting_point <= Line_starting_point;
													Go_Register <= Go_Register;
													Line_color <= Line_color;
										end
								endcase
							end
						end //for chipselect
					end //for poll_mode
				end
						
				
						
		/* State Transition */		
		always@(posedge CLOCK_50 or negedge Reset)
			begin
				if(!Reset)
					pstate <= stall_mode;
				else
					pstate <= nstate;
			end
					
endmodule 

	/*3'b000: //Mode_Register
													begin
														waitrequest <= 1'b0;
														Mode_Register <= writedata;
														readdata <= 0; //meaning that there is no output value from the slave.
														Go <= Go;
														Line_ending_point <= Line_ending_point;
														Line_starting_point <= Line_starting_point;
														Line_color <= Line_color;
														
													end */
													
											/*	3'b001: //Status_Register
													begin
													waitrequest <= 1'b0;
													Status_Register <= writedata;
													readdata <= 0; 
													Go <= Go;
													Line_ending_point <= Line_ending_point;
													Line_starting_point <= Line_starting_point;
													Line_color <= Line_color;
													end*/