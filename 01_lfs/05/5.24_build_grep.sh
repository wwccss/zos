cd $LFS/sources
tar xvf grep*.xz
cd grep*

./configure --prefix=/tools
make
make check
make install
