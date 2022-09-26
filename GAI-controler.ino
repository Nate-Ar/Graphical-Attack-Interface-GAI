// Nathan Arter
// 09/26/22
// Controller for my GAI
#include <TrinketKeyboard.h>
// pins
#define UP 0
#define DOWN 2
#define LEFT 1
#define RIGHT 3
#define ENTER 4

void setup()
{
  // button pins as inputs
  pinMode(UP, INPUT);
  pinMode(DOWN, INPUT);
  pinMode(LEFT, INPUT);
  pinMode(RIGHT,INPUT);
  pinMode(ENTER, INPUT);

  // setting input pins to high means turning on internal pull-up resistors
  digitalWrite(UP, HIGH);
  digitalWrite(DOWN, HIGH);
  digitalWrite(LEFT, HIGH);
  digitalWrite(RIGHT, HIGH);
  digitalWrite(ENTER, HIGH);
// starts usb
  TrinketKeyboard.begin();
}

void loop()
{
  // lets usb work run every 10ms
  TrinketKeyboard.poll();
  // statments
  if (digitalRead(LEFT)== LOW){
    TrinketKeyboard.pressKey(0,KEYCODE_ARROW_LEFT);
    TrinketKeyboard.pressKey(0,0);
  }
  if (digitalRead(RIGHT)== LOW){
    TrinketKeyboard.pressKey(0,KEYCODE_ARROW_RIGHT);
    TrinketKeyboard.pressKey(0,0);
  }
  if (digitalRead(UP)== LOW){
    TrinketKeyboard.pressKey(0,KEYCODE_ARROW_UP);
    TrinketKeyboard.pressKey(0,0);
  }
  if (digitalRead(DOWN)== LOW){
    TrinketKeyboard.pressKey(0,0);
  }
  if (digitalRead(ENTER)== LOW){
    TrinketKeyboard.pressKey(0,KEYCODE_ENTER);
    TrinketKeyboard.pressKey(0,0);
  }

 
}