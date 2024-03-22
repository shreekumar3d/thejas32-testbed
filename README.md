# Status

WIP : This project is work in progress. This line will be removed at
an appropriate time.  Till then, read very carefully :)

The schematics and placement are being done, with reviews.  Footprint
creation also happening.

#  Intro

CDAC sells the ARIES series of boards based on the THEJAS32 microcontroller.
The boards can be programmed using the Arduino IDE. Unfortunately, the schematics
of these are not made available.  Documentation about the THEJAS32 SoC itself
is scarce as well, though the chip itself is available for purchase on robu.in
in single quantity.

This project (and follow on work) will try to fill this gap, as I find more.
This is a board design for a learner board based on the THEJAS32
microcontroller. It will probably be the first open source board based on 
the THEJAS32. This is part of a much larger effort to document THEJAS32 
and its ecosystem and make it usuable.

THEJAS32 runs directly on an external clock, offering a single core 100
MHz RISC-V CPU with a IO interfaces - UART, SPI, I2C, PWM and GPIOs.

This board sets up THEJAS32 a test microcontroller, controlled by 2 Raspberry
Pi Picos.  Some of the IO interfaces are routed to the RP2040s.  This opens
the door for many types of experimentation and learning, including clock
control, timing, peripheral emulation, etc.

# Design

The board consists of a few main elements

* THEJAS32 SoC
* 2 MB flash (used by THEJAS32)
* 2x Raspberry Pi Pico - Master and Slave
* 2x Mini 360 DC-DC power modules - one to generate core voltage of 1.2V, other for 3.3V

Precise measurement of power draw of the THEJAS32 is also a goal of this board.

The core of the board consists of

* THEJAS32 SoC
* 2 MB flash

The power and boot cycle of the THEJAS32 ("MCU") is primarily controlled 
using a few pins

* active low RESET can be pulled up by Master Pico to get it out of reset
* System clock is generated from a GPOUT capable pin of the Pico Master. System 
  clock can thus be generated in many ways
* BOOT_SEL pin is controlled by Master Pico, allowing boot from SPI flash
  or UART.
* BOOT UART (UART0) is routed to Master Pico, enabling log capture and 
  programming

The Slave Pico's boot is controlled via the RUN pin from the master as well.

Pins and interfaces are broken out into standard 0.1" headers. Dual
row headers are mostly employed. When shorted, the interface gets routed from
the MCU to the RP2040. This enables advanced experimentation, precise timing,
peripheral emulation, co-processing, etc.

# Tools

Based on KiCAD 8.

# Checkout Instructions

This project uses git submodules. To checkout everything, do:

    git clone --recurse-submodules https://github.com/shreekumar3d/thejas32-testbed.git

Raspberry Pi Pico footprint is a submodule.  If you don't go this, you'll not
see the nice Pico in the 3D preview.
