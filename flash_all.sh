if [ "$EUID" -ne 0 ]
  then echo "----------------[ Please run this as root ]--------------------"
  exit
fi

echo "---------------------[ Start flashing ROM ]-------------------------"
echo "----------------[ Checking for connected devices ]------------------"
fastboot -i 0x2A96 devices 
echo "-------------------[ Unlocking bootloader ]-------------------------"
fastboot -i 0x2A96 oem unlock 
echo "----------------------[ Flashing kernel ]---------------------------"
fastboot -i 0x2A96 flash boot boot.img
echo "---------------[ Flashing modem and bootloader ]--------------------"
fastboot -i 0x2A96 flash aboot emmc_appsboot.mbn
fastboot -i 0x2A96 flash modem NON-HLOS.bin
fastboot -i 0x2A96 flash rpm rpm.mbn
fastboot -i 0x2A96 flash sbl1 sbl1.mbn
fastboot -i 0x2A96 flash tz tz.mbn
fastboot -i 0x2A96 flash hyp hyp.mbn
fastboot -i 0x2A96 flash splash splash.img
echo "-------------------[ Flashing cache partition ]---------------------"
fastboot -i 0x2A96 flash cache cache.img
echo "-------------------[ Flashing data partition ]----------------------"
fastboot -i 0x2A96 flash userdata userdata.img
echo "-------------------[ Flashing system partition ]--------------------"
fastboot -i 0x2A96 flash system system.img
echo "----------------------[ Flashing recovery ]-------------------------"
fastboot -i 0x2A96 flash recovery recovery.img
echo "---------------------[ Relocking bootloader ]-----------------------"
fastboot -i 0x2A96 oem lock
echo "---------------------[ Rebooting device ]---------------------------"
fastboot -i 0x2A96 reboot
echo "-------------------------[ ALL DONE ]-------------------------------"
