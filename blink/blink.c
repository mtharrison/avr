#define F_CPU 1000000UL

#include <avr/io.h>
int
main (void)
{
    DDRB = 0b00000001; 
    
    while(1) 
    {
        PORTB = 0b00000001;
    }
}