/* This blinks the LED */
#define PIN D7
#define RATE 10

#include "application.h"
void setup();
void loop();
#line 6 "/workspace/input.ino"

void setup() {
  pinMode(PIN, OUTPUT);
}

void loop() {
  static int state = LOW;
  digitalWrite(PIN, state);
  state = !state;
  delay((int)(1000 / RATE));
}
