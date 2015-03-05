cd /sources/blfs/
tar xvf net-tools*.tar.gz
cd net-tools*

pkg watch /mnt/lfs

patch -Np1 -i ../net-tools-CVS_20101030-remove_dups-1.patch &&

yes "" | make config &&
make

make update

pkg savelog net-tools
