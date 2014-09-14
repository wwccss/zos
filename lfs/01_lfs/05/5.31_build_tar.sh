cd $LFS/sources
tar xvf  tar*.xz
cd tar*

./configure --prefix=/tools
make
make check
make install
