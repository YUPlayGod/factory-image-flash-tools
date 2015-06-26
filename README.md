# factory-image-flash-tool
Package with tools to flash 64-bit LOLLIPOP factory images on YUREKA

DO NOT FLASH THE KITKAT (32-bit) IMAGES IF YOU HAVE UPGRADED TO LOLLIPOP (64-bit)!!!!!

## How to
### Steps to flash factory image
 1. Download the LOLLIPOP factory image fastboot package for YU YUREKA from [Here](https://cyngn.com/support/)

 2. Extract the contents of the fastboot package into a folder.

 3. Download this flashing tools package from [here](https://github.com/YUPlayGod/factory-image-flash-tools/archive/yureka-lollipop-windows-flashtools.zip)

 4. Extract the contents of the flashing tools zip into the same folder    
    To make sure, check that system.img, boot.img etc files are in the same
    folder as flash-all.bat, fastboot.exe etc  

 5. Connect your phone in fastboot mode, steps for which are : -   
  a. Power off your phone    
  b. Press and hold the Volume Up key    
  c. With the Volume Up key, connect the phone to your PC/Laptop with USB cable   
  d. You can let go off the Volume Up key when Fastboot Mode is displayed on the screen    

 6. Run flash-all.bat by double clicking on it.  

 7. A command window will open and flashing procedure will start  

 8. <b>DO NOT</b> disconnect the device during flashing procedure

 9. The command window will close after the flashing process is over.

 10. Disconnect the USB cable, and boot the phone normally by long pressing the Power button.    

#### 3rd Party Licenses

The adb and fastboot tools are distributed by Google, as part of Android SDK. 
There are licensed under Apache 2.0 by Google, and can be redistributed under 
a compatible license. 
