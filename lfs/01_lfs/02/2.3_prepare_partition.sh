# need four disks: one for building, one for tools, one for sources and last one for release.
sudo fdisk /dev/sdb
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo mke2fs -jv /dev/sdb1
sudo mke2fs -jv /dev/sdc1
sudo mke2fs -jv /dev/sde1
