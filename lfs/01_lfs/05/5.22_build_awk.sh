cd $LFS/sources
tar xvf gawk*.tar.xz
cd gawk*

./configure --prefix=/tools
make
make check
make install
