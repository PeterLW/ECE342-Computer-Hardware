module ASC(clk, reset, chipselect, address, read, write, writedata, readdata, waitrequest,
           go, done_plot, x0, y0, x1, y1, colour, mode_register, status_register, go_register,
			  line_starting_point, line_end_point, line_colour);
  //in asc 
  input clk, reset, chipselect, read, write;
  input [2:0] address;
  input [31:0] writedata;
  output [31:0] readdata;
  output waitrequest;
  
  //to LDA
  input done_plot;
  output go;
  output [8:0] x0, x1;
  output [7:0] y0, y1;
  output [2:0] colour;
  
  //registers
  output mode_register;
  output status_register;
  output go_register;
  output [16:0] line_starting_point, line_end_point;
  output [2:0] line_colour;
  
  //enable signals
  wire mode_en, status_en, start_en, end_en, colour_en, go_en;
  wire read_mode, read_status, read_go;
  wire [16:0] read_start, read_end;
  wire [2:0] read_colour;

  
  salve_sel reg_sel(.enable(chipselect), .select(address), .mode(mode_en), .status(status_en), 
                    .go(go_en), .line_start(start_en), .line_end(end_en), .line_colour(colour_en));
						  
  register_start reg0(.clk(clk), .reset(reset), .address(address), .write(write), .read(read), .a(writedata[16:0]), 
                  .b(line_starting_point[16:0]), .c(read_start[16:0]), .enable(chipselect));
						
  register_end   reg1(.clk(clk), .reset(reset), .address(address), .write(write), .read(read), .a(writedata[16:0]), 
                  .b(line_end_point[16:0]), .c(read_end[16:0]), .enable(chipselect));
						
  colour reg_colour(.clk(clk), .reset(reset), .address(address), .write(write), .read(read), .a(writedata[2:0]), 
                    .b(line_colour), .c(read_colour), .enable(chipselect));
						  
  go reg_go(.clk(clk), .reset(reset), .address(address), .write(write), .read(read), .a(writedata[0]), 
                     .b(go_register), .c(read_go), .enable(chipselect));
							
  mode reg_mode(.clk(clk), .reset(reset), .address(address), .write(write), .read(read), .a(writedata[0]), 
                .b(mode_register), .c(read_status), .enable(chipselect));
  
  status reg_status(.clk(clk), .reset(reset), .address(address), .write(done_plot), .read(read), 
                    .b(status_register), .c(read_mode), .enable(chipselect));
						  
  read_mux read_sel(
   read,
   clk,
	{31'b0,mode_register},
	{31'b0,status_register},
	{31'b0,go_register},
	{15'b0,line_starting_point},
	{15'b0,line_end_point},
	{29'b0,line_colour},
	address,
	readdata);
  
  /*
  always@(posedge clk)
    begin
	   if(go_register == 1 & mode_register==0)
		  waitrequest = ~done_plot;
	   else
        waitrequest = 0;		
	 end
  */
  
  assign x0 = line_starting_point[8:0];
  assign y0 = line_starting_point[16:9];
  assign x1 = line_end_point[8:0];
  assign y1 = line_end_point[16:9];
  assign go = go_register;
  assign colour = line_colour;
  assign waitrequest = (go_register == 1 & mode_register==0) ? ~done_plot : 0;
  
  
	 
endmodule
	 
	 