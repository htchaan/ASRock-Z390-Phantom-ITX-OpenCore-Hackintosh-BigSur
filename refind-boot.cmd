:;( #
  :;  [[ "$OSTYPE" != 'darwin'* ]] && exit #
  :;  sudo -v  #
  :;  sudo mkdir -p /Volumes/EFI  #
  :;  sudo mount -t msdos /dev/disk0s1 /Volumes/EFI  #
  :;  [ -f "/Volumes/EFI/EFI/BOOT/refind.conf.$@" ] && cp /Volumes/EFI/EFI/BOOT/refind.conf.$@ /Volumes/EFI/EFI/BOOT/refind.conf  #
  :;  cat /Volumes/EFI/EFI/BOOT/refind.conf  #
  :;  sudo diskutil umount /Volumes/EFI  #
:; );<<'here-document delimiter'
(
  mountvol I: /s
  if exist I:\EFI\BOOT\refind.conf.%* (copy /Y I:\EFI\BOOT\refind.conf.%* I:\EFI\BOOT\refind.conf)
  type I:\EFI\BOOT\refind.conf
  mountvol I: /d
  pause
) & rem ^
here-document delimiter
