cd $LFS/sources
tar xvf  texinfo*.xz
cd texinfo*

./configure --prefix=/tools
make
make check
make install
