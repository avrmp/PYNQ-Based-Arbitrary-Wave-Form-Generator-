################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/spi_v4_4/src/xspi.c \
../iop1_mb/libsrc/spi_v4_4/src/xspi_g.c \
../iop1_mb/libsrc/spi_v4_4/src/xspi_options.c \
../iop1_mb/libsrc/spi_v4_4/src/xspi_selftest.c \
../iop1_mb/libsrc/spi_v4_4/src/xspi_sinit.c \
../iop1_mb/libsrc/spi_v4_4/src/xspi_stats.c 

OBJS += \
./iop1_mb/libsrc/spi_v4_4/src/xspi.o \
./iop1_mb/libsrc/spi_v4_4/src/xspi_g.o \
./iop1_mb/libsrc/spi_v4_4/src/xspi_options.o \
./iop1_mb/libsrc/spi_v4_4/src/xspi_selftest.o \
./iop1_mb/libsrc/spi_v4_4/src/xspi_sinit.o \
./iop1_mb/libsrc/spi_v4_4/src/xspi_stats.o 

C_DEPS += \
./iop1_mb/libsrc/spi_v4_4/src/xspi.d \
./iop1_mb/libsrc/spi_v4_4/src/xspi_g.d \
./iop1_mb/libsrc/spi_v4_4/src/xspi_options.d \
./iop1_mb/libsrc/spi_v4_4/src/xspi_selftest.d \
./iop1_mb/libsrc/spi_v4_4/src/xspi_sinit.d \
./iop1_mb/libsrc/spi_v4_4/src/xspi_stats.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/spi_v4_4/src/%.o: ../iop1_mb/libsrc/spi_v4_4/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


