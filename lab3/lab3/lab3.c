#include <stdio.h>
#include <math.h>
#include <stdbool.h>

#define white 0xFFFF
#define black 0x0000
#define buffer_addr 0x08000000



void swap(int* x, int* y)
{
	int temp=*x;
	*x=*y;
	*y=temp;
}

 void plot(int x, int y, short color)
{ 
	volatile short *new_addr=(volatile short*)(buffer_addr + (y<<10) + (x<<1));
	*new_addr = color;
}

void clear_screen()
{
	int x;
	for(x=0; x<320; x++)
	{
		int y;
		for(y=0; y<240; y++)
		{
			plot(x, y, black); //black color.
		}
	}
} 

void draw_line(int x0, int y0, int x1, int y1, short color)
{
	bool is_steep=abs(y1-y0)>abs(x1-x0);
	if(is_steep)
	{
		swap(&x0, &y0);
		swap(&x1, &y1);
	}
	if(x0>x1)
	{
		swap(&x0, &x1);
		swap(&y0, &y1);
	}
	int deltax=x1-x0;
	int delaty=abs(y1-y0);
	//int deltaerror=delaty;//deltay/deltax;
	int error=-(deltax/2);//0;
	int y=y0;
	int ystep;
	if(y0<y1) 
		ystep=1;
	else
		ystep=-1;
	short x;
	for (x=x0; x<=x1;x++)
	{
		if(is_steep)
			plot(y, x, color);
		else
			plot(x, y, color);
		error=error+delaty;
		if(error>0)//>0.5
		{
			y=y+ystep;
			error=error-deltax;//error-1;
		}
	}
}

void bounce_line()
{
	clear_screen();
	volatile short *buffer_reg_addr = (volatile short*)0x10003020;
	volatile short *status_reg_addr=(volatile short*)0x1000302C;
	*buffer_reg_addr= 0x00000001;
	bool down=1;
	while(1)
	{
		if(down)
		{
			int y;
			for(y=0; y<=239; y++)
			{
				draw_line(100, y, 200, y, 255);
				while(*(status_reg_addr)&0x00000001!=0x00000000); //this is the delay we need to wait for the next line to draw.
				clear_screen();
				
						
			}
		
			down=0;
			continue;
		}
		else
		{
			int y;
			for(y=239; y>=0; y--)
			{
				draw_line(100, y,200, y, 255);
				while(*(status_reg_addr)&0x00000001!=0x00000000); //this is the delay we need to wait for the next line to draw.
				clear_screen();
				
			}
			
			down=1;
			continue;
		}
	}
}


bool rotate_point(int* x, int* y, double angle_apha)
{
	int r=20;
	*x = *x - 160;
	*y = *y - 120;
	int angle_beta=abs(atan((*y)/(*x)));
	if(*x>0&&*y>=0)
	{
		*x=20*cos(angle_apha+angle_beta);
		*y=20*sin(angle_apha+angle_beta);
	}
	else if(*x<=0&&*y>0)
	{
		*x=-20*cos(angle_beta-angle_apha);
		*y=20*sin(angle_beta-angle_apha);
	}
	else if(*x<0&&*y<=0)
	{
		*x=-20*cos(angle_apha+angle_beta);
		*y=-20*sin(angle_apha+angle_beta);
	}
	else if(*x>=0&&*y<0)
	{
		*x=20*cos(angle_beta-angle_apha);
		*y=-20*sin(angle_beta-angle_apha);
	}
	*x=*x+160;
	*y=*y+120;
	return true;
}

void rotate_line()
{
	int x=180, y=120;
	volatile short *buffer_reg_addr = (volatile short*)0x10003020;
	volatile short *status_reg_addr=(volatile short*)0x1000302C;
	draw_line(160, 120, x, y,255); //inital line. 
	*(buffer_reg_addr)=0x0001;
	while(1)
	{
		while(*(status_reg_addr)&0x00000001!=0x00000000);
		clear_screen();
		rotate_point(&x, &y,30);
		//if(*(status_reg_addr)&0x00000001==0x00000000)
		draw_line(160, 120, x, y,255); 
		clear_screen();
	}
}

//void draw_line(int x0, int y0, int x1, int y1, int color)
//void bounce_line()
//void rotate_line()
int main(void)
{
	//clear_screen();
	//draw_line(1, 1, 100, 50, 255);
	//draw_line(10, 10, 30, 10, 255);
	//bounce_line();
	rotate_line();
	return 0;
}