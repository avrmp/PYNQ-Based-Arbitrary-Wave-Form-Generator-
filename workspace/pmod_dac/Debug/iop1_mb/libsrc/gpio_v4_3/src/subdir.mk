################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/gpio_v4_3/src/xgpio.c \
../iop1_mb/libsrc/gpio_v4_3/src/xgpio_extra.c \
../iop1_mb/libsrc/gpio_v4_3/src/xgpio_g.c \
../iop1_mb/libsrc/gpio_v4_3/src/xgpio_intr.c \
../iop1_mb/libsrc/gpio_v4_3/src/xgpio_selftest.c \
../iop1_mb/libsrc/gpio_v4_3/src/xgpio_sinit.c 

OBJS += \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio.o \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_extra.o \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_g.o \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_intr.o \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_selftest.o \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_sinit.o 

C_DEPS += \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio.d \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_extra.d \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_g.d \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_intr.d \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_selftest.d \
./iop1_mb/libsrc/gpio_v4_3/src/xgpio_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/gpio_v4_3/src/%.o: ../iop1_mb/libsrc/gpio_v4_3/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


