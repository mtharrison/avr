asm:
	avr-gcc blink.S -mmcu=atmega168 -Os -g -o blink.out
c:
	avr-gcc -mmcu=atmega168 -Wall -Os -o blink.out blink.c
convert:
	avr-objcopy -j .text -j .data -O ihex blink.out blink.hex
term:
	avrdude -p m168 -c avrisp -t -P /dev/cu.usbmodem1421 -b 19200
upload:
	avrdude -p m168 -c avrisp -P /dev/cu.usbmodem1421 -b 19200 -e -U flash:w:blink.hex
flashasm: asm convert upload


# .include "m168.h"

# rjmp init

# init:
# 	ldi r16, 0b00000001
#     out DDRB, r16
#     .global main

# main:
#     ldi r16, 0b00000001
#     out PORTB, r16
#     rjmp main