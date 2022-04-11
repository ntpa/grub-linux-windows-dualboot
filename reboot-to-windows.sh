#!/bin/bash 

#  Reboot directly to Windows and save Linux/GNU default -
#  The implementation below depends on the platform/bootdisk 
#  being a BIOS/MBR Partition scheme 
reboot_to_windows()
{
  # Look at your grub configuration and assign this variable 
  # to your desired OS 
  DEFAULT_BOOT=0 

  sudo grub-set-default "$DEFAULT_BOOT" 
  windows_title=$(grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2)
  sudo grub-reboot "$windows_title" && sudo reboot 
}

