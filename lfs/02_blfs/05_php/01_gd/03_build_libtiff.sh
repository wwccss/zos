cd /sources/blfs
tar xvf tiff*.tar.gz
cd tiff*

pkg watch /mnt/lfs

sed -i '/glDrawPixels/a glFlush();' tools/tiffgt.c &&
./configure --prefix=/usr --disable-static &&
make

make install
pkg savelog libtiff
