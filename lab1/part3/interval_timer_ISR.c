#include "key_codes.h" 	// defines values for KEY1, KEY2

extern volatile int key_pressed;
extern volatile int pattern;
/*****************************************************************************
 * Interval timer interrupt service routine
 *                                                                          
 * Shifts a PATTERN being displayed on the HEX displays. The shift direction 
 * is determined by the external variable KEY_PRESSED.
 * 
******************************************************************************/
void interval_timer_isr( )
{
	volatile int * interval_timer_ptr = (int *) 0x10002000;
	volatile int * HEX3_HEX0_ptr	= (int *) 0x10000020;	// HEX3_HEX0 address
	volatile int * HEX7_HEX4_ptr	= (int *) 0x10000030;	// HEX7_HEX4 address
	volatile int * LEDR_ptr = (int *)0x10000000;
	*(interval_timer_ptr) = 0; 				// Clear the interrupt

	*(HEX3_HEX0_ptr) = pattern;				// display pattern on HEX3 ... HEX0
	*(HEX7_HEX4_ptr) = pattern;				// display pattern on HEX7 ... HEX4
	* LEDR_ptr=pattern;
	/* rotate the pattern shown on the HEX displays */
	if (key_pressed == KEY2){	// for KEY2 rotate left
		displayTextLCD("RIGHT");
		if (pattern & 0x80000000)
			pattern = (pattern << 1) | 1;
		else
			pattern = pattern << 1;	
		}			
	else if (key_pressed == KEY1){				// for KEY1 rotate right
		displayTextLCD("LEFT");
		if (pattern & 0x00000001)			
			pattern = (pattern >> 1) | 0x80000000;
		else
			pattern = (pattern >> 1) & 0x7FFFFFFF;
		}

	return;
}

void displayTextLCD(char * text_ptr)
{
  	volatile char * LCD_display_ptr = (char *) 0x10003050;	// 16x2 character display

	while ( *(text_ptr) )
	{
		*(LCD_display_ptr+1) = *(text_ptr);	// write to the LCD data register
		++text_ptr;
		
	}
}