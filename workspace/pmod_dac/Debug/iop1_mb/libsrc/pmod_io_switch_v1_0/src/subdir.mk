################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod.c \
../iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod_io_switch.c \
../iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod_io_switch_selftest.c 

OBJS += \
./iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod.o \
./iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod_io_switch.o \
./iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod_io_switch_selftest.o 

C_DEPS += \
./iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod.d \
./iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod_io_switch.d \
./iop1_mb/libsrc/pmod_io_switch_v1_0/src/pmod_io_switch_selftest.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/pmod_io_switch_v1_0/src/%.o: ../iop1_mb/libsrc/pmod_io_switch_v1_0/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


