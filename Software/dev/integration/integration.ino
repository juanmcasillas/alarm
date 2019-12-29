/* integration demo
 
 Try to integrate all the modules, in one script

    * Input Zones
    * Relay
    * RFID

*/

    // ESP32 pullup pins:
    // 14, 16, 17, 18, 19, 21, 22, 23 


#include <SPI.h>
#include <MFRC522.h>


//#define NANO 1

#ifdef NANO

#define Z1_PIN   2
#define Z2_PIN   3
#define Z3_PIN   4
#define LED_PIN 13

#define RST_PIN   9      //RST
#define SDA_PIN  10      //SDA(SS)
#define SCK_PIN  13      //SCK  - harcoded in lib
#define MOSI_PIN 11      //MOSI - harcoded in lib
#define MISO_PIN 12      //MISO - harcoded in lib

#define RELAY_PIN 16     // relay circuit (Siren)

#define LHIGH    HIGH
#define LLOW     LOW
#else

// RESERVED

#define Z1_PIN   14 // was before RFID 21
#define Z2_PIN   16 // was before RFID 22
#define Z3_PIN   17 // was before RFID 23
#define LED_PIN  2

#define RST_PIN  22      //RST
#define SDA_PIN  21      //SDA(SS)
#define SCK_PIN  18      //SCK  - harcoded in lib
#define MOSI_PIN 23      //MOSI - harcoded in lib
#define MISO_PIN 19      //MISO - harcoded in lib

#define RELAY_PIN 15    // relay circuit (Siren)

#define LHIGH    LOW
#define LLOW     HIGH
#endif

#define SIREN_DURATION 100 // ms
#define INIT_DELAY 35 * 1000 // ms
#define DELAY 500  // ms

MFRC522 mfrc522(SDA_PIN, RST_PIN);   

byte validKey1[4] = { 0xA0, 0xB1, 0xC2, 0xD3 };  // Example of valid key

bool isEqualArray(byte* arrayA, byte* arrayB, int length) {
  for (int index = 0; index < length; index++) {
    if (arrayA[index] != arrayB[index]) return false;
  }
  return true;
}

void printArray(byte *buffer, byte bufferSize) {
   for (byte i = 0; i < bufferSize; i++) {
      Serial.print(buffer[i] < 0x10 ? " 0" : " ");
      Serial.print(buffer[i], HEX);
   }
}

void setup() {
  //start serial connection
  Serial.begin(115200);

  // RFID init
  SPI.begin();  
  mfrc522.PCD_Init();

  //configure pin 2 as an input and enable the internal pull-up resistor
  pinMode(Z1_PIN,  INPUT_PULLUP);
  pinMode(Z2_PIN,  INPUT_PULLUP);
  pinMode(Z3_PIN,  INPUT_PULLUP);
  pinMode(LED_PIN, OUTPUT);

  // relay - disabled by default
  pinMode(RELAY_PIN, OUTPUT);
  digitalWrite(RELAY_PIN,LLOW);

  Serial.println("Alarm system Starting");
  //delay(INIT_DELAY);
}


void loop() {

  // wifi

  if (mfrc522.PICC_IsNewCardPresent()) {
      if (mfrc522.PICC_ReadCardSerial()) {

        if (isEqualArray(mfrc522.uid.uidByte, validKey1, 4)) {
            Serial.println("Valid Key");
        }
        else {
            Serial.println("Invalid Key");
        }    
        Serial.print(F("Card UID:"));
        printArray(mfrc522.uid.uidByte, mfrc522.uid.size);
        Serial.println();
        mfrc522.PICC_HaltA();
      }
  }

  // read the zones
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

  if (z1 || z2 || z3 == LHIGH) { 
    digitalWrite(LED_PIN, LHIGH);
    
    // launch the relay (to test) if something works
    digitalWrite(RELAY_PIN,LHIGH);
    delay(SIREN_DURATION);
    digitalWrite(RELAY_PIN,LLOW);

  } else {
    digitalWrite(LED_PIN, LLOW);
  }


  // delays and clean ups
  delay(DELAY);
}
