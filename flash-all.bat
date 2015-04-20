@echo off
echo Unlocking bootloader
fastboot -i 0x1ebf oem unlock
echo Flashing kernel
fastboot -i 0x1ebf  flash boot boot.img
echo Flashing system
fastboot -i 0x1ebf  flash system system.img
echo Wiping Data
fastboot -i 0x1ebf  flash userdata userdata.img
echo Flashing recovery
fastboot -i 0x1ebf  flash recovery recovery.img
echo Flashing modem
fastboot -i 0x1ebf  flash modem NON-HLOS.bin
fastboot -i 0x1ebf  flash rpm rpm.mbn
fastboot -i 0x1ebf  flash hyp hyp.mbn
echo Flashing bootloader
fastboot -i 0x1ebf  flash sbl1 sbl1.mbn
fastboot -i 0x1ebf  flash tz tz.mbn
fastboot -i 0x1ebf  flash aboot emmc_appsboot.mbn
echo Relocking bootloader
fastboot -i 0x1ebf oem lock
echo Flashing complete. Disconnect device and reboot
