
module LDA(steep, start, CLOCK_50, realx0, realy0, realx1, realy1, plot_signal, drawx, drawy);

	input start, CLOCK_50;//to FSM
	input steep;//to datapath
	input[8:0] realx0, realy0, realx1, realy1;//to datapath
	//to VGA controller
	output plot_signal;
	output[8:0] drawx, drawy;

	wire enable_plot, enable_error, enable_x, enable_y, enable_drawx, enable_drawy, reset_plot, enable_yout1, enable_yout2, 
	delta_select, x_select, y_select, error_select, cmpx, cmperror;
	
	LDA_FSM L(cmpx, cmperror, start, enable_plot, enable_error, enable_x, enable_y, enable_drawx, enable_drawy, reset_plot, enable_yout1, enable_yout2, 
	delta_select, x_select, y_select, error_select, CLOCK_50);
	
	LDA_datapath D(steep, delta_select, x_select, y_select, error_select, 
	enable_plot, enable_error, enable_x, enable_y, enable_drawx, enable_drawy, reset_plot, enable_yout1, enable_yout2, realx0, realy0, realx1, realy1,
	plot_signal, drawx, drawy, cmpx, cmperror);


endmodule