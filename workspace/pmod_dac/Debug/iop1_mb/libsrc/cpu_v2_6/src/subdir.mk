################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/cpu_v2_6/src/xio.c 

OBJS += \
./iop1_mb/libsrc/cpu_v2_6/src/xio.o 

C_DEPS += \
./iop1_mb/libsrc/cpu_v2_6/src/xio.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/cpu_v2_6/src/%.o: ../iop1_mb/libsrc/cpu_v2_6/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


