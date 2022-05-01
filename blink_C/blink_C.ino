void setup() {
  DDRB |= (1 << 5);
}

void loop() {
  while (1) {
    PORTB |= 0X20;
    _delay_ms(50);
    PORTB &= ~(0X20);
    _delay_ms(50);
  }
}
