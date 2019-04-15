################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/intc_v3_7/src/xintc.c \
../iop1_mb/libsrc/intc_v3_7/src/xintc_g.c \
../iop1_mb/libsrc/intc_v3_7/src/xintc_intr.c \
../iop1_mb/libsrc/intc_v3_7/src/xintc_l.c \
../iop1_mb/libsrc/intc_v3_7/src/xintc_options.c \
../iop1_mb/libsrc/intc_v3_7/src/xintc_selftest.c 

OBJS += \
./iop1_mb/libsrc/intc_v3_7/src/xintc.o \
./iop1_mb/libsrc/intc_v3_7/src/xintc_g.o \
./iop1_mb/libsrc/intc_v3_7/src/xintc_intr.o \
./iop1_mb/libsrc/intc_v3_7/src/xintc_l.o \
./iop1_mb/libsrc/intc_v3_7/src/xintc_options.o \
./iop1_mb/libsrc/intc_v3_7/src/xintc_selftest.o 

C_DEPS += \
./iop1_mb/libsrc/intc_v3_7/src/xintc.d \
./iop1_mb/libsrc/intc_v3_7/src/xintc_g.d \
./iop1_mb/libsrc/intc_v3_7/src/xintc_intr.d \
./iop1_mb/libsrc/intc_v3_7/src/xintc_l.d \
./iop1_mb/libsrc/intc_v3_7/src/xintc_options.d \
./iop1_mb/libsrc/intc_v3_7/src/xintc_selftest.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/intc_v3_7/src/%.o: ../iop1_mb/libsrc/intc_v3_7/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


