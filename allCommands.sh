#!/bin/bash

exit 0


# mount disks
sudo mount -o loop "/pathToDisk/root.disk" /home/$USER/diskMount


# tree commands
tree --charset=ascii /run/media/$USER/volume/ > volume_ascii.tree
tree --charset=ascii /run/media/$USER/ext4/ > ~/ext_ascii.tree

tree > home_utf8.tree

tree | sed 's/+/\+/g; s/-/-/g; s/+/\\/g'




# recover files
exit 0

ext4magic /dev/sda1 -r -d /run/media/$USER/ext4/ubuntuDrive/


extundelete

extundelete /dev/sda1 --restore-all

ext4magic /dev/sda1 -r -d /run/media/$USER/ext4/ubuntuDrive/



ext4magic /dev/sda2 -f "/path/" -r -d /run/media/$USER/freeSpace/recoverData/


sudo ext4magic /dev/sda2 -f "/path/" -r -d /run/media/$USER/freeSpace/recoverData/

