rm main.elf main.hex
avr-gcc -mmcu=attiny85 -Os -o main.elf *.c
avr-objcopy -O ihex -j .text -j .data main.elf main.hex
avr-size --mcu=atmega8 -C main.elf
avrdude -c avrisp2 -p t85 -U flash:w:main.hex:a
