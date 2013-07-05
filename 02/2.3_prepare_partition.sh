# need three disks: one for building, one for tools, one for sources.
sudo fdisk /dev/sdb
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo mke2fs -jv /dev/sdb1
sudo mke2fs -jv /dev/sdc1
sudo mke2fs -jv /dev/sdd1
