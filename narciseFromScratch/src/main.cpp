#include <RBDdimmer.h>

#define USE_SERIAL  SerialUSB //Serial for boards whith USB serial port
//#define USE_SERIAL  Serial
#define outputPin  12 
#define zerocross  5 // for boards with CHANGEBLE input pins

dimmerLamp dimmer(outputPin, zerocross); //initialase port for dimmer for ESP8266, ESP32, Arduino due boards

int buttonRed = 0;

void setup() {
  dimmer.begin(NORMAL_MODE, ON); //dimmer initialisation: name.begin(MODE, STATE) 
  dimmer.setPower(50);
  pinMode(13, INPUT);
}

void loop() {
  buttonRed = digitalRead(13);  
  if (buttonRed == 1)
  {
    delay(10);
    dimmer.setState(ON); //name.setState(ON/OFF);
  }  
  if (buttonRed == 0)
  {
    delay(10);
    dimmer.setState(OFF); //name.setState(ON/OFF);
  }
}