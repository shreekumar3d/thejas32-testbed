// 
// First boot of AtiVEGA board, with THEJAS32
// enabled
//
// Basically powers on the chip and dumps the UART log
//
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/clocks.h"

const uint8_t PICO_LED = 25;

// T_ prefix for pins connected to THEJAS32 from Pico
const uint8_t T_RESETN_PIN = 15;
const uint8_t T_CLK_PIN = 21;
const uint8_t T_BOOTSEL_PIN = 20;
const uint8_t T_BOOT_UART_RX_PIN = 4;
const uint8_t T_BOOT_UART_TX_PIN = 5;

const uint8_t BOOT_MODE_UART = 1;
#define BOOT_UART_ID uart1

// THEJAS32 clock frequency = System Clock/T_CLK_DIV
// Basically slows down THEJAS32 clock by this factor,
// relative to system clock (100 MHz)
const int T_CLK_DIV = 1;

uint8_t led_state = 1;

int main()
{
    // System clock is already running at 100 MHz at this point
    // See CMakeLists.txt for configuration

    // Turn on the Pico LED - this is the only LED on the entire board!
    gpio_init(PICO_LED);
    gpio_set_dir(PICO_LED, GPIO_OUT);
    gpio_put(PICO_LED, led_state);

    // Wait for CDC initialization - refer CMakeLists.txt for maximum
    // wait time.
    stdio_init_all();
    printf("\nAtiVEGA ready\n");
    printf("This is the power on test of THEJAS32.\n");

    // Keep THEJAS32 in reset. The board has a pull down resistor,
    // so strictly speaking this is not required at this time.
    gpio_init(T_RESETN_PIN);
    gpio_set_dir(T_RESETN_PIN, GPIO_OUT);
    gpio_put(T_RESETN_PIN, 0);
   
    // THEJAS32 can boot in "default" mode - throught UART, or
    // by loading code in flash over SPI. This is set via
    // the BOOT_MODE pin - connected to a Pico GPIO pin.
    //
    // Here we choose to boot over UART.  THEJAS has a bootrom
    // that implements XMODEM protocol (with CRC) over UART.
    // After uploading, programs can be run from RAM. This sample
    // won't do that, though!
    gpio_init(T_BOOTSEL_PIN);
    gpio_set_dir(T_BOOTSEL_PIN, GPIO_OUT);
    gpio_put(T_BOOTSEL_PIN, BOOT_MODE_UART);

    // Once THEJAS32 powers on, it will start putting out messages on UART.
    // So we setup UART to capture these messages in advance.
    //
    // We use (strange value?) 195312 baud!  This corresponds to GPIO setting.
    //
    // For this program to work, you need to set GPIO 30 to high.
    // Use a jumper between GPIO30 and the adjacent 3.3V pin.
    // The rest of the GPIOs below will be "floating" state,
    // but mostly they can be considered as 0.
    //
    // GPIO 31 30 29 28 27 26 25
    //       0  1  0  0  0  0  0 => 32 (decimal)
    //
    // THEJAS32 boot loader looks at these GPIOs and
    // sets up the UART baud rate registers
    // = system clock/(16*value)
    // = 100*1e6/(16*32)
    // = 195312.5
    // If T_CLK_DIV is >1, then baud rate of communication will be lower
    // Take care to ensure even division if you can, else what may happen?
    uint sys_clk_rate = clock_get_hz(clk_sys);
    uint baud = (sys_clk_rate/T_CLK_DIV)/(16*32);
    uint baud_achieved = uart_init(BOOT_UART_ID, baud);
    printf("Communicating with THEJAS32 at UART baud=%d (requested: %d)\n", baud_achieved, baud);
    gpio_set_function(T_BOOT_UART_TX_PIN, UART_FUNCSEL_NUM(BOOT_UART_ID, T_BOOT_UART_TX_PIN));
    gpio_set_function(T_BOOT_UART_RX_PIN, UART_FUNCSEL_NUM(BOOT_UART_ID, T_BOOT_UART_RX_PIN));

    uint thejas_clk_rate = sys_clk_rate/T_CLK_DIV;
    printf("Powering on THEJAS32 with clock=%d Hz _after_ three seconds!\n",thejas_clk_rate);
    printf("THEJAS32's boot log will follow after the next line\n");
    printf("=========================================================\n");
    // wait for all the prints to finish - USB can take some time! This is here to avoid
    // any trouble with the USB stack, just in case you decide to eliminate the sleeps
    // below and try doing timing.
    uart_default_tx_wait_blocking();

    // build some suspense - 3...2...1... go!
    for(int i=3;i>=0;i--) {
	if(i>0) {
	    printf("\r%d...",i);
            sleep_ms(1000);
	} else {
	    // erase previous prints
            printf("\r    \r");
        }
        uart_default_tx_wait_blocking();
    }

    // Now, start THEJAS32 clock at 100/CLK_DIV MHz
    clock_gpio_init(T_CLK_PIN, CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_VALUE_CLK_SYS, T_CLK_DIV);

    // Show-time ! Get THEJAS32 out of reset
    gpio_put(T_RESETN_PIN, 1);

    absolute_time_t t_start = get_absolute_time();
    // Dump everything that comes on UART to USB
    int prev_ch = -1;
    int prev2_ch = -1;
    bool ready = false;
    absolute_time_t t_first_ch;
    while(1) {
        if(uart_is_readable(BOOT_UART_ID)) {
	    if(prev_ch==-1) {
                t_first_ch = get_absolute_time();
            }
	    int ch = uart_getc(BOOT_UART_ID);
	    if((!ready) &&
               (ch=='C') && (prev2_ch==13) && (prev_ch==32)) {
                absolute_time_t t_ready = get_absolute_time();
		printf("\n\n==> Ready to receive image %lld microseconds after power on.\n",
                       absolute_time_diff_us(t_start, t_ready));
		printf("==> First char was received %lld microseconds after power on.\n\n",
                       absolute_time_diff_us(t_start, t_first_ch));
		ready = true;
	    }
	    printf("%c",ch);

	    // Toggle LED
	    led_state ^= 1;
	    gpio_put(PICO_LED, led_state);

	    prev2_ch = prev_ch;
	    prev_ch = ch;
	}
    }

    return 0;
}

// Exercises for reader
//
// 1. What is the _lowest_ frequency at which this program can
//    clock THEJAS32 ? Will everything work reliably ?
// 2. How can you overclock THEJAS32 beyond 100 MHz ? What happens?
