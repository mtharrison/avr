flash: asm convert upload
asm:
	avr-gcc light.S -mmcu=atmega168 -Os -g -o light.out
convert:
	avr-objcopy -j .text -j .data -O ihex light.out light.hex
term:
	avrdude -p m168 -c avrisp -t -P /dev/cu.usbmodem1411 -b 19200
upload:
	avrdude -p m168 -c avrisp -P /dev/cu.usbmodem1411 -b 19200 -e -U flash:w:light.hex
