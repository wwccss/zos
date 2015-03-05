cd /sources/binutils-build/

pkg watch /mnt/lfs
make tooldir=/usr install
pkg savelog binutils
