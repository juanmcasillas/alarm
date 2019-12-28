/*
  Input Pull-up Serial

  This example demonstrates the use of pinMode(INPUT_PULLUP). It reads a digital
  input on pin 2 and prints the results to the Serial Monitor.

  The circuit:
  - momentary switch attached from pin 2 to ground
  - built-in LED on pin 13

  Unlike pinMode(INPUT), there is no pull-down resistor necessary. An internal
  20K-ohm resistor is pulled to 5V. This configuration causes the input to read
  HIGH when the switch is open, and LOW when it is closed.

  created 14 Mar 2012
  by Scott Fitzgerald

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/InputPullupSerial
*/

    // ESP32 pullup pins:
    // 14, 16, 17, 18, 19, 21, 22, 23 

//#define NANO 1

#ifdef NANO

#define Z1_PIN   2
#define Z2_PIN   3
#define Z3_PIN   4
#define LED_PIN 13
#define LHIGH    HIGH
#define LLOW     LOW
#else

#define Z1_PIN   21
#define Z2_PIN   22
#define Z3_PIN   23
#define LED_PIN  2
#define LHIGH    LOW
#define LLOW     HIGH
#endif

#define INIT_DELAY 35 * 1000 // ms
#define DELAY 500  // ms

void setup() {
  //start serial connection
  Serial.begin(115200);
  //configure pin 2 as an input and enable the internal pull-up resistor
  pinMode(Z1_PIN,  INPUT_PULLUP);
  pinMode(Z2_PIN,  INPUT_PULLUP);
  pinMode(Z3_PIN,  INPUT_PULLUP);
  
  pinMode(LED_PIN, OUTPUT);
  Serial.println("Waiting the Initial delay");
  //delay(INIT_DELAY);
}


void loop() {
  //read the pushbutton value into a variable
  int z1 = digitalRead(Z1_PIN);
  int z2 = digitalRead(Z2_PIN);
  int z3 = digitalRead(Z3_PIN);
  
  //print out the value of the pushbutton
  char buff[512];
  sprintf(buff,"Z1=%d, Z2=%d, Z3=%d", z1, z2, z3);
  Serial.println(buff);

  // Keep in mind the pull-up means the pushbutton's logic is inverted. It goes
  // HIGH when it's open, and LOW when it's pressed. Turn on pin 13 when the
  // button's pressed, and off when it's not:

  if (z1 || z2 || z3 == HIGH) { 
    digitalWrite(LED_PIN, LHIGH);
  } else {
    digitalWrite(LED_PIN, LLOW);
  }

  delay(DELAY);
}
