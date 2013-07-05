cd $LFS/sources
tar xvf gzip*.xz
cd gzip*

./configure --prefix=/tools
make
make check
make install
