#!/bin/bash

exit 0


# mount disks
sudo mount -o loop "/pathToDisk/root.disk" /home/$USER/diskMount


# tree commands
tree --charset=ascii /run/media/$USER/volume/ > volume_ascii.tree
tree --charset=ascii /run/media/$USER/ext4/ > ~/ext_ascii.tree

tree > home_utf8.tree

tree | sed 's/+/\+/g; s/-/-/g; s/+/\\/g'

