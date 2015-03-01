cd /sources/blfs
tar xvf libarchive*.gz
cd libarchive*

pkg watch /mnt/lfs

./configure --prefix=/usr --disable-static &&
make
make install

pkg savelog libarchive
