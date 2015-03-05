cd /sources/
tar xvf libcap*.xz
cd libcap*

pkg watch /mnt/lfs

make
make RAISE_SETFCAP=no prefix=/usr install
chmod -v 755 /usr/lib/libcap.so

pkg savelog libcap
