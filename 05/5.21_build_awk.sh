cd $LFS/sources
tar xvf gawk-4.0.2.tar.xz
cd gawk*

./configure --prefix=/tools
make
make check
make install
