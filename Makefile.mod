include $(DRIVERS_DIR)/tools/common_module.mk


MODULE_NAME := eepromblk

module-y += eeprom_block.o
module-y += eeprom_device.o
module-y += partition.o

KBUILD_EXTRA_SYMBOLS := $(DRIVERS_DIR)/drivers/eepromblk/Module.symvers

obj-m = $(MODULE_NAME).o
$(MODULE_NAME)-y = $(module-y)
