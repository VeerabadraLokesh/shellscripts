#!/bin/bash

exit 0


# mount disks
sudo mount -o loop "/pathToDisk/root.disk" /home/$USER/diskMount


# tree commands
tree --charset=ascii /run/media/$USER/volume/ > volume_ascii.tree
tree --charset=ascii /run/media/$USER/ext4/ > ~/ext_ascii.tree

tree > home_utf8.tree

tree | sed 's/+/\+/g; s/-/-/g; s/+/\\/g'

# copy a list of files
for f in `cat listoffiles.txt`; do mv "$f" /path_to_destination_directory/ ; done

rsync -a /source/directory --files-from=/full/path/to/listfile /destination/directory


# get details of image files from terminal
find ./ -name "*.png" -exec file {} +|awk -F "," '{print $1 $2}'


# download website using wget
# https://www.linuxjournal.com/content/downloading-entire-web-site-wget
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --domains website.org \
     --no-parent \
         www.website.org/tutorials/html/
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains website.org \
     --no-parent \
         www.website.org/tutorials/html/


# recover files
exit 0

ext4magic /dev/sda1 -r -d /run/media/$USER/ext4/ubuntuDrive/


extundelete

extundelete /dev/sda1 --restore-all

ext4magic /dev/sda1 -r -d /run/media/$USER/ext4/ubuntuDrive/



ext4magic /dev/sda2 -f "/path/" -r -d /run/media/$USER/freeSpace/recoverData/


sudo ext4magic /dev/sda2 -f "/path/" -r -d /run/media/$USER/freeSpace/recoverData/

