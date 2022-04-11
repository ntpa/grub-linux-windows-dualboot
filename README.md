# grub-linux-windows-dualboot

Reboot directly to Windows and save Linux/GNU default boot option in grub. The bash script is useful for those *who do not have keyboard access* during the grub boot process, or those who wish for ease of use in a dual boot setup. 

Please use `reboot-to-windows.sh` with your preferred method for executing shell scripts. Then, call the function `reboot_to_windows`.

> It is necessary for bootable disk to be a **BIOS/MBR partition scheme with Windows 10**, as this has not been tested for BIOS/GPT or UEFI. I would also recommend that you disable **Windows 'Fast Startup' as well as 'Automatic Updates'** because these can complicate the dual boot process. For example, if there is an automatic update when you boot into Windows, on the post update restart you will be taken back to your Linux OS and if you attempt to boot into Windows again you will be forced to repeat the process. 


