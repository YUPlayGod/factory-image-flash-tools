@echo ---------------------[ Start flashing ROM ]-------------------------
@echo ----------------[ Checking for connected devices ]------------------
@fastboot -i 0x1ebf devices 
@echo -------------------[ Unlocking bootloader ]-------------------------
@fastboot -i 0x1ebf oem unlock 
@echo ---------------[ Flashing modem and bootloader ]--------------------
@fastboot -i 0x1ebf flash aboot emmc_appsboot.mbn
@fastboot -i 0x1ebf flash modem NON-HLOS.bin
@fastboot -i 0x1ebf flash rpm rpm.mbn
@fastboot -i 0x1ebf flash sbl1 sbl1.mbn
@fastboot -i 0x1ebf flash tz tz.mbn
@fastboot -i 0x1ebf flash hyp hyp.mbn
@echo ----------------------[ Flashing kernel ]---------------------------
@fastboot -i 0x1ebf flash boot boot.img
@echo ----------------------[ Flashing recovery ]-------------------------
@fastboot -i 0x1ebf flash recovery recovery.img
@echo -------------------[ Flashing system partition ]--------------------
@fastboot -i 0x1ebf flash system system.img
@echo -------------------[ Flashing data partition ]----------------------
@fastboot -i 0x1ebf flash userdata userdata.img
@echo ---------------------[ Relocking bootloader ]-----------------------
@fastboot -i 0x1ebf oem relock
@echo ---------------------[ Rebooting device ]---------------------------
@fastboot -i 0x1ebf reboot
@echo -------------------------[ ALL DONE ]-------------------------------

