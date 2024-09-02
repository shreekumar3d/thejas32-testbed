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

project(poweron_autobaud C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(poweron_autobaud poweron_autobaud.c autobaud.c )

pico_set_program_name(poweron_autobaud "poweron_autobaud")
pico_set_program_version(poweron_autobaud "0.1")

pico_enable_stdio_uart(poweron_autobaud 0)
pico_enable_stdio_usb(poweron_autobaud 1)

# Add the standard library to the build
target_link_libraries(poweron_autobaud
        pico_stdlib
	hardware_pio)

# Include the signal length measurement program
pico_generate_pio_header(poweron_autobaud ${CMAKE_CURRENT_LIST_DIR}/measure.pio)

# Add the standard include files to the build
target_include_directories(poweron_autobaud PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}
  ${CMAKE_CURRENT_LIST_DIR}/.. # for our common lwipopts or any other standard includes, if required
)

# THEJAS32 needs a 100 MHz clock. It takes in a CMOS clock.
# AtiVEGA uses a GPOUT pin from RPi Pico to drive this clock.
# For convenience and accuracy, we just set the system clock of the Pico
# to 100 MHz.
#
# $ ./pico-sdk/src/rp2_common/hardware_clocks/scripts/vcocalc.py --input 12 100
# Requested: 100.0 MHz
# Achieved:  100.0 MHz
# REFDIV:    1
# FBDIV:     125 (VCO = 1500.0 MHz)
# PD1:       5
# PD2:       3
#
# The SDK sets this at startup...
#
target_compile_definitions(poweron_autobaud PRIVATE
   SYS_CLK_HZ=100000000
   PLL_SYS_VCO_FREQ_HZ=1500000000
   PLL_SYS_POSTDIV1=5
   PLL_SYS_POSTDIV2=3
)

# Wait 3 seconds for USB enumeration
# We could set this to -1, meaning infinite way.
# If we do that, and the user connects the USB
# cable to a power source (i.e. not a host), then
# the program will be stuck at stdio_init_all()
# To avoid the possibility of this confusion, we
# use a conservative value of 3 seconds
target_compile_definitions(poweron_autobaud PRIVATE
   PICO_STDIO_USB_CONNECT_WAIT_TIMEOUT_MS=3000
)

pico_add_extra_outputs(poweron_autobaud)

