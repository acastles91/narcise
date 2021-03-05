#include <RBDdimmer.h>
#include "main.h"
#include <analogWrite.h>

//#define USE_SERIAL  SerialUSB //Serial for boards whit USB serial port
#define USE_SERIAL Serial
//#define outputPin  12
//#define zerocross  5 // for boards with CHANGEBLE input pins

#define pwm1 25
#define pwm2 14
#define zc1 26
#define zc2 27
#define dac1 25
#define dac2 26
#define button 5


int channelA = 12;
int channelB = 14;
int period = 400;
bool fullDim;

int poti = 35;

int brightness = 0;

//dimmerLamp dimmer1(pwm1, zc1); //initialase port for dimmer for ESP8266, ESP32, Arduino due boards
//dimmerLamp dimmer2(pwm2, zc2); //initialase port for dimmer for ESP8266, ESP32, Arduino due boards

volatile int interruptCounter;
volatile bool channelBtrigger;
volatile bool waitBool;
volatile bool tickBool;

int totalInterruptCounter;

hw_timer_t *timer = NULL;
hw_timer_t *timer2 = NULL;

portMUX_TYPE timerMux = portMUX_INITIALIZER_UNLOCKED;

void boolChange(){
  portENTER_CRITICAL(&timerMux);
  waitBool = true;
  portEXIT_CRITICAL(&timerMux);
}

void IRAM_ATTR waitTimerA(){
  portENTER_CRITICAL_ISR(&timerMux);
  if (waitBool){
    digitalWrite(channelB, !digitalRead(channelA));
    waitBool = false;
  }
  portEXIT_CRITICAL_ISR(&timerMux);
}

void IRAM_ATTR triggerTimerA(){
  portENTER_CRITICAL_ISR(&timerMux);
  digitalWrite(channelB, !digitalRead(channelA));
  portEXIT_CRITICAL_ISR(&timerMux);
}

void IRAM_ATTR onTimerA(){
  portENTER_CRITICAL_ISR(&timerMux);
  digitalWrite(channelA, !digitalRead(channelA));
  timerAttachInterrupt(timer2, waitTimerA, true);
  timerAlarmWrite(timer2, (period / 4), true);
  timerAlarmEnable(timer2);
  portEXIT_CRITICAL_ISR(&timerMux);
}


void IRAM_ATTR waitTimerB(){
  portENTER_CRITICAL_ISR(&timerMux);
  if (waitBool){
    digitalWrite(channelB, !digitalRead(channelB));
    waitBool = false;
  }
  portEXIT_CRITICAL_ISR(&timerMux);
}

void IRAM_ATTR triggerTimerB(){
  portENTER_CRITICAL_ISR(&timerMux);
  digitalWrite(channelA, !digitalRead(channelB));
  portEXIT_CRITICAL_ISR(&timerMux);
}

void IRAM_ATTR onTimerB(){
  portENTER_CRITICAL_ISR(&timerMux);
  digitalWrite(channelB, !digitalRead(channelB));
  timerAttachInterrupt(timer2, waitTimerB, true);
  timerAlarmWrite(timer2, (period / 4), true);
  timerAlarmEnable(timer2);
  portEXIT_CRITICAL_ISR(&timerMux);
}




void interruptChannelB(){

  // portENTER_CRITICAL(&timerMux);
  // channelBtrigger = false;
  // portEXIT_CRITICAL(&timerMux);

  // timerAttachInterrupt(timer2, triggerTimer, true);
  // timerAlarmWrite(timer2, (period / 2), false);
  // timerAlarmEnable(timer2);
}

void tickA(){

  tickBool = true;
  timer = timerBegin(0, 80, true);
  timer2 = timerBegin(1, 80, true);
  attachInterrupt(channelA, boolChange, CHANGE);
  timerAttachInterrupt(timer, onTimerA, true);
  timerAlarmWrite(timer, (period / 2), true);
  timerAlarmEnable(timer);
  tickBool = false;

}

void tickB(){
  tickBool = true;
  attachInterrupt(channelB, boolChange, CHANGE);
  timerAttachInterrupt(timer, onTimerB, true);
  timerAlarmWrite(timer, (period / 2), true);
  timerAlarmEnable(timer);
  tickBool = false;
}

void tickOff(){
  detachInterrupt(channelB);
  detachInterrupt(channelA);
  timerStop(timer);
  timerStop(timer2);

}

void toggleSwitch(){
digitalWrite(button, !digitalRead(button));

}

void stupid(int periodArg, int durationArg, int channelAarg, int channelBarg){

  for(int i = 0; i > durationArg; i++){
    digitalWrite(channelAarg, HIGH);
    delayMicroseconds(periodArg/4);
    digitalWrite(channelBarg, digitalRead(channelAarg));
    delayMicroseconds(periodArg/4);
    digitalWrite(channelAarg, !digitalRead(channelAarg));
    delayMicroseconds(periodArg/4);
    digitalWrite(channelBarg, !digitalRead(channelBarg));
    delay(1000);
  }
}


void setup(){

  Serial.begin(115200);

  pinMode(pwm1, OUTPUT);
  pinMode(channelA, OUTPUT);
  pinMode(channelB, OUTPUT);
  pinMode(button, OUTPUT);
  analogWriteFrequency(500);
  analogWriteResolution(10);

  Serial.begin(115200);
  tickBool = false;
  fullDim = false;
  //attachInterrupt(button, tick, HIGH);

  digitalWrite(button, HIGH);

  // attachInterrupt(channelA, boolChange, CHANGE);
  // timerAttachInterrupt(timer, onTimer, true);
  // timerAlarmWrite(timer, (period / 2), true);
  // timerAlarmEnable(timer);
  //timerAlarmEnable(timer2);

  //digitalWrite(channelA, LOW);
  digitalWrite(button, !digitalRead(button));


}

void loop(){

  // for (int i = 0; i < 255; i++){
  //   analogWrite(pwm1, brightness);
  //   brightness ++;
  // }
  // if (brightness == 255){
  //   brightness = 0;
  // }

  //DIMM

if (!fullDim){
  for (int i = 0; i < 50; i ++){
    analogWrite(pwm1, i);
    delay(100);
    Serial.println(i);
  }
  fullDim = true;
}
if (fullDim){
  for (int i = 50; i > 0; i --){
    analogWrite(pwm1, i);
    delay(100);
    Serial.println(i);

  }
  fullDim = false;
}


  //brightness = map(analogRead(poti),0,4095, 0, 255);
  //analogWrite(pwm1, brightness);
  // Serial.print("Brightness: ");
  // Serial.println(brightness);
  // Serial.print("True value: ");
  // Serial.println(analogRead(poti));
  // digitalWrite(pwm1, HIGH);
  // delay(200);
  // digitalWrite(pwm1, LOW);
  // delay(200);

}