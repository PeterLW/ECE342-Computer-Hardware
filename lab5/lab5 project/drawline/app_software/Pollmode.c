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
void pollmode();
void draw_line(int,int,int,int,short);

volatile int * line_starting_point = (int *) 0x0070000C;
volatile int * line_end_point = (int *) 0x00700010;
volatile short * line_colour = (short *) 0x00700014;
volatile short * go = (short *) 0x00700008;
volatile short * mode = (short *) 0x0070000;


int main(void)
{
    clear_screen();

    // Part 2
	pollmode();


}




// CODE FOR PART 2
void pollmode(){

    // set the mode bit = 1, for poll mode
    *mode = 0x0001;

	int which_way;
	int x1 = 20, x2 = 40, y =0;
    int time;

	while(1){


        // pause for a bit
        time = 0;
        while (time < 1000) time++;


        // ----------- draw a black line over the previous ---------
        //(*go) = 0x0000;
		while (!(*pollthis & 0x0001)){}
		// here the line drawing has finished

		// here the processor will instruct the peripheral to draw a new line
        draw_line(x1,y,x2,y,0);



		// ----------- update the variables ----------------
		if (y == 239) which_way = 2;
		if (y == 0) which_way = 1;

		if (which_way ==2) y--;
		else y++;



        // ---------------- repeat, this time with a new white line -------
        //(*go) = 0x0000;
		while (!(*pollthis & 0x0001)){}

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

        draw_line(0, y, 320, y, 0);
        (*go) = 0x0001;
    }
}














