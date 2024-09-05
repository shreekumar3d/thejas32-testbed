#include <stdio.h>
#include "pico/stdlib.h"
#include "measure.pio.h"
#include "autobaud.h"

#define BOOT_DELAY 80 // millisecond reference for 100 MHz
#define BASE_CLK_RATE 100*1000*1000LL
#define C_DELAY_MIN 0.1f // min wait in "CCCCC" state of XMODEM protocol
#define C_DELAY_MAX 0.25f // max wait in "CCCCC" state of XMODEM protocol
static PIO pio = pio0;
static uint offset;
static uint sm;

void autobaud_init(uint8_t rx_pin, uint T_CLK_DIV)
{
    offset = pio_add_program(pio, &measure_program);
    sm = pio_claim_unused_sm(pio, true);
    measure_program_init(pio, sm, offset, rx_pin, T_CLK_DIV);
}

static bool get_bit_span(uint* count, int T_CLK_DIV)
{
    *count = 0;
    absolute_time_t t_start = get_absolute_time();
    absolute_time_t t_wait_end = delayed_by_ms(t_start, 2000*T_CLK_DIV);
    while(pio_sm_is_rx_fifo_empty(pio,sm)) {
	    absolute_time_t t_cur = get_absolute_time();
	    if(absolute_time_diff_us(t_cur, t_wait_end)<0) {
		printf("Timeout %lld %lld %lld\n", t_cur, t_wait_end, t_start);
		return false;
            }
    }

    uint bs;
    // process high to low
    bs = pio_sm_get_blocking(pio, sm);
    bs = 0xffffffff - bs;
    bs = bs*2; // inner loop is two instructions
    bs++; // and the mov null
    *count = bs;
    return true;
}

int autodetect_baud_rate(uint sys_clk_rate, int T_CLK_DIV)
{
    uint measured_baud = 0;
    //uart_deinit(T_BOOT_UART_ID);
    pio_sm_set_enabled(pio, sm, false); // stop program
    pio_sm_set_enabled(pio, sm, true); // start program

    uint total_delay = (((BOOT_DELAY*T_CLK_DIV*(BASE_CLK_RATE/1000))/(sys_clk_rate/1000))/1000)+1;
    printf("Waiting for initial phase - %d sec...\n",total_delay);
    // give time for the initial CDAC prints phase to pass
    for(uint i=0;i<total_delay;i++) {
        sleep_ms(1000);
	printf("%4d\r",i);
    }

    printf("\nMeasuring baud rate...\n");

    uint count;
    if(!get_bit_span(&count, T_CLK_DIV)) {
      printf("Baud rate detect failed - 1\n");
      return 0;
    }
    //printf("State length %u\n",count); // debug print

    uint delay_min = sys_clk_rate*C_DELAY_MIN;
    uint delay_max = sys_clk_rate*C_DELAY_MAX;
    while(1) {
            // count is in units of system clock cycles, roughly
            if(!get_bit_span(&count, T_CLK_DIV)) {
              printf("Baud rate detect failed - 2\n");
              return 0;
	    }
	    //printf("clk=%u State length %u, range=%u to %lu\n", sys_clk_rate, count, delay_min, delay_max); // debug print
	    if((count>delay_min)&&(count<delay_max)) { // pulse 150<ms<200?
	        // next is stop bit
                if(!get_bit_span(&count, T_CLK_DIV)) {
                  printf("Baud rate detect failed - 3\n");
                  return 0;
	        }
		// count corresponds to length of stop bit
		measured_baud = sys_clk_rate/(count*T_CLK_DIV);
		break;
	    }
	    // this 
    }
    pio_sm_set_enabled(pio, sm, false); // stop program
    printf("Measured baud rate=%d\n", measured_baud);
/*
    uint baud_achieved = uart_init(T_BOOT_UART_ID, measured_baud);
    printf("Achieved baud rate=%d\n", baud_achieved);

    gpio_set_function(T_BOOT_UART_TX_PIN, UART_FUNCSEL_NUM(T_BOOT_UART_ID, T_BOOT_UART_TX_PIN));
    gpio_set_function(T_BOOT_UART_RX_PIN, UART_FUNCSEL_NUM(T_BOOT_UART_ID, T_BOOT_UART_RX_PIN));
*/
    return measured_baud;
}
