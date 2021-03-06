#
# Wizard autogenerated makefile.
# DO NOT EDIT, use the lpc-p2378_kernel_footprint_user.mk file instead.
#

# Constants automatically defined by the selected modules


# Our target application
TRG += lpc-p2378_kernel_footprint

lpc-p2378_kernel_footprint_PREFIX = "arm-none-eabi-"

lpc-p2378_kernel_footprint_SUFFIX = ""

lpc-p2378_kernel_footprint_SRC_PATH = boards/lpc-p2378/benchmark/lpc-p2378_kernel_footprint

lpc-p2378_kernel_footprint_HW_PATH = boards/lpc-p2378

# Files automatically generated by the wizard. DO NOT EDIT, USE lpc-p2378_kernel_footprint_USER_CSRC INSTEAD!
lpc-p2378_kernel_footprint_WIZARD_CSRC = \
	bertos/benchmark/kernel_footprint.c \
	bertos/cpu/arm/drv/timer_arm.c \
	bertos/cpu/arm/drv/timer_lpc2.c \
	bertos/drv/timer.c \
	bertos/io/kfile.c \
	bertos/kern/proc.c \
	bertos/kern/sem.c \
	bertos/kern/signal.c \
	bertos/mware/event.c \
	bertos/mware/formatwr.c \
	bertos/mware/hex.c \
	bertos/struct/heap.c \
	#

# Files automatically generated by the wizard. DO NOT EDIT, USE lpc-p2378_kernel_footprint_USER_PCSRC INSTEAD!
lpc-p2378_kernel_footprint_WIZARD_PCSRC = \
	 \
	#

# Files automatically generated by the wizard. DO NOT EDIT, USE lpc-p2378_kernel_footprint_USER_CPPASRC INSTEAD!
lpc-p2378_kernel_footprint_WIZARD_CPPASRC = \
	bertos/cpu/arm/hw/switch_ctx_arm.S \
	#

# Files automatically generated by the wizard. DO NOT EDIT, USE lpc-p2378_kernel_footprint_USER_CXXSRC INSTEAD!
lpc-p2378_kernel_footprint_WIZARD_CXXSRC = \
	 \
	#

# Files automatically generated by the wizard. DO NOT EDIT, USE lpc-p2378_kernel_footprint_USER_ASRC INSTEAD!
lpc-p2378_kernel_footprint_WIZARD_ASRC = \
	 \
	#

lpc-p2378_kernel_footprint_CPPFLAGS = -D'CPU_FREQ=(72000000UL)' -D'ARCH=(ARCH_DEFAULT)' -D'WIZ_AUTOGEN' -I$(lpc-p2378_kernel_footprint_HW_PATH) -I$(lpc-p2378_kernel_footprint_SRC_PATH) $(lpc-p2378_kernel_footprint_CPU_CPPFLAGS) $(lpc-p2378_kernel_footprint_USER_CPPFLAGS)

# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_LDFLAGS = $(lpc-p2378_kernel_footprint_CPU_LDFLAGS) $(lpc-p2378_kernel_footprint_WIZARD_LDFLAGS) $(lpc-p2378_kernel_footprint_USER_LDFLAGS)

# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_CPPAFLAGS = $(lpc-p2378_kernel_footprint_CPU_CPPAFLAGS) $(lpc-p2378_kernel_footprint_WIZARD_CPPAFLAGS) $(lpc-p2378_kernel_footprint_USER_CPPAFLAGS)

# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_CSRC = $(lpc-p2378_kernel_footprint_CPU_CSRC) $(lpc-p2378_kernel_footprint_WIZARD_CSRC) $(lpc-p2378_kernel_footprint_USER_CSRC)

# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_PCSRC = $(lpc-p2378_kernel_footprint_CPU_PCSRC) $(lpc-p2378_kernel_footprint_WIZARD_PCSRC) $(lpc-p2378_kernel_footprint_USER_PCSRC)

# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_CPPASRC = $(lpc-p2378_kernel_footprint_CPU_CPPASRC) $(lpc-p2378_kernel_footprint_WIZARD_CPPASRC) $(lpc-p2378_kernel_footprint_USER_CPPASRC)

# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_CXXSRC = $(lpc-p2378_kernel_footprint_CPU_CXXSRC) $(lpc-p2378_kernel_footprint_WIZARD_CXXSRC) $(lpc-p2378_kernel_footprint_USER_CXXSRC)

# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_ASRC = $(lpc-p2378_kernel_footprint_CPU_ASRC) $(lpc-p2378_kernel_footprint_WIZARD_ASRC) $(lpc-p2378_kernel_footprint_USER_ASRC)

# CPU specific flags and options, defined in the CPU definition files.
# Automatically generated by the wizard. PLEASE DO NOT EDIT!
lpc-p2378_kernel_footprint_CPU_CPPASRC = bertos/cpu/arm/hw/crt_arm7tdmi.S bertos/cpu/arm/hw/vectors_lpc2.S
lpc-p2378_kernel_footprint_CPU_CPPAFLAGS = -g -gdwarf-2
lpc-p2378_kernel_footprint_CPU_CPPFLAGS = -O0 -g3 -gdwarf-2 -fverbose-asm -Ibertos/cpu/arm/ -D__ARM_LPC2378__
lpc-p2378_kernel_footprint_CPU_CSRC = bertos/cpu/arm/hw/init_lpc2.c bertos/cpu/arm/drv/vic_lpc2.c
lpc-p2378_kernel_footprint_PROGRAMMER_CPU = lpc2378
lpc-p2378_kernel_footprint_CPU_LDFLAGS = -nostartfiles -Wl,--no-warn-mismatch -Wl,-dT bertos/cpu/arm/scripts/lpc2378.ld
lpc-p2378_kernel_footprint_STOPFLASH_SCRIPT = bertos/prg_scripts/arm/stopopenocd.sh
lpc-p2378_kernel_footprint_CPU = arm7tdmi
lpc-p2378_kernel_footprint_STOPDEBUG_SCRIPT = bertos/prg_scripts/arm/stopopenocd.sh
lpc-p2378_kernel_footprint_DEBUG_SCRIPT = bertos/prg_scripts/arm/debug.sh
lpc-p2378_kernel_footprint_FLASH_SCRIPT = bertos/prg_scripts/arm/flash.sh

include $(lpc-p2378_kernel_footprint_SRC_PATH)/lpc-p2378_kernel_footprint_user.mk
