#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------
ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

export TARGET	:=	$(shell basename $(CURDIR))
export ASFLAGS  := -march=armv5te -mlittle-endian
export LDFLAGS  :=

include $(DEVKITARM)/ds_rules

.PHONY: arm7 arm9 clean

#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------
all: arm7 arm9 $(TARGET).bin

#---------------------------------------------------------------------------------
$(TARGET).bin : arm7 arm9
	arm-none-eabi-as $(ASFLAGS) -c header.s -o header.o
	arm-none-eabi-ld $(LDFLAGS) -o $(TARGET).elf -T linker.x header.o arm9/build/*.o arm7/build/*.o
	arm-none-eabi-objcopy -O binary $(TARGET).elf $(TARGET).bin

#---------------------------------------------------------------------------------
arm7:
	$(MAKE) -C arm7

#---------------------------------------------------------------------------------
arm9:
	$(MAKE) -C arm9

#---------------------------------------------------------------------------------
clean:
	$(MAKE) -C arm9 clean
	$(MAKE) -C arm7 clean
	rm -f $(TARGET).bin $(TARGET).elf header.o