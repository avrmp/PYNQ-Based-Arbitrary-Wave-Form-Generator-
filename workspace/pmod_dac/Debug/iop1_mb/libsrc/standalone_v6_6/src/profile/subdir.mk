################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_clean.c \
../iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_init.c \
../iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_timer_hw.c \
../iop1_mb/libsrc/standalone_v6_6/src/profile/profile_cg.c \
../iop1_mb/libsrc/standalone_v6_6/src/profile/profile_hist.c 

S_UPPER_SRCS += \
../iop1_mb/libsrc/standalone_v6_6/src/profile/dummy.S \
../iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_arm.S \
../iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_mb.S \
../iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_ppc.S 

OBJS += \
./iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_clean.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_init.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_timer_hw.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/dummy.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_cg.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_hist.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_arm.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_mb.o \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_ppc.o 

S_UPPER_DEPS += \
./iop1_mb/libsrc/standalone_v6_6/src/profile/dummy.d \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_arm.d \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_mb.d \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_mcount_ppc.d 

C_DEPS += \
./iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_clean.d \
./iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_init.d \
./iop1_mb/libsrc/standalone_v6_6/src/profile/_profile_timer_hw.d \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_cg.d \
./iop1_mb/libsrc/standalone_v6_6/src/profile/profile_hist.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/standalone_v6_6/src/profile/%.o: ../iop1_mb/libsrc/standalone_v6_6/src/profile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

iop1_mb/libsrc/standalone_v6_6/src/profile/%.o: ../iop1_mb/libsrc/standalone_v6_6/src/profile/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


