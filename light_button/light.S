.include "m168.h"

.global	main

main:
    ldi r16, 0b00000001
	out DDRB,r16			; Set PB0 to output
    ldi r16, 0b00000011
	out PORTB,r16			; Set PB0 high and enable pull-up on PB1
loop:
    sbis PINB, 1  ; 
    sbi PORTB, 0  ; If PB1 is low (switch on) turn off PB0

    sbic PINB, 1  ;
    cbi PORTB, 0  ; If PB1 is high (switch off) turn on PB0

    rjmp loop