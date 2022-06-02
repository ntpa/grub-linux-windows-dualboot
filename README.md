# grub-linux-windows-dualboot

Reboot directly to Windows and save Linux/GNU default boot option in grub. The bash script is useful for those *who do not have keyboard access* during the grub boot process, or those who wish for ease of use in a dual boot setup. 

### Requirements 

It is necessary for bootable disk to be a **BIOS/MBR partition scheme with Windows 10**, as this has not been tested for BIOS/GPT or UEFI. I would also recommend that you disable **Windows 'Fast Startup' as well as 'Automatic Updates'** because these can complicate the dual boot process. For example, if there is an automatic update when you boot into Windows, on the post update restart you will be taken back to your Linux OS and if you attempt to boot into Windows again you will be forced to repeat the process. 

---

#### Setting up grub configuration

The section below is taken from the **GRUB** section in the Arch Wiki, 'Detecting other operating systems' : 

> To have grub-mkconfig search for other installed systems and automatically add them to the menu, install the os-prober package and mount the partitions from which the other systems boot. Then re-run grub-mkconfig. If you get the following output: Warning: os-prober will not be executed to detect other bootable partitions then edit /etc/default/grub and add/uncomment: `GRUB_DISABLE_OS_PROBER=false`

#### Execution options

##### Through shell script

Please use `reboot-to-windows.sh` with your preferred method for executing shell scripts. Then, call the function `reboot_to_windows`.
