.include "m168.h"

.global	main

main:
    ldi r16, 0b00000001
	out DDRB,r16			; Set PB0 to output
	out PORTB,r16			; Set PB0 high
	ldi r16, 0b00000101
	out TCCR0B,r16			; Set prescaler to 1024
loop:
	in r17, TCNT0			; If the counter is >= 128
	cpi r17, 200			; branch to dim
	brsh dim				; otherwise continue to light
light:
	sbi PORTB, 0
	rjmp loop
dim:
    cbi PORTB,0
    rjmp loop