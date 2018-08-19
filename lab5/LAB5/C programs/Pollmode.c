#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>


/* function prototypes */
void clear_screen();
void bounce_line();
void draw_line(int,int,int,int,short);

volatile int * line_starting_point = (int *) 0x0070000C;
volatile int * line_end_point = (int *) 0x00700010;
volatile short * line_colour = (short *) 0x00700014;
volatile short * go = (short *) 0x00700008;
volatile short * mode = (short *) 0x0070000;


int main(void)
{
    clear_screen();

	bounce_line();


}

void bounce_line()
{
	clear_screen();
	*mode = 0x0001;//Poll mode

	bool down=1;
	while(1)
	{
		if(down)
		{
			int y;
			for(y=0; y<=239; y++)
			{
				(*go) = 0x0000;
				draw_line(100, y, 200, y, 255);
				delay_one_second();
				draw_line(100, y, 200, y, 0);
			}
			down=0;
			continue;
		}
		else
		{
			int y;
			for(y=239; y>=0; y--)
			{
				(*go) = 0x0000;
				draw_line(100, y,200, y, 255);
				delay_one_second();
				draw_line(100, y, 200, y, 0);
			}
			down=1;
			continue;
		}
	}
}

void delay_one_second()
{
	 int time = 0;
      while (time < 1000) time++;
}


// pixel colour 0 is black
// pixel colour 1 is white

void draw_line( int x1, int y1, int x2, int y2, short pixel_color){
	// update the fields needed
    int firstpoint = (y1 << 9) + x1;
    *(line_starting_point) = firstpoint;

    int secondpoint = (y2 << 9) + x2;
    (*line_end_point) = secondpoint;

    // white colour to draw the lines with
    (*line_colour) = pixel_color;

    (*go) = 1;
}

void clear_screen()
{
	int x;
	for(x=0; x<320; x++)
	{
		int y;
		for(y=0; y<240; y++)
		{
			 (*go) = 0x0000;
			plot(x, y, 0); //black color.
		}
	}














