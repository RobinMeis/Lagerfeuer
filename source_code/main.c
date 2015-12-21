#define F_CPU 8000000UL

#define MAX_GELB 150
#define MIN_GELB 10
#define MAX_ROT 200
#define MIN_ROT 10

#define DDR_ROT DDRB
#define PORT_ROT PORTB
#define PIN_ROT PB1

#define DDR_GELB DDRB
#define PORT_GELB PORTB
#define PIN_GELB PB0

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

void main(void) {
  DDR_ROT |= (1<<PIN_ROT);
  PORT_ROT |= (1<<PIN_ROT);

  DDR_GELB |= (1<<PIN_GELB);
  PORT_GELB |= (1<<PIN_GELB);

  TCCR0A=(1<<COM0A1) | (1<<WGM00) | (1<<WGM01); //PWM gelb
  TCCR0B=(1<<CS02); //Prescaler 256
  OCR0A=50;

  TCCR1=(1<<COM1A0) | (1<<CTC1) | (1<<PWM1A) | (1<<CS10) | (1<<CS13); //PWM rot
  OCR1A=50;

  while(1) {
    OCR0A=(rand()%(MAX_GELB-MIN_GELB))+MIN_GELB;
    OCR1A=(rand()%(MAX_ROT-MIN_ROT))+MIN_ROT;
  }
}
