################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/iic_v3_4/src/xiic.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_dyn_master.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_g.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_intr.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_l.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_master.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_multi_master.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_options.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_selftest.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_sinit.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_slave.c \
../iop1_mb/libsrc/iic_v3_4/src/xiic_stats.c 

OBJS += \
./iop1_mb/libsrc/iic_v3_4/src/xiic.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_dyn_master.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_g.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_intr.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_l.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_master.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_multi_master.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_options.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_selftest.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_sinit.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_slave.o \
./iop1_mb/libsrc/iic_v3_4/src/xiic_stats.o 

C_DEPS += \
./iop1_mb/libsrc/iic_v3_4/src/xiic.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_dyn_master.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_g.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_intr.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_l.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_master.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_multi_master.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_options.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_selftest.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_sinit.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_slave.d \
./iop1_mb/libsrc/iic_v3_4/src/xiic_stats.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/iic_v3_4/src/%.o: ../iop1_mb/libsrc/iic_v3_4/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


