cd $LFS/sources
tar xvf m4*.xz
cd m4*

./configure --prefix=/tools
make
make check
make install
