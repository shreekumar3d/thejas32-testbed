#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/clocks.h"
#include "hardware/pll.h"
#include "measure.pio.h"

#define BOOT_DELAY 3
#define DIV_FACTOR 1
#define BOOT_MODE_SPI 0
#define BOOT_MODE_UART 1
#define BOOT_MODE BOOT_MODE_UART // 1 - default mode(UART boot), 0 - SPI Flash
const uint8_t LED = 25;
const uint8_t T_RESETN_PIN = 15;
const uint8_t T_CLK_PIN = 21;
const uint8_t T_BOOTSEL_PIN = 20;
const uint8_t T_BOOT_UART_RX_PIN = 4;
const uint8_t T_BOOT_UART_TX_PIN = 5;
const uint8_t T_GPIO16 = 2;
const uint8_t T_GPIO00 = 3;

#define T_BOOT_UART_ID uart1

PIO pio = pio0;
uint offset;
uint sm;

uint8_t led_state = 0;
void toggle_led(void)
{
        led_state ^= 1;
        gpio_put(LED, led_state);
}

bool get_bit_span(uint* count)
{
    *count = 0;
    absolute_time_t t_start = get_absolute_time();
    absolute_time_t t_wait_end = delayed_by_ms(t_start, 2000*DIV_FACTOR);
    while(pio_sm_is_rx_fifo_empty(pio,sm)) {
            absolute_time_t t_cur = get_absolute_time();
            if(absolute_time_diff_us(t_cur, t_wait_end)<0) {
                printf("Timeout %lld %lld\n", t_cur, t_wait_end);
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
bool autodetect_baud_rate(void)
{
    uint measured_baud = 0;
    //uart_deinit(T_BOOT_UART_ID);
    printf("AUTO Waiting for initial phase - %d sec...\n",BOOT_DELAY*DIV_FACTOR);
    // give time for the initial CDAC prints phase to pass
    for(int i=0;i<BOOT_DELAY*DIV_FACTOR;i++) {
        sleep_ms(1000);
        printf("%4d\r",i);
    }
    printf("\nMeasuring baud rate...\n");

    uint count;
    if(!get_bit_span(&count)) {
      printf("Baud rate detect failed - 1\n");
      return false;
    }
    printf("State length %u\n",count);

    while(1) {
            // count is in units of system clock cycles, roughly
            if(!get_bit_span(&count)) {
              printf("Baud rate detect failed - 2\n");
              return false;
            }
            uint count_div_100 = count/100;
            printf("State length %u\n", count);
            int delay_min = 150*1000*DIV_FACTOR;
            int delay_max = 250*1000*DIV_FACTOR;
            if((count_div_100>delay_min)&&(count_div_100<delay_max)) { // pulse 150<ms<200?
                // next is stop bit
                if(!get_bit_span(&count)) {
                  printf("Baud rate detect failed - 3\n");
                  return false;
                }
                // count corresponds to length of stop bit
                measured_baud = 100*1000*1000/count;
                break;
            }
            // this 
    }
    pio_sm_set_enabled(pio, sm, false); // stop program
    printf("Measured baud rate=%d\n", measured_baud);
    uint baud_achieved = uart_init(T_BOOT_UART_ID, measured_baud);
    printf("Achieved baud rate=%d\n", baud_achieved);

    gpio_set_function(T_BOOT_UART_TX_PIN, UART_FUNCSEL_NUM(T_BOOT_UART_ID, T_BOOT_UART_TX_PIN));
    gpio_set_function(T_BOOT_UART_RX_PIN, UART_FUNCSEL_NUM(T_BOOT_UART_ID, T_BOOT_UART_RX_PIN));
    return true;
}

void poweron(void)
{
    // Setup THEJAS32 clock to system clock/1
    // = 100 MHz/1 = 100 MHz
    clock_gpio_init(T_CLK_PIN, CLOCKS_CLK_GPOUT0_CTRL_AUXSRC_VALUE_CLK_SYS, DIV_FACTOR);

    sleep_ms(10*DIV_FACTOR);
    gpio_put(T_RESETN_PIN, 1);

    gpio_init(T_BOOT_UART_TX_PIN);
    gpio_set_dir(T_BOOT_UART_TX_PIN, GPIO_IN);

    offset = pio_add_program(pio, &measure_program);
    sm = pio_claim_unused_sm(pio, true);
    measure_program_init(pio, sm, offset, T_BOOT_UART_TX_PIN);

    pio_sm_set_enabled(pio, sm, true); // start program

    while(!autodetect_baud_rate()) {
        printf("Resetting chip\n");
        gpio_put(T_RESETN_PIN, 0);
        sleep_ms(10*DIV_FACTOR);
        gpio_put(T_RESETN_PIN, 1);
        printf("Chip reset done\n");
        pio_sm_set_enabled(pio, sm, false); // stop program
        pio_sm_set_enabled(pio, sm, true); // start program
    }
    pio_sm_set_enabled(pio, sm, false); // stop program

    int prev_in = -1;
    bool uart_changed = false;
    int ch_count = 0;
    uint baud_achieved;
    printf("Redirecting UART to USB interface\n");
    while(1) {
        //puts("THEJAS32 is ON. Check!");
        //sleep_ms(1000);
        if(uart_is_readable(T_BOOT_UART_ID)) {
          int ch = uart_getc(T_BOOT_UART_ID);
          //printf("%c(%d)",ch,ch);
          if(uart_changed) {
              //printf("UART changed: %c\n",ch);
              printf("%c",ch);
          } else {
              printf("%c",ch);
              toggle_led();
          }
          ch_count++;
        }
        int ch2 = getchar_timeout_us(0);
        if(ch2>=0) {
          uart_putc(T_BOOT_UART_ID, ch2);
          //CR followed by EOT means start code!
          if(((ch2==10)||(ch2==10)) && (prev_in==0x4) && (!uart_changed)) {
            // send a \n to force load
            // without this, the below command is incomplete, manually requiring the user to go
            // to the serial console and type in a CR
            // ~/.arduino15/packages/vega/tools/vegaxmodem/002/xmodem_transfer /dev/ttyACM0 bin_file_path
            // FIXME: why is this extra \n required. Delay is required as without it sometimes things
            // don't work. Guessing that this is due to protocol error
            sleep_us(100);
            uart_putc(T_BOOT_UART_ID, '\n');
            sleep_us(100);
            uart_putc(T_BOOT_UART_ID, '\n');
            uart_changed = true;
            uart_deinit(T_BOOT_UART_ID);
            uart_changed = true;
            baud_achieved = uart_init(T_BOOT_UART_ID, 115200/DIV_FACTOR);
            printf("Switching baud rate. Achieved %d\n", baud_achieved);
            gpio_set_function(T_BOOT_UART_TX_PIN, UART_FUNCSEL_NUM(T_BOOT_UART_ID, T_BOOT_UART_TX_PIN));
            gpio_set_function(T_BOOT_UART_RX_PIN, UART_FUNCSEL_NUM(T_BOOT_UART_ID, T_BOOT_UART_RX_PIN));
          } else if(uart_changed) {
              printf("UC baud=%d\n", baud_achieved);
          }
          prev_in = ch2;
        }
        if(uart_changed) {
          gpio_put(LED, gpio_get(T_GPIO16));
        }
    }
}

int main()
{
    gpio_init(T_GPIO16);
    gpio_set_dir(T_GPIO16, GPIO_IN);

    gpio_init(T_GPIO00);
    gpio_set_dir(T_GPIO00, GPIO_IN);

    // Keep THEJAS32 in reset. Pull down resistor is
    // there on the board anyway, so this is strictly
    // not required
    gpio_init(T_RESETN_PIN);
    gpio_set_dir(T_RESETN_PIN, GPIO_OUT);
    gpio_put(T_RESETN_PIN, 0);

    gpio_init(T_BOOTSEL_PIN);
    gpio_set_dir(T_BOOTSEL_PIN, GPIO_OUT);
    gpio_put(T_BOOTSEL_PIN, BOOT_MODE);

    gpio_init(T_CLK_PIN);
    gpio_set_dir(T_CLK_PIN, GPIO_OUT);
    gpio_put(T_CLK_PIN, 0);

    // Turn on the on-board LED
    gpio_init(LED);
    gpio_set_dir(LED, GPIO_OUT);
    gpio_put(LED, 1);

    stdio_init_all();

    sleep_ms(3000);
    printf("\nPico Booted!\n");
    printf("Running THEJAS32 at %d Hz\n", (100*1000*1000)/DIV_FACTOR);
    poweron();

    return 0;
}
