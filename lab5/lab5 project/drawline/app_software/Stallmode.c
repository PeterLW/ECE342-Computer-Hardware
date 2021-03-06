#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

/* globals */
#define BUF_SIZE 500000			// about 10 seconds of buffer (@ 48K samples/sec)
#define BUF_THRESHOLD 96		// 75% of 128 word buffer

/*
 
 Lab 5, poll mode tester
 
 */


/* function prototypes */
void clear_screen();
void stallmode();
void draw_line(int,int,int,int,short);


// for the vga status bit 
volatile short * bufferReg = (short *) 0x10003020;	// VGA pixel buffer
volatile short * statusReg = (short *) 0x1000302C;	// VGA pixel buffer


volatile short * waitrequest = (short *) 0x00700004; // Add in address
volatile int * line_starting_point = (int *) 0x0070000C;	
volatile int * line_end_point = (int *) 0x00700010;	
volatile short * line_colour = (short *) 0x00700014;	
volatile short * go = (short *) 0x00700008;	
volatile short * mode = (short *) 0x0070000;


int main(void)
{
    clear_screen();
    
    
    // Part 1
	stallmode();
        
}




// CODE FOR PART 1
void stallmode(){
    
    // set the mode bit = 1, for stall mode
    *mode = 0x0000;
    
	int which_way;
	int x1 = 20, x2 = 40, y =0;
    
	while(1){
        // no need to poll since the peripheral itself will stall the processor
        draw_line(x1,y,x2,y,0);   // draw over the previous line

        // the variable which_way tells us whether to dec or inc the var y
		if (y == 239) which_way = 2; 
		if (y == 0) which_way = 1;
        
		if (which_way ==2) y--;
		else y++;
        
        // draw a new updated white line
        draw_line(x1,y,x2,y,7);
        
	}
}


// pixel colour 0 is black
// pixel colour 1 is white
void draw_line( int x1, int y1, int x2, int y2, short pixel_color){
	// update the fields needed
    int firstpoint = (y1 << 9) + x1;
    *line_starting_point) = firstpoint;
    
    int secondpoint = (y2 << 9) + x2;
    (*line_end_point) = secondpoint;
    
    // white colour to draw the lines with
    (*line_colour) = pixel_color;
    
    (*go) = 1;
}




void clear_screen(){
    int y, time;
    
    for (y = 0; y < 240 y++){
        (*go) = 0x0000;
        time = 0;
        while (time < 20) time++;
        // black screen
        draw_line(0, y, 320, y, 0);
        (*go) = 0x0001;
    }
}










