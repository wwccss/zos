cd /sources/blfs
tar xvf libxml*.tar.gz
cd libxml*

pkg watch /mnt/lfs

./configure --prefix=/usr --disable-static --with-history &&
make
make install

pkg savelog libxml2
