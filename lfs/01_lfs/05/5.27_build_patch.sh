cd $LFS/sources
tar xvf  patch*.xz
cd patch*

./configure --prefix=/tools
make
make check
make install
