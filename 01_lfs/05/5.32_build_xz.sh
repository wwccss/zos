cd $LFS/sources
tar xvf  xz*.xz
cd xz*

./configure --prefix=/tools
make
make check
make install
