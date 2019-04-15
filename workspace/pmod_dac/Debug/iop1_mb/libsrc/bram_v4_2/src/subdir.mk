################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/bram_v4_2/src/xbram.c \
../iop1_mb/libsrc/bram_v4_2/src/xbram_g.c \
../iop1_mb/libsrc/bram_v4_2/src/xbram_intr.c \
../iop1_mb/libsrc/bram_v4_2/src/xbram_selftest.c \
../iop1_mb/libsrc/bram_v4_2/src/xbram_sinit.c 

OBJS += \
./iop1_mb/libsrc/bram_v4_2/src/xbram.o \
./iop1_mb/libsrc/bram_v4_2/src/xbram_g.o \
./iop1_mb/libsrc/bram_v4_2/src/xbram_intr.o \
./iop1_mb/libsrc/bram_v4_2/src/xbram_selftest.o \
./iop1_mb/libsrc/bram_v4_2/src/xbram_sinit.o 

C_DEPS += \
./iop1_mb/libsrc/bram_v4_2/src/xbram.d \
./iop1_mb/libsrc/bram_v4_2/src/xbram_g.d \
./iop1_mb/libsrc/bram_v4_2/src/xbram_intr.d \
./iop1_mb/libsrc/bram_v4_2/src/xbram_selftest.d \
./iop1_mb/libsrc/bram_v4_2/src/xbram_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/bram_v4_2/src/%.o: ../iop1_mb/libsrc/bram_v4_2/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


