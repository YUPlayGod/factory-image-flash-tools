# factory-image-flash-tool
Package with tools to flash 32-bit STOCK ANDROID LOLLIPOP factory images on YUNIQUE

## How to
### Steps to flash factory image
 1. Download the Stock Android LOLLIPOP factory image fastboot package for YU YUNIQUE from <here>

 2. Extract the contents of the fastboot package into a folder.

 3. Download this flashing tools package from [here](https://github.com/YUPlayGod/factory-image-flash-tools/archive/yunique-stock-android-lollipop-windows-flashtools.zip)

 4. Extract the contents of the flashing tools zip into the same folder    
    To make sure, check that system.img, boot.img etc files are in the same
    folder as flash-all.bat, fastboot.exe etc  

 5. Connect your phone in fastboot mode, steps for which are : -   
  a. Power off your phone   
 
  b. Press volume UP and then press power button keeping Volume UP pressed, You will get a vibration and device will boot into recovery

  c. Use volume UP and Volume down button to move up and down in the Menu and use Power button to select nay option.

  d. Now select Reboot to Bootloader. Now you will enter Fastboot mode.

 6. Run flash-all.bat by double clicking on it.  

 7. A command window will open and flashing procedure will start  

 8. <b>DO NOT</b> disconnect the device during flashing procedure

 9. The command window will close after the flashing process is over.

 10. Disconnect the USB cable, and boot the phone normally by long pressing the Power button.    

#### 3rd Party Licenses

The adb and fastboot tools are distributed by Google, as part of Android SDK. 
There are licensed under Apache 2.0 by Google, and can be redistributed under 
a compatible license. 
