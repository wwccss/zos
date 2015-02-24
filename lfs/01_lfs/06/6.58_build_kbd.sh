cd /sources/
tar xvf kbd*.gz
cd kbd*

pkg watch /mnt/lfs

patch -Np1 -i ../kbd-2.0.2-backspace-1.patch
sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr --disable-vlock

make
make install

pkg savelog kbd
