cd /sources/
tar xvf libpipeline*.gz
cd libpi*

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr

make
make check
make install
