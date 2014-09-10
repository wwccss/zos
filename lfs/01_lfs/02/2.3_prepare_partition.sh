# need four disks: one for building, one for tools, one for sources and last one for release.
sudo fdisk /dev/sdb
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo mkfs.ext4 -v /dev/sdb1
sudo mkfs.ext4 -v /dev/sdc1
sudo mkfs.ext4 -v /dev/sdd1
sudo mkfs.ext4 -v /dev/sde1
