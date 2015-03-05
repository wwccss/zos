cd /sources/
tar xvf libpipeline*.gz
cd libpi*

pkg watch /mnt/lfs

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr

make
make install

pkg savelog libpipeline
