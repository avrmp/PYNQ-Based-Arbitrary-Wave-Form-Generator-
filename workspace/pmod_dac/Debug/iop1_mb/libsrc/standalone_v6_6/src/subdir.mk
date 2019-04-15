################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../iop1_mb/libsrc/standalone_v6_6/src/_exit.c \
../iop1_mb/libsrc/standalone_v6_6/src/errno.c \
../iop1_mb/libsrc/standalone_v6_6/src/fcntl.c \
../iop1_mb/libsrc/standalone_v6_6/src/inbyte.c \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_exception_handler.c \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupt_handler.c \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupts_g.c \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_sleep.c \
../iop1_mb/libsrc/standalone_v6_6/src/outbyte.c \
../iop1_mb/libsrc/standalone_v6_6/src/print.c \
../iop1_mb/libsrc/standalone_v6_6/src/pvr.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_assert.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_cache.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_exception.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_io.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_mem.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_misc_psreset_api.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_printf.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_sleepcommon.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_testcache.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_testio.c \
../iop1_mb/libsrc/standalone_v6_6/src/xil_testmem.c \
../iop1_mb/libsrc/standalone_v6_6/src/xplatform_info.c 

S_UPPER_SRCS += \
../iop1_mb/libsrc/standalone_v6_6/src/hw_exception_handler.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_dcache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_exceptions.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_icache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_interrupts.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_dcache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_exceptions.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_icache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_interrupts.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext_range.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache_range.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_dcache_range.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_icache_range.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext_range.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache_range.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache_range.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_scrub.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_dcache.S \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_icache.S 

O_SRCS += \
../iop1_mb/libsrc/standalone_v6_6/src/_exit.o \
../iop1_mb/libsrc/standalone_v6_6/src/errno.o \
../iop1_mb/libsrc/standalone_v6_6/src/fcntl.o \
../iop1_mb/libsrc/standalone_v6_6/src/hw_exception_handler.o \
../iop1_mb/libsrc/standalone_v6_6/src/inbyte.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_dcache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_exceptions.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_icache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_interrupts.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_dcache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_exceptions.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_icache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_interrupts.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_exception_handler.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext_range.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache_range.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_dcache_range.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_icache_range.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupt_handler.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupts_g.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext_range.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache_range.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache_range.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_scrub.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_sleep.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_dcache.o \
../iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_icache.o \
../iop1_mb/libsrc/standalone_v6_6/src/outbyte.o \
../iop1_mb/libsrc/standalone_v6_6/src/print.o \
../iop1_mb/libsrc/standalone_v6_6/src/pvr.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_assert.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_cache.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_exception.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_io.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_mem.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_misc_psreset_api.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_printf.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_sleepcommon.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_testcache.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_testio.o \
../iop1_mb/libsrc/standalone_v6_6/src/xil_testmem.o \
../iop1_mb/libsrc/standalone_v6_6/src/xplatform_info.o 

OBJS += \
./iop1_mb/libsrc/standalone_v6_6/src/_exit.o \
./iop1_mb/libsrc/standalone_v6_6/src/errno.o \
./iop1_mb/libsrc/standalone_v6_6/src/fcntl.o \
./iop1_mb/libsrc/standalone_v6_6/src/hw_exception_handler.o \
./iop1_mb/libsrc/standalone_v6_6/src/inbyte.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_dcache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_exceptions.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_icache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_interrupts.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_dcache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_exceptions.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_icache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_interrupts.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_exception_handler.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext_range.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache_range.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_dcache_range.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_icache_range.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupt_handler.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupts_g.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext_range.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache_range.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache_range.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_scrub.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_sleep.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_dcache.o \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_icache.o \
./iop1_mb/libsrc/standalone_v6_6/src/outbyte.o \
./iop1_mb/libsrc/standalone_v6_6/src/print.o \
./iop1_mb/libsrc/standalone_v6_6/src/pvr.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_assert.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_cache.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_exception.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_io.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_mem.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_misc_psreset_api.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_printf.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_sleepcommon.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_testcache.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_testio.o \
./iop1_mb/libsrc/standalone_v6_6/src/xil_testmem.o \
./iop1_mb/libsrc/standalone_v6_6/src/xplatform_info.o 

S_UPPER_DEPS += \
./iop1_mb/libsrc/standalone_v6_6/src/hw_exception_handler.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_dcache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_exceptions.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_icache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_disable_interrupts.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_dcache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_exceptions.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_icache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_enable_interrupts.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_cache_ext_range.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_flush_dcache_range.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_dcache_range.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_init_icache_range.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_cache_ext_range.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_dcache_range.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_invalidate_icache_range.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_scrub.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_dcache.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_update_icache.d 

C_DEPS += \
./iop1_mb/libsrc/standalone_v6_6/src/_exit.d \
./iop1_mb/libsrc/standalone_v6_6/src/errno.d \
./iop1_mb/libsrc/standalone_v6_6/src/fcntl.d \
./iop1_mb/libsrc/standalone_v6_6/src/inbyte.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_exception_handler.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupt_handler.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_interrupts_g.d \
./iop1_mb/libsrc/standalone_v6_6/src/microblaze_sleep.d \
./iop1_mb/libsrc/standalone_v6_6/src/outbyte.d \
./iop1_mb/libsrc/standalone_v6_6/src/print.d \
./iop1_mb/libsrc/standalone_v6_6/src/pvr.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_assert.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_cache.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_exception.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_io.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_mem.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_misc_psreset_api.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_printf.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_sleepcommon.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_testcache.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_testio.d \
./iop1_mb/libsrc/standalone_v6_6/src/xil_testmem.d \
./iop1_mb/libsrc/standalone_v6_6/src/xplatform_info.d 


# Each subdirectory must supply rules for building sources it contributes
iop1_mb/libsrc/standalone_v6_6/src/%.o: ../iop1_mb/libsrc/standalone_v6_6/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

iop1_mb/libsrc/standalone_v6_6/src/%.o: ../iop1_mb/libsrc/standalone_v6_6/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_iop_pmod/iop_pmoda_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


