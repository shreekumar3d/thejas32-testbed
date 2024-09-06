/*
 * Slightly modified T32 example.
 * Toggles LED16
 * Outputs status over UART.
 * See HelloWorld for usage.
 */
/*
  @file timerInterrupt.ino
  @brief timer interrupt demo
  @detail timer interrupt will generate interrupt after every 1 second which change the state of led 
  
  *Aries board Pinout: https://vegaprocessors.in/blog/ultrasonic-sensor-with-thejas-soc/
  *THEJAS32 Peripheral and Interrupt Number : https://cdac-vega.gitlab.io/socoverview/addressmap.html#thejas32-address-map

   NOTE : THEJAS32 SoC has three 32-bits timer peripheral.

   -------------------------------------
   |  Peripheral   |  Interrupt Number  |
   -------------------------------------
   |    Timer-0    |         7          |
   |    Timer-1    |         8          |
   |    Timer-2    |         9          |
   --------------------------------------
*/

#include <Timer.h>
Timer Timer(1);  // timer-1 is in use

volatile int state = 0;
int out_gpio = 16; // toggle GPIO connected to Pico
volatile int toggle_count = 0;
void toggleLed(void){
  state = !state;
  toggle_count++;
  digitalWrite(out_gpio, state); // toggle LED state
}

void setup() {
  pinMode(out_gpio, OUTPUT);
  // put your setup code here, to run once:
  Serial.begin(115200);
//  Timer.initialize(1000000); // initialize timer after every 1 seconds
//  Timer.attachInterrupt(toggleLed); // Specifies a named Interrupt Service Routine (ISR) to call when an interrupt occurs
  Timer.attachInterrupt(toggleLed, 1000000); // Enable timer interrupt in unmasked & default defined mode.
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("Toggling GPIO16 from T32 using timer interrupt. Count = ");
  Serial.println(toggle_count);
  delay(1000);
}
