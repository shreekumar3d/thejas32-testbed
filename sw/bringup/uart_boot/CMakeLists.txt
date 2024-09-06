# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "/home/shree/rpi/pico/pico/pico-sdk")

set(PICO_BOARD pico CACHE STRING "Board type")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

if (PICO_SDK_VERSION_STRING VERSION_LESS "1.4.0")
  message(FATAL_ERROR "Raspberry Pi Pico SDK version 1.4.0 (or later) required. Your version is ${PICO_SDK_VERSION_STRING}")
endif()

project(uart_boot C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(uart_boot uart_boot.c )

pico_set_program_name(uart_boot "uart_boot")
pico_set_program_version(uart_boot "0.1")

pico_enable_stdio_uart(uart_boot 0)
pico_enable_stdio_usb(uart_boot 1)

# Add the standard library to the build
target_link_libraries(uart_boot
        pico_stdlib
	hardware_pio
)
pico_generate_pio_header(uart_boot ${CMAKE_CURRENT_LIST_DIR}/measure.pio)

# Add the standard include files to the build
target_include_directories(uart_boot PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}
  ${CMAKE_CURRENT_LIST_DIR}/.. # for our common lwipopts or any other standard includes, if required
)

# 100 MHz sysclk
target_compile_definitions(uart_boot PRIVATE
   PLL_SYS_POSTDIV1=5
   PLL_SYS_POSTDIV2=3
   PLL_SYS_VCO_FREQ_HZ=1500000000
   SYS_CLK_HZ=100000000
)

pico_add_extra_outputs(uart_boot)

