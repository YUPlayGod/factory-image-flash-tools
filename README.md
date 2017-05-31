# factory-image-flash-tool
Package with tools to flash 64-bit LOLLIPOP factory images on YUPHORIA

## How to
### Steps to flash factory image
 1. Download the LOLLIPOP factory image fastboot package for YU YUPHORIA from [Here](https://cyngn.com/support/)
 
 2. (Linux only) Install fastboot in your system.    
      (<code>sudo apt install android-tools-fastboot</code> for Ubuntu)

 3. Extract the contents of the fastboot package into a folder.
 
 4. Download this flashing tools package from [here](https://github.com/YUPlayGod/factory-image-flash-tools/archive/yuphoria-lollipop-windows-flashtools.zip)

 5. Extract the contents of the flashing tools zip into the same folder    
    To make sure, check that system.img, boot.img etc files are in the same
    folder as flash-all.bat, flash_all.sh, fastboot.exe etc  

 6. Connect your phone in fastboot mode, steps for which are : -   
  a. Power off your phone    
  b. Press and hold the Volume Up key    
  c. With the Volume Up key, connect the phone to your PC/Laptop with USB cable   
  d. You can let go off the Volume Up key when Fastboot Mode is displayed on the screen    

 7. Follow this as per your Operating System. The flashing process will start after this.   
  a. Windows : Run flash-all.bat by double clicking on it.  
  b. Linux   : Run flash_all.sh in terminal (as root). The flashing process will start normally.
      (right click and select "Open in terminal" and there, do <code>sudo ./flash_all.sh</code>)

 8. <b>DO NOT</b> disconnect the device during flashing procedure

 9. You'll see a completion message when the flashing process is over.

 10. The phone will automatically reboot once the flashing process is over, Disconnect the USB.  

#### 3rd Party Licenses

The adb and fastboot tools are distributed by Google, as part of Android SDK. 
There are licensed under Apache 2.0 by Google, and can be redistributed under 
a compatible license. 
