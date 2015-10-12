@echo --------------[ Start flashing stock android ROM ]------------------
@echo ---------------[ Checking for connected devices ]-------------------
@fastboot devices 
@echo ----------------[ Checking device info ]------------------
@fastboot oem device-info
@echo ---------------[ Flashing modem and bootloader ]--------------------
@fastboot flash aboot emmc_appsboot.mbn
@fastboot flash modem NON-HLOS.bin
@fastboot flash rpm rpm.mbn
@fastboot flash sbl1 sbl1.mbn
@fastboot flash tz tz.mbn
@fastboot flash hyp hyp.mbn
@fastboot flash splash splash.img
@echo ----------------------[ Flashing kernel ]---------------------------
@fastboot flash boot boot.img
@echo ----------------------[ Flashing recovery ]-------------------------
@fastboot flash recovery recovery.img
@echo -------------------[ Flashing system partition ]--------------------
@fastboot flash system system.img
@echo ----------------------[ Flashing userdata ]-------------------------
@fastboot flash userdata userdata.img 
@echo -------------------[ Flashing cache partition ]---------------------
@fastboot flash cache cache.img
@echo ----------------[ Checking device info ]------------------
@fastboot oem device-info
@echo ---------------------[ Rebooting device ]---------------------------
@fastboot reboot
@echo -------------------------[ ALL DONE ]-------------------------------

