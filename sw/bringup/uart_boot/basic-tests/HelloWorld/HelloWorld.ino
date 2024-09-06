/*

What this program does ? Two things.

1. It toggles GPIO16 on T32
2. Pico will pickup the GPIO value and reflect it on its LED. Thus,
   you will see the LED blink
3. Additionally, messages are printed on UART at 115200 baud. You
   should see them on serial terminal.

How to run this on AtiVEGA ?

First, build it with Arduino. Install Aries board support. Choose Aries v3
as development board.

Enable command dump. That will tell you where in /tmp it
get built. Typically something like /tmp/arduino_build_170089/HelloWorld.ino.bin

For my hacky convenience, the bin file is included in
this repo. It's small, and the conveniences outweigh the benefits.

Ensure that uart_boot is loaded into pico.

Then, once the LED starts blinking, use the following command. Make sure that no
serial emulator is running on the Pico's ACM port. If it is, uart access will clash
and results are unpredictable.  Mostly, it won't work. So, close any other program
that is using the Pico. The LED blink is a sufficient indication that the T32
is ready to receive the binary.

~/.arduino15/packages/vega/tools/vegaxmodem/002/xmodem.bat /dev/ttyACM0 HelloWorld.ino.bin

This will typically prompt for sudo password, then upload. And you shoud see the LED
blinking quite fast (5 Hz). Also, if you start a serial terminal you'll see the 
messages.

*/

int out_gpio = 16;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(out_gpio, OUTPUT);
}


int iter = 0;
void loop() {

  Serial.print("Hello, world from T32! Iter=" );
  Serial.println(iter);
  iter++;
  digitalWrite(out_gpio,iter&1);
  delay(100);
}
