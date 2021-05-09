#include <iostream>
#include <vector>
#include <RBDdimmer.h>
#include "main.h"
#include <analogWrite.h>
#include <stdlib.h>
//#include "esp32/RBDmcuESP32.h"
//#include "scriptTestTest.h"


//#define USE_SERIAL  SerialUSB //Serial for boards whit USB serial port
#define USE_SERIAL Serial
//#define outputPin  12
//#define zerocross  5 // for boards with CHANGEBLE input pins

//PINOUT

#define pwm1 27
#define pwm2 27
#define zc1 26
#define zc2 27
#define dac1 25
#define dac2 26
#define button 5

#define ch1 25  //not ok
#define ch2 13  //ok
#define ch3 26  //ok
#define ch4 21  //ok
#define ch5 27  //ok
#define ch6 19  //ok
#define ch7 14  //not ok
#define ch8 18  //ok
#define ch9 12  //ok
#define ch10  5 //ok

//#define TIMER
#define TROUBLE

std::vector<int> layers {ch1, ch2, ch3, ch4, ch5, ch6, ch7, ch8, ch9, ch10};
std::vector<int> channels {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

const int freq = 500;
const int ledChannel = 0;
const int resolution = 8;

int channelA = 12;
int channelB = 14;
int period = 400;
bool fullDim;
int poti = 35;
int brightness = 0;
int maxIndex;
volatile int indexBrightness = 0;
volatile bool niceFlag = false;

volatile int interruptCounter;
volatile bool channelBtrigger;
volatile bool waitBool;
volatile bool tickBool;

int layersSize = (int)layers.size();

int totalInterruptCounter;

hw_timer_t * timer = NULL;
hw_timer_t * timer2 = NULL;

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

void IRAM_ATTR finalTrigger(){
  portENTER_CRITICAL_ISR(&timerMux);
  for (int i = 0; i < layers.size(); i ++){
    ledcWrite(channels[i], finalLines[indexBrightness][i]);
    }
    indexBrightness ++;
    niceFlag = true;
    
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
  // attachInterrupt(channelA, boolChange, CHANGE);
  // timerAttachInterrupt(timer, onTimerA, true);
  // timerAlarmWrite(timer, (period / 2), true);
  // timerAlarmEnable(timer);
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

  #include "codeFile"

  Serial.begin(115200);

  for (int i = 0; i < layers.size(); i++){
    pinMode(layers[i], OUTPUT);
    //ledcSetup(channels[i], 100, resolution);
    ledcSetup(channels[i], refreshRate, resolution);
    ledcAttachPin(layers[i], channels[i]);
  }

  #ifdef TROUBLE

  ledcSetup(1, 100, resolution);
  ledcAttachPin(ch1, ch1);

  #endif




  #ifdef  TIMER

    timer = timerBegin(0, 80, true);
    timerAttachInterrupt(timer, &finalTrigger, true);
    timerAlarmWrite(timer, refreshRate * 1000, true);
    timerAlarmEnable(timer);

  #endif

  pinMode(channelA, OUTPUT);
  pinMode(channelB, OUTPUT);
  pinMode(button, OUTPUT);

  analogWriteFrequency(refreshRate);
  analogWriteResolution(8);

  tickBool = false;
  fullDim = false;
  //attachInterrupt(button, tick, HIGH);

  digitalWrite(button, HIGH);

  digitalWrite(button, !digitalRead(button));
  
  maxIndex = (int)finalLines.size();


}

void loop(){

  //ledcWrite(channels[1], 1);

  // for (int i = 0; i < 255; i++){
  //   analogWrite(layers[1], i);
    
  //   //ledcWrite(channels[1], i);
  //   Serial.println(i);
  //   delay(2000);
  // }

#ifdef TROUBLE

ledcWrite(ch1, 255);
delay(1000);
ledcWrite(ch1, 0);
delay(1000);

#endif


#ifdef TIMER

  if (niceFlag == true){
    Serial.println(indexBrightness);
    //Serial.println(maxIndex);
    niceFlag = false;
  }

  if (indexBrightness == maxIndex){

    if (repeatBool){
      portENTER_CRITICAL(&timerMux);
      indexBrightness = 0;
      portEXIT_CRITICAL(&timerMux);
    }
    else{

      timerDetachInterrupt(timer);
    }
  }

#endif

}





