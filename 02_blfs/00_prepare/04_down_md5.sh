grep linuxfromscratch packagelist |awk '{print $0".md5sum"}'|xargs curl > /mnt/lfs/sources/blfs/md5sums
