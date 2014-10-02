cd /sources/binutils-build/

pkg watch /mnt/lfs
make tooldir=/usr install
pkg build /sources/ini/binutils.ini winst.log /
