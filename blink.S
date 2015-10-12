.include "m168.h"

rjmp init

init:
	ldi r16, 0b10000000
    out DDRD, r16
    .global main

main:
    ldi r16, 0b10000000
    out PORTD, r16
    rjmp main