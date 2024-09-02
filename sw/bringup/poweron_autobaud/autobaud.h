#ifndef AUTOBAUD_H
#define AUTOBAUD_H
#include <stdint.h>

void autobaud_init(uint8_t rx_pin, uint T_CLK_DIV);
int autodetect_baud_rate(uint sys_clk_rate, int T_CLK_DIV);
#endif
