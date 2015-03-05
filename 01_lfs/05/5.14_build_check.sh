cd $LFS/sources
tar xvf check*.gz
cd check*

PKG_CONFIG= ./configure --prefix=/tools
make
make check
make install
