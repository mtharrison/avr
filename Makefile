asm:
	avr-gcc blink.S -mmcu=atmega168 -Os -g -o blink.out
c:
	avr-gcc -mmcu=atmega168 -Wall -Os -o blink.out blink.c
convert:
	avr-objcopy -j .text -j .data -O ihex blink.out blink.hex
term:
	avrdude -p m168 -c avrisp -t -P /dev/cu.usbmodem1411 -b 19200
upload:
	avrdude -p m168 -c avrisp -P /dev/cu.usbmodem1411 -b 19200 -e -U flash:w:blink.hex
